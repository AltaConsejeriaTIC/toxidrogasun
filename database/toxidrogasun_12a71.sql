-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2014 at 05:47 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bitnami_joomla`
--

-- --------------------------------------------------------

--
-- Table structure for table `centro_rehabilitacion`
--

CREATE TABLE IF NOT EXISTS `centro_rehabilitacion` (
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` int(15) unsigned NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Web` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Modalidades` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centro_rehabilitacion`
--

INSERT INTO `centro_rehabilitacion` (`Nombre`, `Ciudad`, `Direccion`, `Telefono`, `Email`, `Web`, `Modalidades`) VALUES
('Fundación Prever I.P.S\r\n', 'Bogotá', 'carrera 47 No124-20', 2135597, 'administracion@fundacionprever.org', 'www.fundacionprever.org\r\n', 'Consulta Externa, Ambulatorio');

-- --------------------------------------------------------

--
-- Table structure for table `jos_assets`
--

CREATE TABLE IF NOT EXISTS `jos_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `jos_assets`
--

INSERT INTO `jos_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 426, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 87, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 88, 299, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 300, 301, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 302, 303, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 304, 305, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 306, 307, 1, 'com_login', 'com_login', '{}'),
(13, 1, 308, 309, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 310, 311, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 312, 313, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 314, 315, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 318, 319, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 320, 327, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 328, 329, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 330, 331, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 332, 333, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 334, 335, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 336, 339, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 340, 357, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 358, 359, 1, 'com_wrapper', 'com_wrapper', '{}'),
(33, 1, 420, 421, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 8, 105, 108, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 323, 324, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 347, 348, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 109, 298, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 25, 86, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 325, 326, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 349, 356, 2, 'com_weblinks.category.18', 'Sample Data-Weblinks', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 110, 247, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 111, 224, 4, 'com_content.category.20', 'Extensions', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 112, 127, 5, 'com_content.category.21', 'Components', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 128, 189, 5, 'com_content.category.22', 'Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 190, 201, 5, 'com_content.category.23', 'Templates', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 202, 203, 5, 'com_content.category.24', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 204, 223, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 248, 279, 3, 'com_content.category.26', 'Park Site', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 249, 254, 4, 'com_content.category.27', 'Park Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 255, 276, 4, 'com_content.category.28', 'Photo Gallery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 39, 280, 293, 3, 'com_content.category.29', 'Fruit Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 54, 281, 286, 4, 'com_content.category.30', 'Growers', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(56, 43, 350, 351, 3, 'com_weblinks.category.31', 'Park Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 352, 355, 3, 'com_weblinks.category.32', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 353, 354, 4, 'com_weblinks.category.33', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 26, 27, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 28, 85, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 29, 30, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 31, 84, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 32, 33, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 34, 35, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 36, 37, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 38, 39, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 40, 41, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 42, 43, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 44, 45, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 46, 47, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 48, 49, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 50, 51, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 52, 53, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 54, 55, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 56, 57, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 58, 59, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 60, 61, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 62, 63, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 64, 65, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 66, 67, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 68, 69, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 70, 71, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 72, 73, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 74, 75, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 76, 77, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 78, 79, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 80, 81, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 82, 83, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 113, 114, 6, 'com_content.article.1', 'Administrator Components', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 130, 131, 7, 'com_content.article.2', 'Archive Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 132, 133, 7, 'com_content.article.3', 'Article Categories Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 134, 135, 7, 'com_content.article.4', 'Articles Category Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 129, 144, 6, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 145, 152, 6, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 153, 166, 6, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 167, 180, 6, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 191, 192, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 193, 194, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 195, 196, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 197, 198, 6, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 205, 206, 6, 'com_content.article.5', 'Authentication', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 277, 278, 4, 'com_content.article.6', 'Australian Parks ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 154, 155, 7, 'com_content.article.7', 'Banner Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 225, 226, 4, 'com_content.article.8', 'Beginners', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 115, 116, 6, 'com_content.article.9', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 117, 118, 6, 'com_content.article.10', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 267, 268, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 256, 265, 5, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 266, 275, 5, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 156, 157, 7, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 287, 288, 4, 'com_content.article.13', 'Directions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 207, 208, 6, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 209, 210, 6, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 158, 159, 7, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 250, 251, 5, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 252, 253, 5, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 160, 161, 7, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 289, 290, 4, 'com_content.article.20', 'Fruit Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 227, 228, 4, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 229, 230, 4, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 282, 283, 5, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 231, 232, 4, 'com_content.article.24', 'Bienvenido!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 257, 258, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 168, 169, 7, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 136, 137, 7, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 146, 147, 7, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 184, 185, 7, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 138, 139, 7, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 140, 141, 7, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 233, 234, 4, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 259, 260, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 269, 270, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 235, 236, 4, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 162, 163, 7, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 142, 143, 7, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 237, 238, 4, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 119, 120, 6, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 170, 171, 7, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 211, 212, 6, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 294, 295, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 261, 262, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 172, 173, 7, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 174, 175, 7, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 213, 214, 6, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 239, 240, 4, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 241, 242, 4, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 199, 200, 6, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 243, 244, 4, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 215, 216, 6, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 121, 122, 6, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 245, 246, 4, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 123, 124, 6, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 164, 165, 7, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 148, 149, 7, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 263, 264, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 284, 285, 5, 'com_content.article.58', 'Wonderful Watermelon', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 176, 177, 7, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 125, 126, 6, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 186, 187, 7, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 217, 218, 6, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 271, 272, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 273, 274, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 150, 151, 7, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 183, 188, 6, 'com_content.category.75', 'Navigation Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 54, 291, 292, 4, 'com_content.category.76', 'Recipes', '{"core.create":{"12":1,"10":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"12":1,"10":1}}'),
(168, 34, 106, 107, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 24, 337, 338, 2, 'com_users.category.77', 'Uncategorised', ''),
(170, 50, 219, 220, 6, 'com_content.article.68', 'Captcha', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(171, 50, 221, 222, 6, 'com_content.article.69', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(172, 96, 178, 179, 7, 'com_content.article.70', 'Smart Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(173, 1, 422, 423, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(174, 1, 424, 425, 1, 'com_joodb', 'joodb', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_associations`
--

CREATE TABLE IF NOT EXISTS `jos_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_banners`
--

CREATE TABLE IF NOT EXISTS `jos_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_banners`
--

INSERT INTO `jos_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`) VALUES
(2, 3, 0, 'Shop 1', 'shop-1', 0, 152, 2, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 15, 'Get books about Joomla! at the Joomla! Book Shop.', '', 0, 1, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Books"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(3, 2, 0, 'Shop 2', 'shop-2', 0, 202, 2, 'http://shop.joomla.org', 1, 15, 'T Shirts, caps and more from the Joomla! Shop.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Shop"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(4, 1, 0, 'Support Joomla!', 'support-joomla', 0, 121, 1, 'http://contribute.joomla.org', 1, 15, 'Your contributions of time, talent and money make Joomla possible.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en-GB');

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jos_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_banner_clients`
--

INSERT INTO `jos_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1),
(2, 'Shop', 'Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(3, 'Bookstore', 'Bookstore Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 135, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(9, 34, 1, 131, 132, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 42, '2014-10-10 09:01:22', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(13, 38, 1, 57, 58, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', 'Sample Data-Weblinks', 'sample-data-weblinks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensions', 'extensions', '', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. TheÂ <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 11:57:22', 0, '*'),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Components', 'components', '', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-component.png" border="0" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 11:58:12', 0, '*'),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Modules', 'modules', '', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-module.png" border="0" alt="Media Image" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 11:59:44', 0, '*'),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Templates', 'templates', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Template_Manager_Templates">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:04:51', 0, '*'),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Languages', 'languages', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Language_Manager_Installed">Help</a></p>\r\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation.Â </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2012-01-17 16:18:40', 0, '*'),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Plugin_Manager_Edit">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:11:56', 0, '*'),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Park Blog', 'park-blog', '', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions forÂ <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>,Â <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, andÂ <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>.Â You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:15:40', 0, 'en-GB'),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Photo Gallery', 'photo-gallery', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\r\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', 'Fruit Shop Site', 'fruit-shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', 'Growers', 'growers', '', '<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group. Â </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:17:40', 0, '*'),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', 'Park Links', 'park-links', '', '<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', 'Joomla! Specific Links', 'joomla-specific-links', '', '<p>A selection of links that are all related to the Joomla Project.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:32:00', 0, '*'),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', 'Other Resources', 'other-resources', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p>Â </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p>Â </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Content Modules', 'articles-modules', '', '<p>Content modules display article and other information from the content component.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'User Modules', 'user-modules', '', '<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:00:50', 0, '*'),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Display Modules', 'display-modules', '', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utility Modules', 'utility-modules', '', '<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:01:34', 0, '*'),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=285">Home Page</a></li>\r\n<li><a href="index.php?Itemid=316">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:08:16', 0, '*'),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibilityÂ standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=424">Home Page</a></li>\r\n<li><a href="index.php?Itemid=423">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez-5', 'com_content', 'Beez 5', 'beez-5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=458">Home Page</a></li>\r\n<li><a href="index.php?Itemid=457">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:06:57', 0, '*'),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animals', 'animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Scenery', 'scenery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site. Â Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', 'Recipes', 'recipes', '', '<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users'' pages.</em><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:18:25', 0, '*'),
(77, 169, 1, 133, 134, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'top', 'email@example.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:23:32', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', NULL, 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bananas', 'bananas', 'Scientific Name: Musa', 'Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\r\n<p>Â </p>', 'images/sampledata/fruitshop/bananas_2.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 39, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Apples', 'apples', 'Scientific Name: Malus domestica', 'Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 38, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tamarind', 'tamarind', 'Scientific Name: Tamarindus indica', 'Image Credit: Franz Eugen KÃ¶hler, KÃ¶hler''s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p>Â </p>', 'images/sampledata/fruitshop/tamarind.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 57, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrator Components', 'administrator-components', '', '<p>AllÂ components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<p>Â </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\r\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\r\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\r\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\r\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes.Â <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:03:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'Archive Module', 'archive-module', '', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated.Â <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_archive,Archived Articles}</div>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:18:05', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 5, 0, 5, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Article Categories Module', 'article-categories-module', '', '<p>This module displays a list of categories from one parent category.Â <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_categories,Articles Categories}</div>\r\n<p>Â </p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-09-17 22:13:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 5, 0, 6, 'modules, content', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Articles Category Module', 'articles-category-module', '', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_category,Articles Category}</div>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:18:26', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 8, 0, 7, '', 'articles,content', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Authentication', 'authentication', '', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n<li>LDAP <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP">Help</a></li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:04:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 102, 'Australian Parks ', 'australian-parks', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site," Â a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p>Â </p>', '', 1, 0, 0, 26, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-09-06 06:20:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Banner Module', 'banner-module', '', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners">Help</a>.</p>\r\n<div class="sample-module">{loadmodule banners,Banners}</div>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:32:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 6, '', '', 1, 4, '', 0, '*', ''),
(8, 104, 'Beginners', 'beginners', '', '<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n', '\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners'' Areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\r\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href="http://community.joomla.org/showcase/">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href="http://extensions.joomla.org/">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional in the <a href="http://resources.joomla.org/">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href="http://community.joomla.org/events.html">Joomla! Day</a> or other event or joining a local <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Can''t find one near you? Start one yourself.</p>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:10:49', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 105, 'Contacts', 'contact', '', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:15:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'Content', 'content', '', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, '', '2011-01-10 04:28:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '', '<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:42:36', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg","float_intro":"","image_intro_alt":"Cradle Mountain","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg","float_fulltext":"none","image_fulltext_alt":"Cradle Mountain","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 110, 'Custom HTML Module', 'custom-html-module', '', '<p>This module allows you to create your own HTML Module using a WYSIWYG editor.Â <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\r\n<div class="sample-module">{loadmodule custom,Custom HTML}</div>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:12:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 1, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 111, 'Directions', 'directions', '', '<p>Here''s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue. Â Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>', '', 1, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(14, 112, 'Editors', 'editors', '', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror">Help</a></li>\r\n<li>TinyMCE<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE"> Help</a></li>\r\n<li>No Editor <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_None">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-06 05:45:40', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, '', '', 1, 0, '', 0, '*', ''),
(15, 113, 'Editors-xtd', 'editors-xtd', '', '<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Image">Â Help</a></li>\r\n<li>Editor Button: ReadmoreÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Readmore">Help</a></li>\r\n<li>Editor Button: Page BreakÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak">Help</a></li>\r\n<li>Editor Button: ArticleÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Article">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:14:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 114, 'Feed Display', 'feed-display', '', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p>\r\n<div class="sample-module">{loadmodule feed,Feed Display}</div>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-09-17 22:22:08', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, '', '', 1, 3, '', 0, '*', ''),
(17, 115, 'First Blog Post', 'first-blog-post', '', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 1, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(18, 116, 'Second Blog Post', 'second-blog-post', '', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 1, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(19, 117, 'Footer Module', 'footer-module', '', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\r\n<div class="sample-module">{loadmodule footer,Footer}</div>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:22:47', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, '', '', 1, 4, '', 0, '*', ''),
(20, 118, 'Fruit Shop', 'fruit-shop', '', '<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href="http://extensions.joomla.org"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>', '', 1, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-12-27 11:17:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 119, 'Getting Help', 'getting-help', '', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\r\n<li><a href="http://docs.joomla.org">Documentation</a></li>\r\n<li><a href="http://resources.joomla.org">Professionals</a></li>\r\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\r\n</ul>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 15:32:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 10, 0, 8, '', '', 1, 17, '', 0, '*', ''),
(22, 120, 'Getting Started', 'getting-started', '', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "submit article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:21:44', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 121, 'Happy Orange Orchard', 'happy-orange-orchard', '', '<p>At our orchard we grow the world''s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>', '', 1, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(24, 122, 'Bienvenido!', 'joomla', '', '<p><span style="font-family: ''Helvetica Neue'', Helvetica, ''Segoe UI'', Arial, freesans, sans-serif; font-size: 16px; line-height: 25.6000003814697px;">Toxidrogas UN es una iniciativa del grupo de investigación "Sustancias Psicoactivas" del Departamento de Toxicología de la Universidad Nacional de Colombia que tiene como finalidad la unificacíon de información relativa al tema de la toxicología de sustancias psicoactivas, ademas de un servicio consulta a preguntas e interrogantes dirigido a la comunidad en general, el cual será atendido por un grupo interdiciplinario de toxicólogos, psicólogos, psiquiatras y especialistas en la temática.</span></p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2014-10-10 14:17:02', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(25, 123, 'Koala', 'koala', '', '<p>Â </p>\r\n<p>Â </p>\r\n<p>Â </p>\r\n<p>Â </p>\r\n<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 05:15:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg","float_intro":"","image_intro_alt":"Koala  Thumbnail","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg","float_fulltext":"","image_fulltext_alt":"Koala Climbing Tree","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 124, 'Language Switcher', 'language-switcher', '', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language.Â Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:25:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(27, 125, 'Latest Articles Module', 'latest-articles-module', '', '<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_latest,Latest News}</div>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:25:41', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 1, 'modules, content', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 126, 'Login Module', 'login-module', '', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login" title="Login">Help</a></p>\r\n<div class="sample-module">{loadmodule login,login}</div>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:20:35', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 2, '', '', 1, 5, '', 0, '*', ''),
(29, 127, 'Menu Module', 'menu-module', '', '<p>This module displays a menu on the site (frontend). Â Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu">Help</a></p>\r\n<div class="sample-module">{loadmodule mod_menu,Menu Example}</div>', '', 1, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:18:45', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 8, 0, 1, '', '', 1, 12, '', 0, '*', ''),
(30, 128, 'Most Read Content', 'most-read-content', '', '<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_popular,Articles Most Read}</div>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:26:41', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 2, 'modules, content', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'News Flash', 'news-flash', '', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_news,News Flash}</div>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-09-17 22:16:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, 'modules, content', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Options', 'options', '', '<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to asÂ <em>parameter</em><strong>s</strong>. Options control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p>Â </p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2012-01-17 16:21:24', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 10, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 131, 'Phyllopteryx', 'phyllopteryx', '', '<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:57:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg","float_intro":"","image_intro_alt":"Phyllopteryx","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg","float_fulltext":"","image_fulltext_alt":"Phyllopteryx","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 132, 'Pinnacles', 'pinnacles', '', '<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:41:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg","float_intro":"","image_intro_alt":"Kings Canyon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg","float_fulltext":"","image_fulltext_alt":"Kings Canyon","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later."}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 133, 'Professionals', 'professionals', '', '<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n', '\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever.Â Languages files can now be overridden without having your changes lost during an upgrade. Â With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs Â and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">Changes since 1.5</a></li>\r\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\r\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\r\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\r\n<li><a href="http://api.joomla.org">Joomla! API</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\r\n<li><a href="http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6">Xmlrpc</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\r\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\r\n<li><a href="github.com/joomla">The Joomla! Platform Repository</a>Â </li>\r\n</ul>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:36:13', 42, 0, '0000-00-00 00:00:00', '2011-01-09 16:41:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 0, 5, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(36, 134, 'Random Image Module', 'random-image-module', '', '<p>This module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\r\n<div class="sample-module">{loadmodule random_image,Random Image}</div>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2012-01-17 16:11:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 4, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 135, 'Related Items Module', 'related-items-module', '', '<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.Â Â All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\r\n<div class="sample-module">{loadmodule related_items,Articles Related Items}</div>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:37:34', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 4, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sample Sites', 'sample-sites', '', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:39:07', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 11, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 137, 'Search', 'search-component', '', '<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:41:48', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 138, 'Search Module', 'search-module', '', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search" title="Search">Help</a></p>\r\n<div class="sample-module">{loadmodule search,Search}</div>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:35:56', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 4, '', '', 1, 6, '', 0, '*', ''),
(41, 139, 'Search ', 'search-plugin', '', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Content">Help</a></li>\r\n<li>Contacts <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Contacts">Help</a></li>\r\n<li>WeblinksÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Weblinks">Help</a></li>\r\n<li>News FeedsÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds">Help</a></li>\r\n<li>CategoriesÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Categories">Help</a></li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-06 06:13:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(42, 140, 'Site Map', 'site-map', '', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', 1, 0, 0, 14, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '', '<p>Â </p>\r\n<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 05:02:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg","float_intro":"","image_intro_alt":"Spotted Quoll","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg","float_fulltext":"","image_fulltext_alt":"Spotted Quoll","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 142, 'Statistics Module', 'statistics', '', '<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class="sample-module">{loadmodule mod_stats,Statistics}</div>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:43:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 5, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 143, 'Syndicate Module', 'syndicate-module', '', '<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p>\r\n<div class="sample-module">{loadposition syndicate,Syndicate}</div>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:44:16', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 6, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 144, 'System', 'system', '', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled.Â New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember meÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Remember_Me">Help</a></li>\r\n<li>SEFÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_SEF">Help</a></li>\r\n<li>DebugÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Debug">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>CacheÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Cache">Help</a></li>\r\n<li>LogÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Log">Help</a></li>\r\n<li>RedirectÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Redirect">Help</a></li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:45:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 145, 'The Joomla! Community', 'the-joomla-community', '', '<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:47:56', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 146, 'The Joomla! Project', 'the-joomla-project', '', '<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public LicenseÂ version 2 or later.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:47:48', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 147, 'Typography', 'typography', '', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', '', 1, 0, 0, 23, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(50, 148, 'Upgraders', 'upgraders', '', '<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n', '\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility.Â </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p>Â </p>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2012-01-17 04:28:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 6, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(51, 149, 'User', 'user-plugins', '', '<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Joomla.21">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact CreatorÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>ProfileÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Profile">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:51:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 150, 'Users', 'users-component', '', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:52:55', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 151, 'Using Joomla!', 'using-joomla', '', '<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:52:45', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 7, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(54, 152, 'Weblinks', 'weblinks', '', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:20:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 153, 'Weblinks Module', 'weblinks-module', '', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\r\n<div class="sample-module">{loadmodule weblinks,Weblinks}</div>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:32:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 7, 0, 5, '', '', 1, 23, '', 0, '*', ''),
(56, 154, 'Who''s Online', 'whos-online', '', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\r\n<div class="sample-module">{loadmodule whosonline,Who''s Online}</div>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:19:45', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 1, '', '', 1, 5, '', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(57, 155, 'Wobbegone', 'wobbegone', '', '<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 05:01:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg","float_intro":"","image_intro_alt":"Wobbegon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg","float_fulltext":"","image_fulltext_alt":"Wobbegon","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(58, 156, 'Wonderful Watermelon', 'wonderful-watermelon', '', '<p>Watermelon is a wonderful and healthy treat. We grow the world''s sweetest watermelon. We have the largest watermelon patch in our country.</p>', '', 1, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(59, 157, 'Wrapper Module', 'wrapper-module', '', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\r\n<div class="sample-module">{loadmodule wrapper,Wrapper}</div>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:35:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 8, 0, 1, '', '', 1, 15, '', 0, '*', ''),
(60, 158, 'News Feeds', 'news-feeds', '', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:27:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 159, 'Breadcrumbs Module', 'breadcrumbs-module', '', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\r\n<div class="sample-module">{loadmodule breadcrumbs,breadcrumbs}</div>', '', 1, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:10:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 160, 'Content', 'content-plugins', '', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking">Help</a></li>\r\n<li>Load Module <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules">Help</a></li>\r\n<li>Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak">Help</a></li>\r\n<li>Page Navigation<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation"> Help</a></li>\r\n<li>VoteÂ <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Vote">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Code Highlighter (GeSHi) <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Code_Highlighter_.28GeSHi.29">Help</a></li>\r\n</ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-06 06:11:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 7, '', '', 1, 1, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '', '<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:36:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg","float_intro":"none","image_intro_alt":"Rain Forest Blue Mountains","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg","float_fulltext":"","image_fulltext_alt":"Rain Forest Blue Mountains","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '', '<p>Â </p>\r\n', '\r\n<p>Â </p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:51:33', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg","float_intro":"none","image_intro_alt":"Ormiston Pound","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg","float_fulltext":"","image_fulltext_alt":"Ormiston Pound","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(66, 165, 'Latest Users Module', 'latest-users-module', '', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users">Help</a></p>\r\n<div class="sample-module">{loadmodule users_latest,Users Latest}</div>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:21:05', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, '', '', 1, 6, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', '', 2, 0, 0, 9, '2011-01-01 00:00:01', 42, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 170, 'Captcha', 'captcha', '', '<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptchaÂ® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>', '', 1, 0, 0, 25, '2012-01-17 03:20:45', 42, 'Joomla!', '2012-01-17 03:35:46', 42, 0, '0000-00-00 00:00:00', '2012-01-17 03:20:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 171, 'Quick Icons', 'quick-icons', '', '<p>Â The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">Help</a></li>\r\n</ul>', '', 1, 0, 0, 25, '2012-01-17 03:27:39', 42, 'Joomla!', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-17 03:27:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(70, 170, 'Smart Search', 'smart-search', '', '<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help25:Extensions_Module_Manager_Smart_Search">Help</a>.</p>\r\n<div class="sample-module">{loadmodule finder,Smart Search}</div>', '', 1, 0, 0, 67, '2012-01-17 03:42:36', 42, '', '2012-01-17 16:15:48', 42, 0, '0000-00-00 00:00:00', '2012-01-17 03:42:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 0, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 2),
(24, 1),
(35, 4),
(50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10026 ;

--
-- Dumping data for table `jos_extensions`
--

INSERT INTO `jos_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"es-ES","site":"es-ES"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.1","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2011","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.7","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.6.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.6.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.6.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"1.6.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.6.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 'EspaÃ±ol (Formal Internacional)', 'language', 'es-ES', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'EspaÃ±ol (Formal Internacional)', 'language', 'es-ES', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'Joomla! CMS', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'joomla', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'PortugusBrasil', 'language', 'pt-BR', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'PortugusBrasil', 'language', 'pt-BR', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Pacote de Idiomas em PortuguÃªs Brasileiro para TinyMCE', 'file', 'TinyMCE_pt-BR', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'pt-BR', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, '', 'language', 'zh-CN', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, '', 'language', 'zh-CN', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'zh-CN', 'package', 'pkg_zh-CN', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Hebrew', 'language', 'he-IL', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Hebrew', 'language', 'he-IL', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'GermanDE-CH-AT', 'language', 'de-DE', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'GermanDE-CH-AT', 'language', 'de-DE', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'de-DE', 'package', 'pkg_de-DE', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'RomanianRo', 'language', 'ro-RO', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Romanianro-RO', 'language', 'ro-RO', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'ro-RO', 'package', 'pkg_ro-RO', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2012-02-04","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.1.3","description":"Russian language pack (site) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2012-02-04","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.1.3","description":"Russian language pack (administrator) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.1.3","description":"Joomla 2.5 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'plg_quickicon_joodb', 'plugin', 'joodb', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_joodb","type":"plugin","creationDate":"May 2012","author":"Feenders.de","copyright":"Copyright (C) 2012 All rights reserved.","authorEmail":"service@feenders.de","authorUrl":"www.feenders.de","version":"2.6","description":"PLG_QUICKICON_JOODB_XML_DESCRIPTION","group":""}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Search - JooDB', 'plugin', 'joodb', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"Search - JooDB","type":"plugin","creationDate":"Mar 2014","author":"Dirk Hoeschen - computer * daten * netze : feenders","copyright":"Copyright (C)2014 computer * daten * netze : feenders. All rights reserved.","authorEmail":"hoeschen@feenders.de","authorUrl":"http:\\/\\/joodb.feenders.de","version":"1.8.1","description":"\\n\\t    This plugin searches in all enabled JooDB Databases using the Joomla standard search.<br\\/>\\n\\t\\t\\tRemember... you MUST ENABLE the plugin in the Joomla plugin manager after installation!\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'joodb', 'component', 'com_joodb', '', 1, 1, 0, 0, '{"legacy":false,"name":"joodb","type":"component","creationDate":"May 2014","author":"Dirk Hoeschen, computer daten netze - feenders, joodb.feenders.de","copyright":"Copyright (C) 2009-2014 computer daten netze - feenders. All rights reserved.","authorEmail":"service@feenders.de","authorUrl":"http:\\/\\/joodb.feenders.de","version":"2.3","description":"\\n    \\n\\t\\tJooDatabase is simple and fast way to include and display external tables (collections, databases) into Joomla.<br\\/>\\n\\t\\tIt automatically generates pages containing the table data using editable templates for catalog and single entry views.<br\\/>\\n\\t\\tSpecial elements like print-icons and pagination-links are displayed at the desired position in the templates.<br\\/>\\n\\t\\tJooDatabase handles the linking, routing between the pages automatically.\\n\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_filters`
--

CREATE TABLE IF NOT EXISTS `jos_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_finder_taxonomy`
--

INSERT INTO `jos_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_terms`
--

CREATE TABLE IF NOT EXISTS `jos_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_finder_terms_common`
--

INSERT INTO `jos_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_types`
--

CREATE TABLE IF NOT EXISTS `jos_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_joodb`
--

CREATE TABLE IF NOT EXISTS `jos_joodb` (
`id` int(1) NOT NULL,
  `name` varchar(125) NOT NULL,
  `table` varchar(255) NOT NULL,
  `tpl_list` text NOT NULL,
  `tpl_single` text NOT NULL,
  `tpl_print` text,
  `tpl_form` text,
  `fid` varchar(255) NOT NULL,
  `ftitle` varchar(255) NOT NULL,
  `fcontent` varchar(255) NOT NULL,
  `fabstract` varchar(255) DEFAULT NULL,
  `fdate` varchar(255) DEFAULT NULL,
  `fstate` varchar(255) DEFAULT NULL,
  `params` text,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Configuration table for JooDatabase' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_joodb`
--

INSERT INTO `jos_joodb` (`id`, `name`, `table`, `tpl_list`, `tpl_single`, `tpl_print`, `tpl_form`, `fid`, `ftitle`, `fcontent`, `fabstract`, `fdate`, `fstate`, `params`, `published`, `created`) VALUES
(1, 'My little DB', 'jos_joodb_sample', '<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<!-- Search box -->\r\n{joodb searchbox|title,value,category}\r\n{joodb alphabox}\r\n<div style="float:right;">{joodb limitbox}</div>\r\n<p>{joodb pagecount}</p>\r\n<!-- Title wirt Sortlinks -->\r\n<table>\r\n    <thead>\r\n    <tr>\r\n        <th style="width: 30%;">{joodb sortlink|value|Value}</th>\r\n        <th style="width: 70%;">{joodb sortlink|title|Title}</th>\r\n    </tr>\r\n    </thead>\r\n</table>\r\n<!-- LOOP Start -->\r\n{joodb loop}\r\n<table>\r\n    <tbody>\r\n    <tr class="{joodb loopclass}">\r\n        <td style="font-weight: bold; text-shadow: 1px 1px 3px #aaa; vertical-align: bottom; width: 15%;">\r\n          {joodb ifis|value}{joodb value} ${joodb else}<strong><span style="color: #d40000;">No Value</span></strong>{joodb endif}\r\n         </td>\r\n        <td style="width: 15%;">\r\n            <img style="width: 46px; margin: 0 20px; padding: 10px; background-color: #c0c0c0; border: 1px solid #888; box-shadow: 2px 2px 6px rgba(0,0,0,0.5);" src="components/com_joodb/sample-images/{joodb picture}" alt="*" />\r\n        </td>\r\n        <td style="width: 70%;">\r\n            <h3 style="margin:0;">{joodb title}</h3>\r\n            <div class="small">{joodb date}</div>\r\n            <p>{joodb short_description}</p>\r\n            <div style="display: block; text-align: right;">{joodb readon}</div>\r\n        </td>\r\n    </tr>\r\n    </tbody>\r\n</table>\r\n{joodb loop}\r\n<!-- LOOP End -->\r\n<h3>{joodb nodata}</h3>\r\n<!-- LOOP Pagination -->\r\n<p>{joodb pagecount}</p>\r\n<div class="pagination">{joodb pagenav}</div>', '<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<table>\r\n    <tbody>\r\n    <tr>\r\n        <th>\r\n            <div style="float: right; width: 100px; text-align: right;">{joodb printbutton}</div>\r\n            <big>{joodb title}</big>\r\n       </th>\r\n    </tr>\r\n    <tr class="odd">\r\n        <td><div class="small">Datum: {joodb date}</div>\r\n          <img style="border: 1px solid #666666; margin: 5px 10px 5px 20px; padding: 10px; background-color: #c0c0c0; float: right; width: 100px; box-shadow: 2px 2px 6px rgba(0,0,0,0.5);" src="components/com_joodb/sample-images/{joodb picture}" alt="*"/>\r\n          <div>{joodb description}</div>\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n    </tbody>\r\n</table>\r\n<div class="block">\r\n<dl>\r\n    <dt>Usefull:</dt>\r\n    <dd>{joodb usefull}</dd>\r\n    <dt>Value:</dt>\r\n    <dd>{joodb ifis|value}{joodb value} ${joodb else}<strong><span style="color: #d40000;">No Value</span></strong>{joodb endif}</dd>\r\n    <dt>Category:</dt>\r\n    <dd>{joodb category}</dd>\r\n    <dt>More info:</dt>\r\n    <dd><a href="{joodb wikipedia}" target="_blank">Wikipedia link</a></dd>\r\n</dl>\r\n</div>  \r\n<p>{joodb backbutton}</p>\r\n', '<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<table>\r\n    <tbody>\r\n    <tr>\r\n        <th>\r\n            <big>{joodb title}</big></th>\r\n    </tr>\r\n    <tr class="odd">\r\n        <td><div class="small">Datum: {joodb date}</div>\r\n          <img style="border: 1px solid #666666; margin: 5px 10px 5px 20px; padding: 10px; background-color: #c0c0c0; float: right; width: 100px; box-shadow: 2px 2px 6px rgba(0,0,0,0.5);" src="components/com_joodb/sample-images/{joodb picture}" alt="*"/>\r\n            <div>{joodb description}</div>\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n    </tbody>\r\n</table>\r\n<div class="block">\r\n<dl>\r\n    <dt>Usefull:</dt>\r\n    <dd>{joodb usefull}</dd>\r\n    <dt>Value:</dt>\r\n    <dd>{joodb ifis|value}{joodb value} ${joodb else}<strong><span style="color: #d40000;">No Value</span></strong>{joodb endif}</dd>\r\n    <dt>Category:</dt>\r\n    <dd>{joodb category}</dd>\r\n    <dt>More info:</dt>\r\n    <dd><a href="{joodb wikipedia}" target="_blank">Wikipedia link</a></dd>\r\n</dl>\r\n</div>', '<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<dl>\r\n  <dt>\r\n    <label for="jform_title">Name</label>\r\n  </dt>\r\n  <dd>{joodb form|title}</dd>\r\n  <dt>\r\n    <label for="jform_description">Description</label>\r\n  </dt>\r\n  <dd>{joodb form|description}</dd>\r\n  <dt>\r\n    <label for="jform_value">Value</label>\r\n  </dt>\r\n  <dd>{joodb form|value}</dd>\r\n  <dt>\r\n    <label for="jform_usefull">Usefull</label>\r\n  </dt>\r\n  <dd>{joodb form|usefull}</dd>\r\n  <dt>\r\n    <label for="jform_category">Category</label>\r\n  </dt>\r\n  <dd>{joodb form|category}</dd>\r\n  <dt>\r\n    <label for="jform_date">Date</label>\r\n  </dt>\r\n  <dd>{joodb form|date}</dd>\r\n</dl>\r\n<dl>\r\n  <dt> </dt>\r\n  <dd>{joodb captcha}</dd>\r\n  <dt> </dt>\r\n  <dd>{joodb submitbutton}</dd>\r\n</dl>  \r\n\r\n', 'myid', 'title', 'description', 'short_description', 'date', 'state', '{"accessd":"1","accessf":"2","accesse":"1","img_width":"800","img_height":"480","thumb_width":"240","thumb_height":"180","extdb":"","extdb_server":"","extdb_user":"","extdb_pass":""}', 1, '2009-10-27 19:33:52'),
(2, 'Centros de Rehabilitacion', 'centro_rehabilitacion', '<!-- JooDatabase: initial template for new databases  -->\r\n<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<!-- Search box -->\r\n{joodb searchbox|title,value,category}\r\n{joodb alphabox}\r\n<div style="float:right;">{joodb limitbox}</div>\r\n<p>{joodb pagecount}</p>\r\n<!-- Title wirt Sortlinks -->\r\n<table style="width: 100%;">\r\n    <thead>\r\n    <tr>\r\n        <th>Titel/Name<span style="float:right">Order by:  {joodb orderlink|Nombre|Nombre} {joodb orderlink|Nombre|Nombre}</span></th>\r\n    </tr>\r\n    </thead>\r\n</table>\r\n<!-- LOOP Start -->\r\n{joodb loop}\r\n<div class=''{joodb loopclass}'' ><div style=''width:80px;float:left;'' align=''middle''><h3>{joodb Nombre}</h3></div><div><strong>{joodb Nombre}</strong>\r\n<p>{joodb Nombre|120}</p>\r\n<div class="readon">{joodb readon}</div></div></div>\r\n\r\n{joodb loop}\r\n<!-- LOOP End -->\r\n<h3>{joodb nodata}</h3>\r\n<!-- LOOP Pagination -->\r\n<p>{joodb pagecount}</p>\r\n<div class="pagination">{joodb pagenav}</div>\r\n\r\n', '<!-- JooDatabase: initial template for new databases  -->\r\n<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<table style="width: 100%;">\r\n    <tbody>\r\n    <tr>\r\n        <th>\r\n            <div style="float: right; width: 100px; text-align: right;">{joodb printbutton}</div>\r\n            <big>{joodb field|Nombre}</big>\r\n        </th>\r\n    </tr>\r\n    <tr class="odd">\r\n        <td><div><div style="float:right;">{joodb image}</div>{joodb field|Nombre}</div>\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n    </tbody>\r\n</table>\r\n<div class="block">\r\n    <dl>\r\n<dt>Ciudad:</dt>\r\n<dd>{joodb field|Ciudad}</dd>\r\n<dt>Direccion:</dt>\r\n<dd>{joodb field|Direccion}</dd>\r\n<dt>Email:</dt>\r\n<dd>{joodb field|Email}</dd>\r\n<dt>Web:</dt>\r\n<dd>{joodb field|Web}</dd>\r\n<dt>Modalidades:</dt>\r\n<dd>{joodb field|Modalidades}</dd>\r\n</dl>\r\n</div>\r\n<p>{joodb backbutton}</p>\r\n', '<!-- JooDatabase: initial template for new databases  -->\r\n<!-- see comomponents/com_joodb/assets/joodb.css for style definitions -->\r\n<table style="width: 100%;">\r\n    <tbody>\r\n    <tr>\r\n        <th>\r\n            <big>{joodb field|Nombre}</big>\r\n        </th>\r\n    </tr>\r\n    <tr class="odd">\r\n        <td><div><div style="float:right;">{joodb image}</div>{joodb field|Nombre}</div>\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n    </tbody>\r\n</table>\r\n<div class="block">\r\n    <dl>\r\n<dt>Ciudad:</dt>\r\n<dd>{joodb field|Ciudad}</dd>\r\n<dt>Direccion:</dt>\r\n<dd>{joodb field|Direccion}</dd>\r\n<dt>Email:</dt>\r\n<dd>{joodb field|Email}</dd>\r\n<dt>Web:</dt>\r\n<dd>{joodb field|Web}</dd>\r\n<dt>Modalidades:</dt>\r\n<dd>{joodb field|Modalidades}</dd>\r\n</dl>\r\n</div>\r\n', '<!-- JooDatabase: initial template for new databases  -->\r\n<dl>\r\n<dt>Ciudad:</dt>\r\n<dd>{joodb form|Ciudad}</dd>\r\n<dt>Direccion:</dt>\r\n<dd>{joodb form|Direccion}</dd>\r\n<dt>Telefono:</dt>\r\n<dd>{joodb form|Telefono}</dd>\r\n<dt>Email:</dt>\r\n<dd>{joodb form|Email}</dd>\r\n<dt>Web:</dt>\r\n<dd>{joodb form|Web}</dd>\r\n<dt>Modalidades:</dt>\r\n<dd>{joodb form|Modalidades}</dd>\r\n</dl>\r\n<dl>\r\n  <dt> </dt>\r\n  <dd>{joodb captcha}</dd>\r\n  <dt> </dt>\r\n  <dd>{joodb submitbutton}</dd>\r\n</dl>', 'Nombre', 'Nombre', 'Nombre', '', '', '', '{"accessd":"1","accessf":"2","accesse":"1","img_width":"800","img_height":"480","thumb_width":"240","thumb_height":"180","extdb":"","extdb_server":"","extdb_user":"","extdb_pass":""}', 1, '2014-10-10 13:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `jos_joodb_sample`
--

CREATE TABLE IF NOT EXISTS `jos_joodb_sample` (
`myid` int(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `value` varchar(10) DEFAULT NULL,
  `usefull` enum('Yes','No','Unknonwn') NOT NULL DEFAULT 'Yes',
  `picture` varchar(100) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `wikipedia` varchar(254) DEFAULT NULL,
  `category` set('Sport','Food','Tool','Creature') NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Table with joodb sample nosense data. Save to remove' AUTO_INCREMENT=14 ;

--
-- Dumping data for table `jos_joodb_sample`
--

INSERT INTO `jos_joodb_sample` (`myid`, `title`, `value`, `usefull`, `picture`, `short_description`, `description`, `wikipedia`, `category`, `date`, `state`) VALUES
(1, 'Cat', '3,45', 'No', 'cat.jpg', 'A very useless domestic cat.', 'The cat (Felis catus), also known as the domestic cat or housecat to distinguish it from other felines and felids, is a small carnivorous mammal that is valued by humans for its companionship and its ability to hunt vermin and household pests. It has been associated with humans for at least 9,500 years and is currently the most popular pet in the world.', 'http://en.wikipedia.org/wiki/Cat', 'Sport,Food,Creature', '2009-10-27 21:37:49', 1),
(3, 'Basketball', '9,45', 'Yes', 'basketball.jpg', 'A Baskeball sport utility.', 'Basketball is a team sport in which two teams of 5 players try to score points against one another by placing a ball through a 10 foot (3.048 m) high hoop (the goal) under organized rules. Basketball is one of the most popular and widely viewed sports in the world.', 'http://en.wikipedia.org/wiki/Basketball', 'Sport', '2009-10-27 21:36:39', 1),
(4, 'Salad', '0,30', 'Yes', 'salad.jpg', 'A green vegetable with not enough calories to survive.', 'Salad is any of a wide variety of dishes including: green salads; vegetable salads; salads of pasta, legumes, or grains; mixed salads incorporating meat, poultry, or seafood; and fruit salads. They include a mixture of cold or hot foods, often including raw vegetables and/or fruits.', 'http://en.wikipedia.org/wiki/Salad', 'Food', '2009-10-27 21:36:28', 1),
(5, 'Sunflower', '', 'Yes', 'sunflower.jpg', 'A yellow something. Symbol for hippies and good to make oil of it.', 'What is usually called the flower is actually a head (formally composite flower) of numerous florets (small flowers) crowded together. The outer florets are the sterile ray florets and can be yellow, maroon, orange, or other colors. The florets inside the circular head are called disc florets, which mature into what are traditionally called "sunflower seeds," but are actually the fruit (an achene) of the plant. The inedible husk is the wall of the fruit and the true seed lies within the kernel.', 'http://en.wikipedia.org/wiki/Sunflowers', 'Creature', '2009-10-08 21:41:51', 1),
(6, 'Candy', '0,34', 'No', 'sweets.jpg', 'Not good for health and weight but very tasty.', 'Confectionery is the set of food items that are rich in sugar, any one or type of which is called a confection. Modern usage may include substances rich in artificial sweeteners as well. The word candy (U.S.A.) or sweets (U.K.) is also used for the extensive variety of candies that comprise confectionery. Generally speaking, confections are low in nutritional value, though specially formulated chocolate has been manufactured in the past for military use due to its high concentration of calories.', 'http://en.wikipedia.org/wiki/Sweets', 'Food', '2009-10-22 22:39:25', 1),
(7, 'Light Bulb', '1', 'Yes', 'bulb.jpg', 'Also called Lamb. Crashes if you drop it.', 'The incandescent light bulb, incandescent lamp or incandescent light globe is a source of electric light that works by incandescence (a general term for heat-driven light emissions which includes the simple case of black body radiation). An electric current passes through a thin filament, heating it until it produces light. The enclosing glass bulb prevents the oxygen in air from reaching the hot filament, which otherwise would be destroyed rapidly by oxidation. Incandescent bulbs are also sometimes called electric lamps, a term also applied to the original arc lamps.', 'http://en.wikipedia.org/wiki/Light_bulb', 'Tool', '2009-10-29 22:50:26', 1),
(8, 'Umbrella', '14,34', 'Yes', 'para.jpg', 'Not very stylish but useful wen it rains.', 'An umbrella or parasol (sometimes colloquially; gamp, brolly, umbrellery, or bumbershoot) is a canopy designed to protect against precipitation or sunlight. The term parasol usually refers to an item designed to protect from the sun, and umbrella refers to a device more suited to protect from rain. ellis is stood behind me is the material; some parasols are not waterproof. Parasols are often meant to be fixed to one point and often used with patio tables or other outdoor furniture. Umbrellas are almost exclusively hand-held portable devices; however, parasols can also be hand-held. Umbrellas can be held as fashion accessories.', 'http://en.wikipedia.org/wiki/Umbrella', 'Tool', '2009-10-14 05:00:00', 1),
(9, 'Hambuger', '3,50', 'No', 'burger.jpg', 'I get hungry if i see the picture.', 'A hamburger (or burger) is a sandwich consisting of a cooked patty of ground meat, usually beef, placed in an open bun or between two slices of bread. Hamburgers are often served with lettuce, tomato, onion, pickles, or cheese and condiments such as mustard, mayonnaise, and ketchup.', 'http://en.wikipedia.org/wiki/Hamburger', 'Sport,Food', '2009-10-22 22:52:22', 1),
(10, 'Golfball', '', 'Unknonwn', 'golf.jpg', 'Golf is a expensive sport for older people.', 'Golf is a precision club-and-ball sport, in which competing players (golfers), using many types of clubs, attempt to hit balls into each hole on a golf course while employing the fewest number of strokes. Golf is one of the few ball games that does not require a standardized playing area. Instead, the game is played on golf "courses", each of which features a unique design, although courses typically consist of either nine or 18 holes. Golf is defined, in the rules of golf, as "playing a ball with a club from the teeing ground into the hole by a stroke or successive strokes in accordance with the Rules." Golf competition is generally played for the lowest number of strokes by an individual, known simply as stroke play, or the lowest score on the most individual holes during a complete round by an individual or team, known as match play.', 'http://en.wikipedia.org/wiki/Golfing', 'Sport', '2005-10-12 23:09:30', 1),
(11, 'Tomato', '0,50', 'Yes', 'tomato.jpg', 'People often drink tomato juice while flying.', 'The tomato (Solanum lycopersicum, syn. Lycopersicon lycopersicum & Lycopersicon esculentum[1]) is a herbaceous, usually sprawling plant in the Solanaceae or nightshade family that is typically cultivated for the purpose of harvesting its fruit for human consumption. Savory in flavor (and accordingly termed a vegetable; see section Fruit or vegetable below), the fruit of most varieties ripens to a distinctive red color. Tomato plants typically reach to 1–3 metres (3–10 ft) in height, and have a weak, woody stem that often vines over other plants. The leaves are 10–25 centimetres (4–10 in) long, odd pinnate, with 5–9 leaflets on petioles,[2] each leaflet up to 8 centimetres (3 in) long, with a serrated margin; both the stem and leaves are densely glandular-hairy. The flowers are 1–2 centimetres (0.4–0.8 in) across, yellow, with five pointed lobes on the corolla; they are borne in a cyme of 3–12 together. It is a perennial, often grown outdoors in temperate climates as an annual.', 'http://en.wikipedia.org/wiki/Tomato', 'Food', '2009-10-21 23:10:51', 1),
(12, 'Paprika', '1,9', 'Yes', 'paprica.jpg', 'I wonder why people like to eat Paprika. In Germany they have nearly no taste at all.', 'Paprika is a spice made from the grinding of dried fruits of Capsicum annuum (e.g., bell peppers or chili peppers). In many European countries, the word paprika also refers to bell peppers themselves. The seasoning is used in many cuisines to add color and flavor to dishes. Paprika can range from sweet (mild, not hot) to spicy (hot). Flavors also vary from country to country.', 'http://en.wikipedia.org/wiki/Paprika', 'Food', '2009-10-15 23:15:46', 1),
(13, 'Football', '14', 'Yes', 'football.jpg', 'In America the sport is called soccer. Not to mix with sucker, which is a defamation.', 'Football is the name of several similar team sports, all of which involve (to varying degrees) kicking a ball with the foot in an attempt to score a goal. The most popular of these sports worldwide is association football, more commonly known as just "football" or "soccer". However the word football is applied to whichever form of football became most popular in each particular part of the world. Hence the English language word "football" is applied to "gridiron football" (a name associated with the North American sports, especially American football and Canadian football), Australian football, Gaelic football, rugby league, rugby union, and related games. These rule variations are known as "codes."', 'http://en.wikipedia.org/wiki/Football', 'Sport', '2009-10-27 23:27:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_joodb_settings`
--

CREATE TABLE IF NOT EXISTS `jos_joodb_settings` (
`id` int(6) NOT NULL,
  `name` varchar(127) NOT NULL,
  `value` text NOT NULL,
  `jb_id` int(1) DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Settings table for JooDatabase' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_joodb_settings`
--

INSERT INTO `jos_joodb_settings` (`id`, `name`, `value`, `jb_id`, `changed`) VALUES
(1, 'version', '2.3', NULL, '2014-10-10 09:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `jos_languages`
--

CREATE TABLE IF NOT EXISTS `jos_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_languages`
--

INSERT INTO `jos_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to jos_menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to jos_extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to jos_users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=471 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 289, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 13, 22, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 14, 15, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 16, 17, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 18, 19, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 20, 21, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 53, 54, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 47, 52, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 48, 49, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 50, 51, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 237, 238, 0, '*', 0),
(207, 'top', 'Joomla.org', 'joomlaorg', '', 'joomlaorg', 'http://joomla.org', 'url', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 235, 236, 0, '*', 0),
(227, 'aboutjoomla', 'Weblinks Categories', 'weblinks-categories', '', 'using-joomla/extensions/components/weblinks-component/weblinks-categories', 'index.php?option=com_weblinks&view=categories&id=18', 'component', 1, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(229, 'aboutjoomla', 'Single Contact', 'single-contact', '', 'using-joomla/extensions/components/contact-component/single-contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_crumb":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(233, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(234, 'parks', 'Park Blog', 'park-blog', '', 'park-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 241, 242, 0, 'en-GB', 0),
(238, 'mainmenu', 'Sample Sites', 'sample-sites', '', 'sample-sites', 'index.php?option=com_content&view=article&id=38', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 265, 270, 0, '*', 0),
(242, 'parks', 'Write a Blog Post', 'write-a-blog-post', '', 'write-a-blog-post', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 114, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 243, 244, 0, 'en-GB', 0),
(243, 'parks', 'Parks Home', 'parks-home', '', 'parks-home', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"show_noauth":"","show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 239, 240, 0, 'en-GB', 0),
(244, 'parks', 'Image Gallery', 'image-gallery', '', 'image-gallery', 'index.php?option=com_content&view=categories&id=28', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"show_base_description":"1","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","drill_down_layout":"1","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 245, 250, 0, 'en-GB', 0),
(249, 'aboutjoomla', 'Submit a Weblink', 'submit-a-weblink', '', 'using-joomla/extensions/components/weblinks-component/submit-a-weblink', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(251, 'aboutjoomla', 'Contact Categories', 'contact-categories', '', 'using-joomla/extensions/components/contact-component/contact-categories', 'index.php?option=com_contact&view=categories&id=16', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(252, 'aboutjoomla', 'News Feed Categories', 'new-feed-categories', '', 'using-joomla/extensions/components/news-feeds-component/new-feed-categories', 'index.php?option=com_newsfeeds&view=categories&id=0', 'component', 1, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"Because this links to the root category the "uncategorised" category is displayed. ","maxLevel":"-1","show_empty_categories":"1","show_description":"1","show_description_image":"1","show_cat_num_articles":"1","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(253, 'aboutjoomla', 'News Feed Category', 'news-feed-category', '', 'using-joomla/extensions/components/news-feeds-component/news-feed-category', 'index.php?option=com_newsfeeds&view=category&id=17', 'component', 1, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(254, 'aboutjoomla', 'Single News Feed', 'single-news-feed', '', 'using-joomla/extensions/components/news-feeds-component/single-news-feed', 'index.php?option=com_newsfeeds&view=newsfeed&id=4', 'component', 1, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(255, 'aboutjoomla', 'Search', 'search', '', 'using-joomla/extensions/components/search-component/search', 'index.php?option=com_search&view=search', 'component', 1, 276, 5, 19, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"1","show_date":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 115, 116, 0, '*', 0),
(256, 'aboutjoomla', 'Archived Articles', 'archived-articles', '', 'using-joomla/extensions/components/content-component/archived-articles', 'index.php?option=com_content&view=archive', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"orderby_sec":"","order_date":"","display_num":"","filter_field":"","show_category":"1","link_category":"1","show_title":"1","link_titles":"1","show_intro":"1","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(257, 'aboutjoomla', 'Single Article', 'single-article', '', 'using-joomla/extensions/components/content-component/single-article', 'index.php?option=com_content&view=article&id=6', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 59, 60, 0, '*', 0),
(259, 'aboutjoomla', 'Article Category Blog', 'article-category-blog', '', 'using-joomla/extensions/components/content-component/article-category-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(260, 'aboutjoomla', 'Article Category List', 'article-category-list', '', 'using-joomla/extensions/components/content-component/article-category-list', 'index.php?option=com_content&view=category&id=19', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(262, 'aboutjoomla', 'Featured Articles', 'featured-articles', '', 'using-joomla/extensions/components/content-component/featured-articles', 'index.php?option=com_content&view=featured', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(263, 'aboutjoomla', 'Submit Article', 'submit-article', '', 'using-joomla/extensions/components/content-component/submit-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(265, 'aboutjoomla', 'Weblinks Component', 'weblinks-component', '', 'using-joomla/extensions/components/weblinks-component', 'index.php?option=com_content&view=article&id=54', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 84, 91, 0, '*', 0),
(266, 'aboutjoomla', 'Content Component', 'content-component', '', 'using-joomla/extensions/components/content-component', 'index.php?option=com_content&view=article&id=10', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"article-allow_ratings":"","article-allow_comments":"","show_category":"","link_category":"","show_title":"","link_titles":"","show_intro":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 73, 0, '*', 0),
(267, 'aboutjoomla', 'News Feeds Component', 'news-feeds-component', '', 'using-joomla/extensions/components/news-feeds-component', 'index.php?option=com_content&view=article&id=60', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"Newsfeeds Categories View ","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 92, 99, 0, '*', 0),
(268, 'aboutjoomla', 'Components', 'components', '', 'using-joomla/extensions/components', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"0","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 122, 0, '*', 0),
(270, 'aboutjoomla', 'Contact Component', 'contact-component', '', 'using-joomla/extensions/components/contact-component', 'index.php?option=com_content&view=article&id=9', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 74, 83, 0, '*', 0),
(271, 'aboutjoomla', 'Users Component', 'users-component', '', 'using-joomla/extensions/components/users-component', 'index.php?option=com_content&view=article&id=52', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 100, 113, 0, '*', 0),
(272, 'aboutjoomla', 'Article Categories', 'article-categories', '', 'using-joomla/extensions/components/content-component/article-categories', 'index.php?option=com_content&view=categories&id=14', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(273, 'aboutjoomla', 'Administrator Components', 'administrator-components', '', 'using-joomla/extensions/components/administrator-components', 'index.php?option=com_content&view=article&id=1', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 120, 121, 0, '*', 0),
(274, 'aboutjoomla', 'Weblinks Single Category', 'weblinks-single-category', '', 'using-joomla/extensions/components/weblinks-component/weblinks-single-category', 'index.php?option=com_weblinks&view=category&id=32', 'component', 1, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(275, 'aboutjoomla', 'Contact Single Category', 'contact-single-category', '', 'using-joomla/extensions/components/contact-component/contact-single-category', 'index.php?option=com_contact&view=category&catid=26&id=36', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(276, 'aboutjoomla', 'Search Components', 'search-component', '', 'using-joomla/extensions/components/search-component', 'index.php?option=com_content&view=article&id=39', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 114, 119, 0, '*', 0),
(277, 'aboutjoomla', 'Using Extensions', 'extensions', '', 'using-joomla/extensions', 'index.php?option=com_content&view=categories&id=20', 'component', 1, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"","maxLevelcat":"1","show_empty_categories_cat":"1","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"0","drill_down_layout":"0","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 56, 221, 0, '*', 0),
(278, 'aboutjoomla', 'The Joomla! Project', 'the-joomla-project', '', 'the-joomla-project', 'index.php?option=com_content&view=article&id=48', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"1","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 229, 230, 0, '*', 0),
(279, 'aboutjoomla', 'The Joomla! Community', 'the-joomla-community', '', 'the-joomla-community', 'index.php?option=com_content&view=article&id=47', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 231, 232, 0, '*', 0),
(280, 'aboutjoomla', 'Using Joomla!', 'using-joomla', '', 'using-joomla', 'index.php?option=com_content&view=article&id=53', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 226, 0, '*', 0),
(281, 'aboutjoomla', 'Modules', 'modules', '', 'using-joomla/extensions/modules', 'index.php?option=com_content&view=category&id=22', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 123, 182, 0, '*', 0),
(282, 'aboutjoomla', 'Templates', 'templates', '', 'using-joomla/extensions/templates', 'index.php?option=com_content&view=category&id=23', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"2","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"0","filter_field":"hide","show_headings":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","show_pagination":"0","show_pagination_results":"","show_title":"1","link_titles":"1","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Templates","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 183, 202, 0, '*', 0),
(283, 'aboutjoomla', 'Languages', 'languages', '', 'using-joomla/extensions/languages', 'index.php?option=com_content&view=category&layout=blog&id=24', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 203, 204, 0, '*', 0),
(284, 'aboutjoomla', 'Plugins', 'plugins', '', 'using-joomla/extensions/plugins', 'index.php?option=com_content&view=category&layout=blog&id=25', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 205, 220, 0, '*', 0),
(285, 'aboutjoomla', 'Typography Atomic', 'typography-atomic', '', 'using-joomla/extensions/templates/atomic/typography-atomic', 'index.php?option=com_content&view=article&id=49', 'component', 1, 422, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 197, 198, 0, '*', 0),
(290, 'mainmenu', 'Articles', 'articles', '', 'site-map/articles', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 294, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(294, 'mainmenu', 'Site Map', 'site-map', '', 'site-map', 'index.php?option=com_content&view=article&id=42', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 3, 10, 0, '*', 0),
(296, 'parks', 'Park Links', 'park-links', '', 'park-links', 'index.php?option=com_weblinks&view=category&id=31', 'component', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"-1","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"","show_headings":"0","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 251, 252, 0, 'en-GB', 0),
(300, 'aboutjoomla', 'Latest Users', 'latest-users', '', 'using-joomla/extensions/modules/user-modules/latest-users', 'index.php?option=com_content&view=article&id=66', 'component', 1, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 147, 148, 0, '*', 0),
(301, 'aboutjoomla', 'Who''s Online', 'whos-online', '', 'using-joomla/extensions/modules/user-modules/whos-online', 'index.php?option=com_content&view=article&id=56', 'component', 1, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 149, 150, 0, '*', 0),
(302, 'aboutjoomla', 'Most Read', 'most-read', '', 'using-joomla/extensions/modules/content-modules/most-read', 'index.php?option=com_content&view=article&id=30', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 131, 132, 0, '*', 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(303, 'aboutjoomla', 'Menu', 'menu', '', 'using-joomla/extensions/modules/navigation-modules/menu', 'index.php?option=com_content&view=article&id=29', 'component', 1, 415, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 125, 126, 0, '*', 0),
(304, 'aboutjoomla', 'Statistics', 'statistics', '', 'using-joomla/extensions/modules/utility-modules/statistics', 'index.php?option=com_content&view=article&id=44', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 171, 172, 0, '*', 0),
(305, 'aboutjoomla', 'Banner', 'banner', '', 'using-joomla/extensions/modules/display-modules/banner', 'index.php?option=com_content&view=article&id=7', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 157, 158, 0, '*', 0),
(306, 'aboutjoomla', 'Search', 'search', '', 'using-joomla/extensions/modules/utility-modules/search', 'index.php?option=com_content&view=article&id=40', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 173, 174, 0, '*', 0),
(307, 'aboutjoomla', 'Random Image', 'random-image', '', 'using-joomla/extensions/modules/display-modules/random-image', 'index.php?option=com_content&view=article&id=36', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 155, 156, 0, '*', 0),
(309, 'aboutjoomla', 'News Flash', 'news-flash', '', 'using-joomla/extensions/modules/content-modules/news-flash', 'index.php?option=com_content&view=article&id=31', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 133, 134, 0, '*', 0),
(310, 'aboutjoomla', 'Latest Articles', 'latest-articles', '', 'using-joomla/extensions/modules/content-modules/latest-articles', 'index.php?option=com_content&view=article&id=27', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 135, 136, 0, '*', 0),
(311, 'aboutjoomla', 'Syndicate', 'syndicate', '', 'using-joomla/extensions/modules/utility-modules/syndicate', 'index.php?option=com_content&view=article&id=45', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 169, 170, 0, '*', 0),
(312, 'aboutjoomla', 'Login', 'login', '', 'using-joomla/extensions/modules/user-modules/login', 'index.php?option=com_content&view=article&id=28', 'component', 1, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 151, 152, 0, '*', 0),
(313, 'aboutjoomla', 'Wrapper', 'wrapper', '', 'using-joomla/extensions/modules/utility-modules/wrapper', 'index.php?option=com_content&view=article&id=59', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 177, 178, 0, '*', 0),
(316, 'aboutjoomla', 'Home Page Atomic', 'home-page-atomic', '', 'using-joomla/extensions/templates/atomic/home-page-atomic', 'index.php?option=com_content&view=featured', 'component', 1, 422, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 199, 200, 0, '*', 0),
(317, 'aboutjoomla', 'System', 'system', '', 'using-joomla/extensions/plugins/system', 'index.php?option=com_content&view=article&id=46', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 218, 219, 0, '*', 0),
(318, 'aboutjoomla', 'Authentication', 'authentication', '', 'using-joomla/extensions/plugins/authentication', 'index.php?option=com_content&view=article&id=5', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 206, 207, 0, '*', 0),
(319, 'aboutjoomla', 'Content', 'content', '', 'using-joomla/extensions/plugins/content', 'index.php?option=com_content&view=article&id=62', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 208, 209, 0, '*', 0),
(320, 'aboutjoomla', 'Editors', 'editors', '', 'using-joomla/extensions/plugins/editors', 'index.php?option=com_content&view=article&id=14', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 210, 211, 0, '*', 0),
(321, 'aboutjoomla', 'Editors Extended', 'editors-extended', '', 'using-joomla/extensions/plugins/editors-extended', 'index.php?option=com_content&view=article&id=15', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 212, 213, 0, '*', 0),
(322, 'aboutjoomla', 'Search', 'search', '', 'using-joomla/extensions/plugins/search', 'index.php?option=com_content&view=article&id=41', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 214, 215, 0, '*', 0),
(323, 'aboutjoomla', 'User', 'user', '', 'using-joomla/extensions/plugins/user', 'index.php?option=com_content&view=article&id=51', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 216, 217, 0, '*', 0),
(324, 'aboutjoomla', 'Footer', 'footer', '', 'using-joomla/extensions/modules/display-modules/footer', 'index.php?option=com_content&view=article&id=19', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 161, 162, 0, '*', 0),
(325, 'aboutjoomla', 'Archive', 'archive', '', 'using-joomla/extensions/modules/content-modules/archive', 'index.php?option=com_content&view=article&id=2', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 137, 138, 0, '*', 0),
(326, 'aboutjoomla', 'Related Items', 'related-items', '', 'using-joomla/extensions/modules/content-modules/related-items', 'index.php?option=com_content&view=article&id=37', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 139, 140, 0, '*', 0),
(399, 'parks', 'Animals', 'animals', '', 'image-gallery/animals', 'index.php?option=com_content&view=category&layout=blog&id=72', 'component', 1, 244, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 246, 247, 0, 'en-GB', 0),
(400, 'parks', 'Scenery', 'scenery', '', 'image-gallery/scenery', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 244, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 248, 249, 0, 'en-GB', 0),
(402, 'aboutjoomla', 'Login Form', 'login-form', '', 'using-joomla/extensions/components/users-component/login-form', 'index.php?option=com_users&view=login', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 101, 102, 0, '*', 0),
(403, 'aboutjoomla', 'User Profile', 'user-profile', '', 'using-joomla/extensions/components/users-component/user-profile', 'index.php?option=com_users&view=profile', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(404, 'aboutjoomla', 'Edit User Profile', 'edit-user-profile', '', 'using-joomla/extensions/components/users-component/edit-user-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 105, 106, 0, '*', 0),
(405, 'aboutjoomla', 'Registration Form', 'registration-form', '', 'using-joomla/extensions/components/users-component/registration-form', 'index.php?option=com_users&view=registration', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 107, 108, 0, '*', 0),
(406, 'aboutjoomla', 'Username Reminder Request', 'username-reminder', '', 'using-joomla/extensions/components/users-component/username-reminder', 'index.php?option=com_users&view=remind', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(409, 'aboutjoomla', 'Password Reset', 'password-reset', '', 'using-joomla/extensions/components/users-component/password-reset', 'index.php?option=com_users&view=reset', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(410, 'aboutjoomla', 'Feed Display', 'feed-display', '', 'using-joomla/extensions/modules/display-modules/feed-display', 'index.php?option=com_content&view=article&id=16', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 159, 160, 0, '*', 0),
(411, 'aboutjoomla', 'Content Modules', 'content-modules', '', 'using-joomla/extensions/modules/content-modules', 'index.php?option=com_content&view=category&id=64', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"1","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 130, 145, 0, '*', 0),
(412, 'aboutjoomla', 'User Modules', 'user-modules', '', 'using-joomla/extensions/modules/user-modules', 'index.php?option=com_content&view=category&id=65', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 146, 153, 0, '*', 0),
(413, 'aboutjoomla', 'Display Modules', 'display-modules', '', 'using-joomla/extensions/modules/display-modules', 'index.php?option=com_content&view=category&id=66', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 154, 167, 0, '*', 0),
(414, 'aboutjoomla', 'Utility Modules', 'utility-modules', '', 'using-joomla/extensions/modules/utility-modules', 'index.php?option=com_content&view=category&id=67', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 168, 181, 0, '*', 0),
(415, 'aboutjoomla', 'Navigation Modules', 'navigation-modules', '', 'using-joomla/extensions/modules/navigation-modules', 'index.php?option=com_content&view=category&id=75', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_category_title":"","page_subheading":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","list_show_title":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","filter_field":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_limit":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 124, 129, 0, '*', 0),
(416, 'aboutjoomla', 'Breadcrumbs', 'breadcrumbs', '', 'using-joomla/extensions/modules/navigation-modules/breadcrumbs', 'index.php?option=com_content&view=article&id=61', 'component', 1, 415, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 127, 128, 0, '*', 0),
(417, 'aboutjoomla', 'Weblinks', 'weblinks', '', 'using-joomla/extensions/modules/display-modules/weblinks', 'index.php?option=com_content&view=article&id=55', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 163, 164, 0, '*', 0),
(418, 'aboutjoomla', 'Custom HTML', 'custom-html', '', 'using-joomla/extensions/modules/display-modules/custom-html', 'index.php?option=com_content&view=article&id=12', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 165, 166, 0, '*', 0),
(419, 'aboutjoomla', 'Beez 2', 'beez-2', '', 'using-joomla/extensions/templates/beez-2', 'index.php?option=com_content&view=category&layout=blog&id=69', 'component', 1, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 184, 189, 0, '*', 0),
(422, 'aboutjoomla', 'Atomic', 'atomic', '', 'using-joomla/extensions/templates/atomic', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', 1, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"2","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 196, 201, 0, '*', 0),
(423, 'aboutjoomla', 'Typography Beez 2', 'typography-beez-2', '', 'using-joomla/extensions/templates/beez-2/typography-beez-2', 'index.php?option=com_content&view=article&id=49', 'component', 1, 419, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 185, 186, 0, '*', 0),
(424, 'aboutjoomla', 'Home Page Beez 2', 'home-page-beez-2', '', 'using-joomla/extensions/templates/beez-2/home-page-beez-2', 'index.php?option=com_content&view=featured', 'component', 1, 419, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 187, 188, 0, '*', 0),
(427, 'fruitshop', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', 'fruit-encyclopedia', 'index.php?option=com_contact&view=categories&id=37', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"show_base_description":"1","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_items_cat":"","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"1","show_subcat_desc":"","show_cat_items":"","show_pagination_limit":"","show_headings":"0","show_position_headings":"","show_email_headings":"0","show_telephone_headings":"0","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"0","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":" categories-listalphabet","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 255, 256, 0, '*', 0),
(429, 'fruitshop', 'Welcome', 'welcome', 'Fruit store front page', 'welcome', 'index.php?option=com_content&view=article&id=20', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"show_noauth":"","show_title":"0","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 253, 254, 0, '*', 0),
(430, 'fruitshop', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=category&catid=47&id=36', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"0","filter_field":"hide","show_pagination":"","show_noauth":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 259, 260, 0, '*', 0),
(431, 'fruitshop', 'Growers', 'growers', '', 'growers', 'index.php?option=com_content&view=category&layout=blog&id=30', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"maxLevel":"0","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"5","num_intro_articles":"0","num_columns":"1","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_noauth":"","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 257, 258, 0, '*', 0),
(432, 'fruitshop', 'Login ', 'shop-login', '', 'shop-login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 261, 262, 0, '*', 0),
(433, 'fruitshop', 'Directions', 'directions', '', 'directions', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 263, 264, 0, '*', 0),
(435, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"1","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(436, 'aboutjoomla', 'Getting Help', 'getting-help', '', 'using-joomla/getting-help', 'index.php?option=com_content&view=article&id=21', 'component', 1, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 224, 225, 0, '*', 0),
(437, 'aboutjoomla', 'Getting Started', 'getting-started', '', 'getting-started', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(438, 'mainmenu', 'Weblinks', 'weblinks', '', 'site-map/weblinks', 'index.php?option=com_weblinks&view=categories&id=0', 'component', 1, 294, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(439, 'mainmenu', 'Contacts', 'contacts', '', 'site-map/contacts', 'index.php?option=com_contact&view=categories&id=0', 'component', 1, 294, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(443, 'aboutjoomla', 'Article Categories', 'article-categories-view', '', 'using-joomla/extensions/modules/content-modules/article-categories-view', 'index.php?option=com_content&view=article&id=3', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 141, 142, 0, '*', 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(444, 'top', 'Sample Sites', 'sample-sites-2', '', 'sample-sites-2', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"238","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 233, 234, 0, '*', 0),
(445, 'mainmenu', 'Parks', 'parks', '', 'sample-sites/parks', 'index.php?Itemid=', 'alias', 1, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"243","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 266, 267, 0, '*', 0),
(446, 'mainmenu', 'Shop', 'shop', '', 'sample-sites/shop', 'index.php?Itemid=', 'alias', 1, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"429","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 268, 269, 0, '*', 0),
(447, 'aboutjoomla', 'Language Switcher', 'language-switcher', '', 'using-joomla/extensions/modules/utility-modules/language-switcher', 'index.php?option=com_content&view=article&id=26', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 175, 176, 0, '*', 0),
(448, 'mainmenu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 271, 272, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 273, 274, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 275, 276, 0, '*', 0),
(452, 'aboutjoomla', 'Featured Contacts', 'featured-contacts', '', 'using-joomla/extensions/components/contact-component/featured-contacts', 'index.php?option=com_contact&view=featured&id=16', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(453, 'aboutjoomla', 'Parameters', 'parameters', '', 'using-joomla/parameters', 'index.php?option=com_content&view=article&id=32', 'component', 1, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"1","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"1","link_parent_category":"1","show_author":"1","link_author":"1","show_create_date":"1","show_modify_date":"1","show_publish_date":"1","show_item_navigation":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 222, 223, 0, '*', 0),
(455, 'mainmenu', 'Example Pages', 'example-pages', '', 'example-pages', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"268","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 277, 278, 0, '*', 0),
(456, 'aboutjoomla', 'Beez5', 'beez5', '', 'using-joomla/extensions/templates/beez5', 'index.php?option=com_content&view=category&layout=blog&id=70', 'component', 1, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 190, 195, 0, '*', 0),
(457, 'aboutjoomla', 'Typography Beez5', 'typography-beez-5', '', 'using-joomla/extensions/templates/beez5/typography-beez-5', 'index.php?option=com_content&view=article&id=49', 'component', 1, 456, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 191, 192, 0, '*', 0),
(458, 'aboutjoomla', 'Home Page Beez5', 'home-page-beez5', '', 'using-joomla/extensions/templates/beez5/home-page-beez5', 'index.php?option=com_content&view=featured', 'component', 1, 456, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 193, 194, 0, '*', 0),
(459, 'aboutjoomla', 'Article Category', 'article-category', '', 'using-joomla/extensions/modules/content-modules/article-category', 'index.php?option=com_content&view=article&id=4', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 143, 144, 0, '*', 0),
(462, 'fruitshop', 'Add a recipe', 'add-a-recipe', '', 'add-a-recipe', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 279, 280, 0, '*', 0),
(463, 'fruitshop', 'Recipes', 'recipes', '', 'recipes', 'index.php?option=com_content&view=category&id=76', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"0","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","list_show_title":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","filter_field":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_limit":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 281, 282, 0, '*', 0),
(464, 'top', 'Home', 'home', '', 'home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 227, 228, 0, '*', 0),
(466, 'aboutjoomla', 'Smart Search', 'smart-search', '', 'using-joomla/extensions/components/search-component/smart-search', 'index.php?option=com_finder&view=search&q=&f=', 'component', 1, 276, 5, 27, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","search_order":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 118, 0, '*', 0),
(467, 'aboutjoomla', 'Smart Search', 'smart-search', '', 'using-joomla/extensions/modules/utility-modules/smart-search', 'index.php?option=com_content&view=article&id=70', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 179, 180, 0, '*', 0),
(468, 'main', 'JooDB', 'joodb', '', 'joodb', 'index.php?option=com_joodb', 'component', 0, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_joodb/assets/images/icon-16-database.png', 0, '', 283, 286, 0, '', 1),
(469, 'main', 'Info', 'info', '', 'joodb/info', 'index.php?option=com_joodb', 'component', 0, 468, 2, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_joodb/assets/images/icon-16-info.png', 0, '', 284, 285, 0, '', 1),
(470, 'top', 'Centros de Rehabilitacion', 'centros-de-rehabilitacion', '', 'centros-de-rehabilitacion', 'index.php?option=com_joodb&view=catalog', 'component', 1, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"joobase":"2","where_statement":"","show_description":"0","description":"","image":"-1","image_align":"right","link_titles":"1","link_urls":"0","orderby":"ftitle","ordering":"ASC","limit_to_user":"0","search_all":"1","limit":"5","exportfields":"","eportlimit":"100","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 287, 288, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(3, 'top', 'Top', 'Links for major types of users'),
(4, 'aboutjoomla', 'About Joomla', 'All about Joomla!'),
(5, 'parks', 'Australian Parks', 'Main menu for a site about Australian  parks'),
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(7, 'fruitshop', 'Fruit Shop', 'Menu for the sample shop site.');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 'Book Store', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Books!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(19, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(20, 'Top', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(22, 'Australian Parks ', '', '', 2, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"parks","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, 'en-GB'),
(23, 'About Joomla!', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(25, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 'This Site', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Latest News', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Statistics', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Who''s Online', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Footer', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Login', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(45, 'Menu Example', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 'Weblinks', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(56, 'Banners', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(57, 'Fruit Shop', '', '', 3, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"fruitshop","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(62, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p>Â </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 'Extensions', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"6","showAllChildren":"0","tag_id":"","class_sfx":"-menu","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(68, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Articles Category', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(71, 'Top Menu (Atomic Template)', '', '', 1, 'atomic-topmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 'Top Quote (Atomic Template)', '', '<hr />\r\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 'Shop', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"2","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Shop!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(78, 'Contribute', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Contribute! ","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 101),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 205),
(16, 435),
(17, 0),
(18, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 311),
(38, 300),
(39, 301),
(40, 313),
(41, 324),
(44, 312),
(45, 303),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(49, 417),
(52, 416),
(56, 305),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 0),
(78, 0),
(79, 0),
(84, 467),
(86, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:25:05', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:25:36', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:24:55', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:25:10', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_overrider`
--

CREATE TABLE IF NOT EXISTS `jos_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jos_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_schemas`
--

CREATE TABLE IF NOT EXISTS `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('3c562bc60dd3fc9028a817b573109d21', 0, 1, '1412955689', '__default|a:9:{s:15:"session.counter";i:68;s:19:"session.timer.start";i:1412948511;s:18:"session.timer.last";i:1412955631;s:17:"session.timer.now";i:1412955687;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":1:{s:10:"com_joodb2";O:8:"stdClass":2:{s:3:"cid";a:0:{}s:2:"gs";a:0:{}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"191ef8a2356f5713a819f809de1d2403";s:16:"com_mailto.links";a:1:{s:40:"9550748edf097a2e230a2afeb518a15837cecdb4";O:8:"stdClass":2:{s:4:"link";s:133:"http://192.168.0.5/joomla/toxidrogasun/index.php/using-joomla/extensions/components/content-component/article-category-list/24-joomla";s:6:"expiry";i:1412950631;}}}', 0, '', ''),
('v6ue96auc6otv986r2v7ios2p3', 1, 0, '1412955898', '__default|a:8:{s:15:"session.counter";i:214;s:19:"session.timer.start";i:1412946401;s:18:"session.timer.last";i:1412955889;s:17:"session.timer.now";i:1412955895;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":7:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":4:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;s:6:"manage";O:8:"stdClass":4:{s:4:"data";a:1:{s:7:"filters";a:5:{s:6:"search";s:0:"";s:9:"client_id";s:0:"";s:6:"status";s:0:"";s:4:"type";s:8:"template";s:5:"group";s:0:"";}}s:10:"limitstart";s:2:"20";s:8:"ordercol";s:4:"name";s:9:"orderdirn";s:3:"asc";}}s:13:"com_templates";O:8:"stdClass":2:{s:6:"styles";O:8:"stdClass":4:{s:10:"limitstart";i:0;s:6:"filter";O:8:"stdClass":3:{s:6:"search";s:0:"";s:8:"template";s:1:"0";s:9:"client_id";s:1:"*";}s:8:"ordercol";s:10:"a.template";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":2:{s:5:"style";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}s:6:"source";O:8:"stdClass":2:{s:2:"id";N;s:4:"data";N;}}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:3:"top";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:0:{}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}s:6:"editor";O:8:"stdClass":1:{s:6:"source";O:8:"stdClass":1:{s:6:"syntax";s:3:"php";}}s:11:"com_content";O:8:"stdClass":2:{s:8:"articles";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":7:{s:6:"search";s:0:"";s:6:"access";i:0;s:9:"author_id";s:0:"";s:9:"published";s:0:"";s:11:"category_id";s:0:"";s:5:"level";i:0;s:8:"language";s:0:"";}s:10:"limitstart";s:2:"20";s:8:"ordercol";s:7:"a.title";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:2:"42";s:4:"name";s:17:"Dulfrey Hernandez";s:8:"username";s:7:"dulfrey";s:5:"email";s:24:"wdhernandezh@unal.edu.co";s:8:"password";s:34:"$P$D48jUPCefu1bFZdSARunDtYpt/0VXP1";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-10-10 06:57:11";s:13:"lastvisitDate";s:19:"2014-10-10 08:26:16";s:10:"activation";s:0:"";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"34dcf41a521c8185fc19b7a143cdfae9";}', 42, 'dulfrey', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_template_styles`
--

CREATE TABLE IF NOT EXISTS `jos_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `jos_template_styles`
--

INSERT INTO `jos_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(114, 'beez_20', 0, '1', 'Beez2 - Parks Site', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"images\\/logoToxidrogasUN.png","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"personal"}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_updates`
--

CREATE TABLE IF NOT EXISTS `jos_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=66 ;

--
-- Dumping data for table `jos_updates`
--

INSERT INTO `jos_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.27', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.26.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.25.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 10015, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 10012, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.27.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.27.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(34, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(35, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(36, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.25.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(37, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.25.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(38, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(39, 3, 10018, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(40, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(41, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(42, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(43, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(44, 3, 10006, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(45, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(46, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.25.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(47, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.25.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(48, 3, 10003, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(49, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(50, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(51, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(52, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(53, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(54, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(55, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(56, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(57, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(58, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(59, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(60, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(61, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(62, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(63, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(64, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(65, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_update_categories`
--

CREATE TABLE IF NOT EXISTS `jos_update_categories` (
`categoryid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_update_sites`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_update_sites`
--

INSERT INTO `jos_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1412946754),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1412946754),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1412946754);

-- --------------------------------------------------------

--
-- Table structure for table `jos_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `jos_update_sites_extensions`
--

INSERT INTO `jos_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600);

-- --------------------------------------------------------

--
-- Table structure for table `jos_usergroups`
--

CREATE TABLE IF NOT EXISTS `jos_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_usergroups`
--

INSERT INTO `jos_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(10, 3, 12, 13, 'Shop Suppliers (Example)'),
(12, 2, 15, 16, 'Customer Group (Example)');

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(42, 'Dulfrey Hernandez', 'dulfrey', 'wdhernandezh@unal.edu.co', '$P$D48jUPCefu1bFZdSARunDtYpt/0VXP1', 'deprecated', 0, 1, '2014-10-10 06:57:11', '2014-10-10 13:06:47', '', '{}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_notes`
--

CREATE TABLE IF NOT EXISTS `jos_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to jos_users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to jos_usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_user_usergroup_map`
--

INSERT INTO `jos_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jos_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jos_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_viewlevels`
--

INSERT INTO `jos_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 32, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', '<p>Home of Joomla!</p>', '0000-00-00 00:00:00', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 33, 0, 'php.net', 'php', 'http://www.php.net', '<p>The language that Joomla! is developed in</p>', '0000-00-00 00:00:00', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 33, 0, 'MySQL', 'mysql', 'http://www.mysql.com', '<p>The most commonly used database for Joomla!.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2012-01-17 16:19:43', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 32, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', '<p>Home of OSM</p>', '0000-00-00 00:00:00', 11, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 32, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', '<p>Joomla! Forums</p>', '0000-00-00 00:00:00', 4, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 33, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 31, 0, 'Baw Baw National Park', 'baw-baw-national-park', 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '<p>Park of the Austalian Alps National Parks system, Baw BawÂ  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 31, 0, 'Kakadu', 'kakadu', 'http://www.environment.gov.au/parks/kakadu/index.html', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 31, 0, 'Pulu Keeling', 'pulu-keeling', 'http://www.environment.gov.au/parks/cocos/index.html', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '2010-07-10 23:44:03', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centro_rehabilitacion`
--
ALTER TABLE `centro_rehabilitacion`
 ADD PRIMARY KEY (`Nombre`), ADD KEY `Nombre` (`Nombre`);

--
-- Indexes for table `jos_assets`
--
ALTER TABLE `jos_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `jos_associations`
--
ALTER TABLE `jos_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `jos_banners`
--
ALTER TABLE `jos_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_banner_clients`
--
ALTER TABLE `jos_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `jos_banner_tracks`
--
ALTER TABLE `jos_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `jos_categories`
--
ALTER TABLE `jos_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jos_content`
--
ALTER TABLE `jos_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jos_content_frontpage`
--
ALTER TABLE `jos_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jos_content_rating`
--
ALTER TABLE `jos_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jos_extensions`
--
ALTER TABLE `jos_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `jos_finder_filters`
--
ALTER TABLE `jos_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `jos_finder_links`
--
ALTER TABLE `jos_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `jos_finder_links_terms0`
--
ALTER TABLE `jos_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms1`
--
ALTER TABLE `jos_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms2`
--
ALTER TABLE `jos_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms3`
--
ALTER TABLE `jos_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms4`
--
ALTER TABLE `jos_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms5`
--
ALTER TABLE `jos_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms6`
--
ALTER TABLE `jos_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms7`
--
ALTER TABLE `jos_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms8`
--
ALTER TABLE `jos_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms9`
--
ALTER TABLE `jos_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsa`
--
ALTER TABLE `jos_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsb`
--
ALTER TABLE `jos_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsc`
--
ALTER TABLE `jos_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsd`
--
ALTER TABLE `jos_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termse`
--
ALTER TABLE `jos_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsf`
--
ALTER TABLE `jos_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_taxonomy`
--
ALTER TABLE `jos_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `jos_finder_taxonomy_map`
--
ALTER TABLE `jos_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `jos_finder_terms`
--
ALTER TABLE `jos_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `jos_finder_terms_common`
--
ALTER TABLE `jos_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `jos_finder_tokens`
--
ALTER TABLE `jos_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `jos_finder_tokens_aggregate`
--
ALTER TABLE `jos_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `jos_finder_types`
--
ALTER TABLE `jos_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `jos_joodb`
--
ALTER TABLE `jos_joodb`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_joodb_sample`
--
ALTER TABLE `jos_joodb_sample`
 ADD PRIMARY KEY (`myid`), ADD KEY `title` (`title`), ADD KEY `state` (`state`);

--
-- Indexes for table `jos_joodb_settings`
--
ALTER TABLE `jos_joodb_settings`
 ADD PRIMARY KEY (`id`), ADD KEY `jb_id` (`jb_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `jos_languages`
--
ALTER TABLE `jos_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `jos_menu`
--
ALTER TABLE `jos_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `jos_messages`
--
ALTER TABLE `jos_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `jos_messages_cfg`
--
ALTER TABLE `jos_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `jos_modules`
--
ALTER TABLE `jos_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_modules_menu`
--
ALTER TABLE `jos_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jos_overrider`
--
ALTER TABLE `jos_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_redirect_links`
--
ALTER TABLE `jos_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `jos_schemas`
--
ALTER TABLE `jos_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `jos_session`
--
ALTER TABLE `jos_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `whosonline` (`guest`,`usertype`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `jos_template_styles`
--
ALTER TABLE `jos_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `jos_updates`
--
ALTER TABLE `jos_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `jos_update_categories`
--
ALTER TABLE `jos_update_categories`
 ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `jos_update_sites`
--
ALTER TABLE `jos_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `jos_update_sites_extensions`
--
ALTER TABLE `jos_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `jos_usergroups`
--
ALTER TABLE `jos_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `jos_users`
--
ALTER TABLE `jos_users`
 ADD PRIMARY KEY (`id`), ADD KEY `usertype` (`usertype`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `jos_user_notes`
--
ALTER TABLE `jos_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `jos_user_profiles`
--
ALTER TABLE `jos_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `jos_user_usergroup_map`
--
ALTER TABLE `jos_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `jos_viewlevels`
--
ALTER TABLE `jos_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jos_assets`
--
ALTER TABLE `jos_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `jos_banners`
--
ALTER TABLE `jos_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_banner_clients`
--
ALTER TABLE `jos_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jos_categories`
--
ALTER TABLE `jos_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jos_content`
--
ALTER TABLE `jos_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `jos_extensions`
--
ALTER TABLE `jos_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10026;
--
-- AUTO_INCREMENT for table `jos_finder_filters`
--
ALTER TABLE `jos_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_finder_links`
--
ALTER TABLE `jos_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_finder_taxonomy`
--
ALTER TABLE `jos_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_finder_terms`
--
ALTER TABLE `jos_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_finder_types`
--
ALTER TABLE `jos_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_joodb`
--
ALTER TABLE `jos_joodb`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jos_joodb_sample`
--
ALTER TABLE `jos_joodb_sample`
MODIFY `myid` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jos_joodb_settings`
--
ALTER TABLE `jos_joodb_settings`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_languages`
--
ALTER TABLE `jos_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_menu`
--
ALTER TABLE `jos_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=471;
--
-- AUTO_INCREMENT for table `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jos_messages`
--
ALTER TABLE `jos_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_modules`
--
ALTER TABLE `jos_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_overrider`
--
ALTER TABLE `jos_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `jos_redirect_links`
--
ALTER TABLE `jos_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_template_styles`
--
ALTER TABLE `jos_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `jos_updates`
--
ALTER TABLE `jos_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `jos_update_categories`
--
ALTER TABLE `jos_update_categories`
MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_update_sites`
--
ALTER TABLE `jos_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_usergroups`
--
ALTER TABLE `jos_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `jos_users`
--
ALTER TABLE `jos_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `jos_user_notes`
--
ALTER TABLE `jos_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_viewlevels`
--
ALTER TABLE `jos_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
