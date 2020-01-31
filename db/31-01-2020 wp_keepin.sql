-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-01-2020 a las 15:42:59
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wp_keepin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-13 12:35:45', '2020-01-13 12:35:45', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=680 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/keepin-theme-web/', 'yes'),
(2, 'home', 'http://localhost:8080/keepin-theme-web/', 'yes'),
(3, 'blogname', 'KeepinAgency', 'yes'),
(4, 'blogdescription', 'Soluciones IT', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kevinarojasp@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'keepin-theme-web', 'yes'),
(41, 'stylesheet', 'keepin-theme-web', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1580488547;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580504810;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580517347;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580560562;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580563278;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578920131;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(671, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1580476258;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-29 12:48:48\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(194, 'db_upgraded', '', 'yes'),
(181, 'core_updater.lock', '1579096860', 'no'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(139, 'current_theme', 'Keepin -  Theme Web', 'yes'),
(140, 'theme_mods_keepin-theme-web', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"footer-menu\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;s:14:\"page-btn-green\";i:76;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(667, '_site_transient_timeout_theme_roots', '1580478013', 'no'),
(668, '_site_transient_theme_roots', 'a:1:{s:16:\"keepin-theme-web\";s:7:\"/themes\";}', 'no'),
(192, 'recovery_keys', 'a:0:{}', 'yes'),
(202, 'can_compress_scripts', '1', 'no'),
(423, 'home-texto', 'We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial development of our customers, making them the most faithful  promoters of our service.', 'yes'),
(427, 'recovery_mode_email_last_sent', '1579719251', 'yes'),
(674, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1580519878', 'no'),
(675, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class=\"rss-widget\"><p><strong>Error de RSS:</strong> WP HTTP Error: cURL error 28: Resolving timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><p><strong>Error de RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div>', 'no'),
(672, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580476263;s:7:\"checked\";a:1:{s:16:\"keepin-theme-web\";s:5:\"0.0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(673, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580476263;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.1.2\";s:7:\"updated\";s:19:\"2019-10-11 19:03:07\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.2/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-02-02 16:28:51\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(295, 'instaurl', 'https://www.instagram.com/keepinagency/', 'yes'),
(503, 'category_children', 'a:0:{}', 'yes'),
(458, 'imgteam', 'http://localhost:8080/keepin-theme-web/wp-content/themes/keepin-theme-web/img/ico-team.png', 'yes'),
(368, 'ctahome', 'www.consentidog.com', 'yes'),
(369, 'txtctahome', 'Tell us about your project. ', 'yes'),
(373, 'txt-cta-home', 'Ready to get started? ', 'yes'),
(374, 'url-btn-home', 'www.keepinagency.com', 'yes'),
(375, 'txt-btn-home', 'Tell us about your project. ', 'yes'),
(376, 'text-cta-home', 'We make solutions go on computers, smartphones, or any web-enabled device.', 'yes'),
(377, 'urle-btn-home', 'www.keepinagency.com', 'yes'),
(378, 'text-btn-home', 'Contact me! ', 'yes'),
(379, 'txt-cta-blue', 'Us... creative people, expert developers, ready to offer the best solutions in web development and IT support.', 'yes'),
(380, 'url-btn-bue', 'www.keepinagency.com', 'yes'),
(381, 'txt-btn-blue', 'Meet the team!', 'yes'),
(383, 'txt-cta-green', 'Ready to get started? ', 'yes'),
(384, 'url-btn-green', 'www.keepinagency.com', 'yes'),
(385, 'txt-btn-green', 'Tell us about your project. ', 'yes'),
(386, 'txt-cta-grey', 'We make solutions go on computers, smartphones, or any web-enabled device. ', 'yes'),
(387, 'url-btn-grey', 'www.keepinagency.com', 'yes'),
(388, 'txt-btn-grey', 'Contact me! ', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/01/Logo-v2-KeepIn_100px.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:279;s:6:\"height\";i:100;s:4:\"file\";s:32:\"2020/01/Logo-v2-KeepIn_100px.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Logo-v2-KeepIn_100px-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2020/01/cropped-Logo-v2-KeepIn_100px.png'),
(6, 6, '_wp_attachment_context', 'custom-logo'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:100;s:4:\"file\";s:40:\"2020/01/cropped-Logo-v2-KeepIn_100px.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-Logo-v2-KeepIn_100px-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-v2-KeepIn_100px-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_edit_lock', '1578921016:1'),
(9, 8, '_wp_attached_file', '2020/01/Favicon-v2-KeepIn_100px.png'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:100;s:4:\"file\";s:35:\"2020/01/Favicon-v2-KeepIn_100px.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 7, '_wp_trash_meta_status', 'publish'),
(12, 7, '_wp_trash_meta_time', '1578921054'),
(161, 60, '_wp_trash_meta_status', 'publish'),
(16, 2, '_edit_last', '1'),
(17, 2, '_edit_lock', '1579633689:1'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1579795892:1'),
(20, 12, '_wp_page_template', 'default'),
(21, 14, '_edit_last', '1'),
(22, 14, '_wp_page_template', 'page_templates/page_blog.php'),
(23, 14, '_edit_lock', '1580224699:1'),
(24, 16, '_menu_item_type', 'post_type'),
(25, 16, '_menu_item_menu_item_parent', '0'),
(26, 16, '_menu_item_object_id', '14'),
(27, 16, '_menu_item_object', 'page'),
(28, 16, '_menu_item_target', ''),
(29, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 16, '_menu_item_xfn', ''),
(31, 16, '_menu_item_url', ''),
(298, 92, 'subtitulo', NULL),
(312, 98, '_edit_lock', '1580221483:1'),
(295, 92, '_thumbnail_id', '43'),
(290, 90, 'titulo', 'External Asesor'),
(289, 90, 'descripcion', NULL),
(288, 90, 'sub_titulo', NULL),
(287, 90, 'subtitulo', NULL),
(294, 92, '_edit_lock', '1580221484:1'),
(293, 92, '_edit_last', '1'),
(284, 90, '_thumbnail_id', '43'),
(283, 90, '_edit_lock', '1580221486:1'),
(282, 90, '_edit_last', '1'),
(51, 19, '_wp_trash_meta_status', 'publish'),
(52, 19, '_wp_trash_meta_time', '1579127502'),
(53, 1, '_wp_trash_meta_status', 'publish'),
(54, 1, '_wp_trash_meta_time', '1579179860'),
(55, 1, '_wp_desired_post_slug', 'hola-mundo'),
(56, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(375, 116, '_edit_last', '1'),
(61, 23, '_edit_lock', '1579561158:1'),
(60, 23, '_edit_last', '1'),
(65, 25, '_edit_lock', '1579561157:1'),
(64, 25, '_edit_last', '1'),
(71, 27, '_edit_lock', '1579561156:1'),
(70, 27, '_edit_last', '1'),
(75, 30, '_edit_lock', '1579561155:1'),
(74, 30, '_edit_last', '1'),
(79, 32, '_edit_lock', '1579561077:1'),
(78, 32, '_edit_last', '1'),
(83, 34, '_edit_lock', '1579717642:1'),
(82, 34, '_edit_last', '1'),
(87, 36, '_edit_lock', '1579187664:1'),
(86, 36, '_edit_last', '1'),
(90, 38, '_edit_last', '1'),
(94, 40, '_wp_attached_file', '2020/01/MockUp-MEDS_Php7.jpg'),
(93, 38, '_edit_lock', '1579880607:1'),
(95, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:785;s:4:\"file\";s:28:\"2020/01/MockUp-MEDS_Php7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"MockUp-MEDS_Php7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"MockUp-MEDS_Php7-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"MockUp-MEDS_Php7-768x471.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"MockUp-MEDS_Php7-1024x628.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:628;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 38, '_thumbnail_id', '40'),
(99, 41, '_wp_attached_file', '2020/01/MockUp-ConsentiDog.jpg'),
(100, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:785;s:4:\"file\";s:30:\"2020/01/MockUp-ConsentiDog.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"MockUp-ConsentiDog-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"MockUp-ConsentiDog-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"MockUp-ConsentiDog-768x471.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"MockUp-ConsentiDog-1024x628.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:628;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 36, '_thumbnail_id', '41'),
(105, 42, '_edit_lock', '1579794927:1'),
(104, 42, '_edit_last', '1'),
(106, 43, '_wp_attached_file', '2020/01/community.png'),
(107, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:21:\"2020/01/community.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 42, '_thumbnail_id', '45'),
(111, 45, '_wp_attached_file', '2020/01/ico-team.png'),
(112, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:104;s:6:\"height\";i:91;s:4:\"file\";s:20:\"2020/01/ico-team.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 45, '_wp_attachment_image_alt', 'Meet the Team'),
(117, 46, '_edit_lock', '1579275295:1'),
(116, 46, '_edit_last', '1'),
(118, 46, '_wp_page_template', 'default'),
(119, 48, '_edit_last', '1'),
(120, 48, '_wp_page_template', 'default'),
(121, 48, '_edit_lock', '1580224718:1'),
(122, 50, '_menu_item_type', 'post_type'),
(123, 50, '_menu_item_menu_item_parent', '0'),
(124, 50, '_menu_item_object_id', '48'),
(125, 50, '_menu_item_object', 'page'),
(126, 50, '_menu_item_target', ''),
(127, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 50, '_menu_item_xfn', ''),
(129, 50, '_menu_item_url', ''),
(140, 52, '_edit_lock', '1579309781:1'),
(131, 51, '_menu_item_type', 'post_type'),
(132, 51, '_menu_item_menu_item_parent', '0'),
(133, 51, '_menu_item_object_id', '46'),
(134, 51, '_menu_item_object', 'page'),
(135, 51, '_menu_item_target', ''),
(136, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 51, '_menu_item_xfn', ''),
(138, 51, '_menu_item_url', ''),
(141, 52, '_wp_trash_meta_status', 'publish'),
(142, 52, '_wp_trash_meta_time', '1579309818'),
(162, 60, '_wp_trash_meta_time', '1579634907'),
(145, 34, 'titulo', '& Publishing'),
(154, 27, 'titulo', 'Development'),
(148, 32, 'titulo', 'Wordpress Themes'),
(151, 30, 'titulo', 'Transform'),
(157, 25, 'titulo', 'IT Support'),
(160, 23, 'titulo', 'Development'),
(163, 61, '_edit_last', '1'),
(164, 61, '_wp_page_template', 'default'),
(165, 61, 'titulo', NULL),
(166, 61, '_edit_lock', '1579788632:1'),
(167, 66, '_wp_trash_meta_status', 'publish'),
(168, 66, '_wp_trash_meta_time', '1579642242'),
(169, 67, '_wp_trash_meta_status', 'publish'),
(170, 67, '_wp_trash_meta_time', '1579642250'),
(171, 68, '_wp_trash_meta_status', 'publish'),
(172, 68, '_wp_trash_meta_time', '1579643622'),
(173, 69, '_wp_trash_meta_status', 'publish'),
(174, 69, '_wp_trash_meta_time', '1579643629'),
(175, 70, '_wp_trash_meta_status', 'publish'),
(176, 70, '_wp_trash_meta_time', '1579644348'),
(177, 71, '_wp_trash_meta_status', 'publish'),
(178, 71, '_wp_trash_meta_time', '1579644526'),
(179, 72, '_wp_trash_meta_status', 'publish'),
(180, 72, '_wp_trash_meta_time', '1579644561'),
(181, 73, '_wp_trash_meta_status', 'publish'),
(182, 73, '_wp_trash_meta_time', '1579648421'),
(183, 74, '_edit_lock', '1579648442:1'),
(184, 74, '_wp_trash_meta_status', 'publish'),
(185, 74, '_wp_trash_meta_time', '1579648444'),
(186, 75, '_wp_trash_meta_status', 'publish'),
(187, 75, '_wp_trash_meta_time', '1579700851'),
(188, 76, '_edit_last', '1'),
(189, 76, '_edit_lock', '1580140220:1'),
(190, 14, 'titulo', NULL),
(191, 14, 'sub_titulo', 'our passion'),
(192, 61, '_wp_trash_meta_status', 'publish'),
(193, 61, '_wp_trash_meta_time', '1579788782'),
(194, 61, '_wp_desired_post_slug', 'index'),
(195, 78, '_edit_last', '1'),
(196, 78, '_edit_lock', '1580170238:1'),
(197, 78, '_wp_page_template', 'page_templates/page-team.php'),
(198, 78, 'titulo', NULL),
(199, 78, 'sub_titulo', ''),
(200, 80, '_edit_lock', '1579794639:1'),
(205, 80, '_wp_trash_meta_status', 'publish'),
(203, 42, 'titulo', ''),
(204, 42, 'sub_titulo', NULL),
(206, 80, '_wp_trash_meta_time', '1579794694'),
(207, 42, '_wp_trash_meta_status', 'publish'),
(208, 42, '_wp_trash_meta_time', '1579795079'),
(209, 42, '_wp_desired_post_slug', 'about-us'),
(313, 98, '_thumbnail_id', '43'),
(210, 78, 'subtitulo', 'Our/Your People'),
(211, 78, 'descripcion', ''),
(212, 78, 'textarea', ''),
(302, 96, '_edit_last', '1'),
(303, 96, '_edit_lock', '1580221484:1'),
(304, 96, '_thumbnail_id', '43'),
(213, 81, '_menu_item_type', 'post_type'),
(214, 81, '_menu_item_menu_item_parent', '0'),
(215, 81, '_menu_item_object_id', '78'),
(216, 81, '_menu_item_object', 'page'),
(217, 81, '_menu_item_target', ''),
(218, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 81, '_menu_item_xfn', ''),
(220, 81, '_menu_item_url', ''),
(221, 81, '_menu_item_orphaned', '1579795952'),
(222, 82, '_menu_item_type', 'post_type'),
(223, 82, '_menu_item_menu_item_parent', '0'),
(224, 82, '_menu_item_object_id', '48'),
(225, 82, '_menu_item_object', 'page'),
(226, 82, '_menu_item_target', ''),
(227, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 82, '_menu_item_xfn', ''),
(229, 82, '_menu_item_url', ''),
(230, 82, '_menu_item_orphaned', '1579796021'),
(231, 12, '_wp_trash_meta_status', 'publish'),
(232, 12, '_wp_trash_meta_time', '1579796050'),
(233, 12, '_wp_desired_post_slug', 'contactanos'),
(234, 76, '_wp_page_template', 'page_templates/page_ourservices.php'),
(235, 76, 'subtitulo', 'Our Services'),
(236, 76, 'sub_titulo', 'What We Do'),
(237, 76, 'descripcion', ''),
(238, 76, 'titulo', NULL),
(239, 84, '_edit_last', '1'),
(240, 84, '_wp_page_template', 'page_templates/page_portfolio.php'),
(241, 84, 'subtitulo', 'Our Client Work'),
(242, 84, 'sub_titulo', ''),
(243, 84, 'descripcion', ''),
(244, 84, 'titulo', NULL),
(245, 84, '_edit_lock', '1580153757:1'),
(246, 86, '_menu_item_type', 'post_type'),
(247, 86, '_menu_item_menu_item_parent', '0'),
(248, 86, '_menu_item_object_id', '84'),
(249, 86, '_menu_item_object', 'page'),
(250, 86, '_menu_item_target', ''),
(251, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 86, '_menu_item_xfn', ''),
(253, 86, '_menu_item_url', ''),
(301, 92, 'titulo', 'Analyst'),
(255, 87, '_menu_item_type', 'post_type'),
(256, 87, '_menu_item_menu_item_parent', '0'),
(257, 87, '_menu_item_object_id', '76'),
(258, 87, '_menu_item_object', 'page'),
(259, 87, '_menu_item_target', ''),
(260, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 87, '_menu_item_xfn', ''),
(262, 87, '_menu_item_url', ''),
(311, 98, '_edit_last', '1'),
(264, 88, '_menu_item_type', 'post_type'),
(265, 88, '_menu_item_menu_item_parent', '0'),
(266, 88, '_menu_item_object_id', '78'),
(267, 88, '_menu_item_object', 'page'),
(268, 88, '_menu_item_target', ''),
(269, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 88, '_menu_item_xfn', ''),
(271, 88, '_menu_item_url', ''),
(300, 92, 'descripcion', NULL),
(299, 92, 'sub_titulo', NULL),
(307, 96, 'subtitulo', NULL),
(308, 96, 'sub_titulo', NULL),
(309, 96, 'descripcion', NULL),
(310, 96, 'titulo', 'Chief Information Officer'),
(321, 100, '_edit_lock', '1580221652:1'),
(320, 100, '_edit_last', '1'),
(316, 98, 'subtitulo', NULL),
(317, 98, 'sub_titulo', NULL),
(318, 98, 'descripcion', NULL),
(319, 98, 'titulo', 'Chief Operating Officer'),
(322, 100, '_thumbnail_id', '43'),
(325, 100, 'subtitulo', NULL),
(326, 100, 'sub_titulo', NULL),
(327, 100, 'descripcion', NULL),
(328, 100, 'titulo', 'Chief executive Officer'),
(333, 14, 'subtitulo', 'Talking about'),
(334, 14, 'descripcion', ''),
(336, 107, '_edit_last', '1'),
(337, 107, '_edit_lock', '1579824709:1'),
(338, 108, '_wp_attached_file', '2020/01/third_party_integration-1.png'),
(339, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:37:\"2020/01/third_party_integration-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 107, '_thumbnail_id', '108'),
(347, 111, '_wp_attached_file', '2020/01/customer_support-1.png'),
(343, 107, 'subtitulo', NULL),
(344, 107, 'sub_titulo', NULL),
(345, 107, 'descripcion', NULL),
(346, 107, 'titulo', ''),
(348, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:30:\"2020/01/customer_support-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 110, '_edit_last', '1'),
(350, 110, '_thumbnail_id', '111'),
(353, 110, 'subtitulo', NULL),
(354, 110, 'sub_titulo', NULL),
(355, 110, 'descripcion', NULL),
(356, 110, 'titulo', ''),
(357, 110, '_edit_lock', '1579824758:1'),
(362, 114, '_wp_attached_file', '2020/01/custom_solutions-1.png'),
(363, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:30:\"2020/01/custom_solutions-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 113, '_edit_last', '1'),
(365, 113, '_thumbnail_id', '114'),
(385, 118, '_edit_last', '1'),
(368, 113, 'subtitulo', NULL),
(369, 113, 'sub_titulo', NULL),
(370, 113, 'descripcion', NULL),
(371, 113, 'titulo', ''),
(372, 113, '_edit_lock', '1579825340:1'),
(376, 116, '_edit_lock', '1580152608:1'),
(386, 118, '_edit_lock', '1579878815:1'),
(379, 116, 'subtitulo', NULL),
(380, 116, 'sub_titulo', NULL),
(381, 116, 'descripcion', NULL),
(382, 116, 'titulo', ''),
(387, 118, '_thumbnail_id', '5'),
(398, 120, '_edit_lock', '1579878891:1'),
(394, 116, '_thumbnail_id', '5'),
(390, 118, 'subtitulo', NULL),
(391, 118, 'sub_titulo', NULL),
(392, 118, 'descripcion', NULL),
(393, 118, 'titulo', ''),
(397, 120, '_edit_last', '1'),
(399, 120, '_thumbnail_id', '5'),
(407, 122, '_edit_lock', '1580140182:1'),
(406, 122, '_edit_last', '1'),
(402, 120, 'subtitulo', NULL),
(403, 120, 'sub_titulo', NULL),
(404, 120, 'descripcion', NULL),
(405, 120, 'titulo', ''),
(408, 122, '_thumbnail_id', '5'),
(411, 122, 'subtitulo', NULL),
(412, 122, 'sub_titulo', NULL),
(413, 122, 'descripcion', NULL),
(414, 122, 'titulo', ''),
(416, 128, '_wp_trash_meta_status', 'publish'),
(417, 128, '_wp_trash_meta_time', '1580140282'),
(418, 130, '_edit_last', '1'),
(419, 130, '_edit_lock', '1580220160:1'),
(420, 130, '_thumbnail_id', '43'),
(427, 130, '_wp_trash_meta_status', 'publish'),
(423, 130, 'subtitulo', NULL),
(424, 130, 'sub_titulo', NULL),
(425, 130, 'descripcion', NULL),
(426, 130, 'titulo', 'Administradora'),
(428, 130, '_wp_trash_meta_time', '1580220595'),
(429, 130, '_wp_desired_post_slug', 'share'),
(451, 132, '_edit_lock', '1580221640:1'),
(450, 132, '_edit_last', '1'),
(452, 132, '_thumbnail_id', '43'),
(459, 132, '_wp_trash_meta_status', 'publish'),
(455, 132, 'subtitulo', NULL),
(456, 132, 'sub_titulo', NULL),
(457, 132, 'descripcion', NULL),
(458, 132, 'titulo', 'Administradora'),
(460, 132, '_wp_trash_meta_time', '1580221817'),
(461, 132, '_wp_desired_post_slug', 'sharelina'),
(462, 100, '_wp_trash_meta_status', 'publish'),
(463, 100, '_wp_trash_meta_time', '1580221817'),
(464, 100, '_wp_desired_post_slug', 'javier-ramos'),
(465, 98, '_wp_trash_meta_status', 'publish'),
(466, 98, '_wp_trash_meta_time', '1580221817'),
(467, 98, '_wp_desired_post_slug', 'jhon-blanco'),
(468, 96, '_wp_trash_meta_status', 'publish'),
(469, 96, '_wp_trash_meta_time', '1580221817'),
(470, 96, '_wp_desired_post_slug', 'kevin-rojas'),
(471, 92, '_wp_trash_meta_status', 'publish'),
(472, 92, '_wp_trash_meta_time', '1580221817'),
(473, 92, '_wp_desired_post_slug', 'francisco-quintero'),
(474, 90, '_wp_trash_meta_status', 'publish'),
(475, 90, '_wp_trash_meta_time', '1580221817'),
(476, 90, '_wp_desired_post_slug', 'jesus-pita'),
(477, 134, '_edit_last', '1'),
(478, 134, '_edit_lock', '1580221708:1'),
(479, 134, '_thumbnail_id', '43'),
(487, 136, '_edit_lock', '1580221743:1'),
(486, 136, '_edit_last', '1'),
(482, 134, 'subtitulo', NULL),
(483, 134, 'sub_titulo', NULL),
(484, 134, 'descripcion', NULL),
(485, 134, 'titulo', 'Chief executive Officer'),
(488, 136, '_thumbnail_id', '43'),
(496, 138, '_edit_lock', '1580221779:1'),
(495, 138, '_edit_last', '1'),
(491, 136, 'subtitulo', NULL),
(492, 136, 'sub_titulo', NULL),
(493, 136, 'descripcion', NULL),
(494, 136, 'titulo', 'Chief Operating Officer'),
(497, 138, '_thumbnail_id', '43'),
(505, 140, '_edit_lock', '1580221803:1'),
(504, 140, '_edit_last', '1'),
(500, 138, 'subtitulo', NULL),
(501, 138, 'sub_titulo', NULL),
(502, 138, 'descripcion', NULL),
(503, 138, 'titulo', 'Chief Information Officer'),
(506, 140, '_thumbnail_id', '43'),
(514, 142, '_edit_lock', '1580221843:1'),
(513, 142, '_edit_last', '1'),
(509, 140, 'subtitulo', NULL),
(510, 140, 'sub_titulo', NULL),
(511, 140, 'descripcion', NULL),
(512, 140, 'titulo', 'Analyst'),
(515, 142, '_thumbnail_id', '43'),
(523, 144, '_edit_lock', '1580221932:1'),
(522, 144, '_edit_last', '1'),
(518, 142, 'subtitulo', NULL),
(519, 142, 'sub_titulo', NULL),
(520, 142, 'descripcion', NULL),
(521, 142, 'titulo', 'External Asesor'),
(524, 144, '_thumbnail_id', '43'),
(532, 146, '_edit_lock', '1580222382:1'),
(531, 146, '_edit_last', '1'),
(527, 144, 'subtitulo', NULL),
(528, 144, 'sub_titulo', NULL),
(529, 144, 'descripcion', NULL),
(530, 144, 'titulo', 'Administradora'),
(533, 146, '_thumbnail_id', '43'),
(540, 148, '_menu_item_type', 'custom'),
(536, 146, 'subtitulo', NULL),
(537, 146, 'sub_titulo', NULL),
(538, 146, 'descripcion', NULL),
(539, 146, 'titulo', 'RRHH'),
(541, 148, '_menu_item_menu_item_parent', '0'),
(542, 148, '_menu_item_object_id', '148'),
(543, 148, '_menu_item_object', 'custom'),
(544, 148, '_menu_item_target', ''),
(545, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(546, 148, '_menu_item_xfn', ''),
(547, 148, '_menu_item_url', 'http://localhost:8080/keepin-theme-web/#contacto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-13 12:35:45', '2020-01-13 12:35:45', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2020-01-16 13:04:20', '2020-01-16 13:04:20', '', 0, 'http://localhost:8080/keepin/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-13 12:35:45', '2020-01-13 12:35:45', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost:8080/keepin/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Quiénes Somos', '', 'publish', 'closed', 'closed', '', 'pagina-ejemplo', '', '', '2020-01-13 13:28:11', '2020-01-13 13:28:11', '', 0, 'http://localhost:8080/keepin/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-13 12:35:45', '2020-01-13 12:35:45', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost:8080/keepin.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2020-01-13 12:35:45', '2020-01-13 12:35:45', '', 0, 'http://localhost:8080/keepin/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-01-13 13:07:41', '2020-01-13 13:07:41', '', 'Logo-v2-KeepIn_100px', '', 'inherit', 'open', 'closed', '', 'logo-v2-keepin_100px', '', '', '2020-01-13 13:07:41', '2020-01-13 13:07:41', '', 0, 'http://localhost:8080/keepin/wp-content/uploads/2020/01/Logo-v2-KeepIn_100px.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-01-13 13:07:48', '2020-01-13 13:07:48', 'http://localhost:8080/keepin/wp-content/uploads/2020/01/cropped-Logo-v2-KeepIn_100px.png', 'cropped-Logo-v2-KeepIn_100px.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-v2-keepin_100px-png', '', '', '2020-01-13 13:07:48', '2020-01-13 13:07:48', '', 0, 'http://localhost:8080/keepin/wp-content/uploads/2020/01/cropped-Logo-v2-KeepIn_100px.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-01-13 13:10:54', '2020-01-13 13:10:54', '{\n    \"keepin-theme-web::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-13 13:08:29\"\n    },\n    \"site_icon\": {\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-13 13:10:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a70736a-e8c4-49d9-b8cb-c4e95c4e1ce2', '', '', '2020-01-13 13:10:54', '2020-01-13 13:10:54', '', 0, 'http://localhost:8080/keepin/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2020-01-13 13:10:43', '2020-01-13 13:10:43', '', 'Favicon-v2-KeepIn_100px', '', 'inherit', 'open', 'closed', '', 'favicon-v2-keepin_100px', '', '', '2020-01-13 13:10:43', '2020-01-13 13:10:43', '', 0, 'http://localhost:8080/keepin/wp-content/uploads/2020/01/Favicon-v2-KeepIn_100px.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2020-01-29 22:09:02', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-29 22:09:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/keepin-theme-web/?p=150', 0, 'post', '', 0),
(60, 1, '2020-01-21 19:28:26', '2020-01-21 19:28:26', '{\n    \"ctahome\": {\n        \"value\": \"www.consentidog.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 19:28:26\"\n    },\n    \"txtctahome\": {\n        \"value\": \"Tell us about your project. \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 19:28:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b285365c-78aa-40b4-8bf6-1b8a2246f47c', '', '', '2020-01-21 19:28:26', '2020-01-21 19:28:26', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/b285365c-78aa-40b4-8bf6-1b8a2246f47c/', 0, 'customize_changeset', '', 0),
(11, 1, '2020-01-13 13:28:11', '2020-01-13 13:28:11', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost:8080/keepin/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Quiénes Somos', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-13 13:28:11', '2020-01-13 13:28:11', '', 2, 'http://localhost:8080/keepin/2020/01/13/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-01-13 13:28:37', '2020-01-13 13:28:37', '', 'Contáctanos', '', 'trash', 'closed', 'closed', '', 'contactanos__trashed', '', '', '2020-01-23 16:14:10', '2020-01-23 16:14:10', '', 0, 'http://localhost:8080/keepin/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-01-13 13:28:37', '2020-01-13 13:28:37', '', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-01-13 13:28:37', '2020-01-13 13:28:37', '', 12, 'http://localhost:8080/keepin/2020/01/13/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-01-13 13:28:55', '2020-01-13 13:28:55', 'Here you will find some articles about what really move us, histories, reviews, tips and maybe some tricks we have discover day by day on this fascinating journey calling \"work\"', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-01-23 22:32:52', '2020-01-23 22:32:52', '', 0, 'http://localhost:8080/keepin/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-01-13 13:28:55', '2020-01-13 13:28:55', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 13:28:55', '2020-01-13 13:28:55', '', 14, 'http://localhost:8080/keepin/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-01-13 13:41:16', '2020-01-13 13:41:16', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-01-28 15:36:22', '2020-01-28 15:36:22', '', 0, 'http://localhost:8080/keepin/?p=16', 4, 'nav_menu_item', '', 0),
(90, 1, '2020-01-23 16:21:41', '2020-01-23 16:21:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jesus Pita', '', 'trash', 'open', 'open', '', 'jesus-pita__trashed', '', '', '2020-01-28 14:30:17', '2020-01-28 14:30:17', '', 0, 'http://localhost:8080/keepin-theme-web/?p=90', 0, 'post', '', 0),
(19, 1, '2020-01-15 22:31:42', '2020-01-15 22:31:42', '{\n    \"blogdescription\": {\n        \"value\": \"Soluciones IT\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 22:31:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '613ad102-1ff3-472d-86a1-fdd5f2506ece', '', '', '2020-01-15 22:31:42', '2020-01-15 22:31:42', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/15/613ad102-1ff3-472d-86a1-fdd5f2506ece/', 0, 'customize_changeset', '', 0),
(20, 1, '2020-01-16 13:04:20', '2020-01-16 13:04:20', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-01-16 13:04:20', '2020-01-16 13:04:20', '', 1, 'http://localhost:8080/keepin-theme-web/2020/01/16/1-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2020-01-24 15:14:55', '2020-01-24 15:14:55', 'The descrip about this outher article', 'First Article', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2020-01-24 15:14:55', '2020-01-24 15:14:55', '', 116, 'http://localhost:8080/keepin-theme-web/2020/01/24/116-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-01-16 13:06:09', '2020-01-16 13:06:09', 'A well-designed, attractive and functional website will help you power up your brand on the web, achieving greater sales opportunities.', 'Web Site', '', 'publish', 'open', 'open', '', 'web-site-development', '', '', '2020-01-20 23:01:25', '2020-01-20 23:01:25', '', 0, 'http://localhost:8080/keepin-theme-web/?p=23', 0, 'post', '', 0),
(24, 1, '2020-01-16 13:06:10', '2020-01-16 13:06:10', 'A well-designed, attractive and functional website will help you power up your brand on the web, achieving greater sales opportunities.', 'Web Site Development', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-01-16 13:06:10', '2020-01-16 13:06:10', '', 23, 'http://localhost:8080/keepin-theme-web/2020/01/16/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-01-16 13:06:34', '2020-01-16 13:06:34', 'We guarantee you a high quality care and personalized service, will help you keeping your applications and websites 100% operational 365 days a year.', '24x7', '', 'publish', 'open', 'open', '', '24x7-it-support', '', '', '2020-01-20 23:01:14', '2020-01-20 23:01:14', '', 0, 'http://localhost:8080/keepin-theme-web/?p=25', 0, 'post', '', 0),
(26, 1, '2020-01-16 13:06:34', '2020-01-16 13:06:34', 'We guarantee you a high quality care and personalized service, will help you keeping your applications and websites 100% operational 365 days a year.', '24x7 IT Support', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-01-16 13:06:34', '2020-01-16 13:06:34', '', 25, 'http://localhost:8080/keepin-theme-web/2020/01/16/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-01-16 13:07:19', '2020-01-16 13:07:19', 'We will help your customers easily access your services in an automated way through custom designed apps developed exclusively for you.', 'Applications', '', 'publish', 'open', 'open', '', 'applicationsdevelopment', '', '', '2020-01-20 23:01:03', '2020-01-20 23:01:03', '', 0, 'http://localhost:8080/keepin-theme-web/?p=27', 0, 'post', '', 0),
(28, 1, '2020-01-16 13:07:19', '2020-01-16 13:07:19', 'We will help your customers easily access your services in an automated way through custom designed apps developed exclusively for you.', 'ApplicationsDevelopment', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-01-16 13:07:19', '2020-01-16 13:07:19', '', 27, 'http://localhost:8080/keepin-theme-web/2020/01/16/27-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-01-24 15:14:55', '2020-01-24 15:14:55', 'The descrip about this outher article', 'First Article', '', 'publish', 'open', 'open', '', 'first-article', '', '', '2020-01-24 15:16:15', '2020-01-24 15:16:15', '', 0, 'http://localhost:8080/keepin-theme-web/?p=116', 0, 'post', '', 0),
(30, 1, '2020-01-16 13:09:23', '2020-01-16 13:09:23', 'Companies process modernization and workflow could mean the difference between success and failure; KeepIn will assist and guide you how to achieve it.', 'Digital', '', 'publish', 'open', 'open', '', 'digital-transform', '', '', '2020-01-20 23:00:56', '2020-01-20 23:00:56', '', 0, 'http://localhost:8080/keepin-theme-web/?p=30', 0, 'post', '', 0),
(31, 1, '2020-01-16 13:09:23', '2020-01-16 13:09:23', 'Companies process modernization and workflow could mean the difference between success and failure; KeepIn will assist and guide you how to achieve it.', 'Digital Transform', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-01-16 13:09:23', '2020-01-16 13:09:23', '', 30, 'http://localhost:8080/keepin-theme-web/2020/01/16/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-01-16 13:09:47', '2020-01-16 13:09:47', 'We design and develop custom wordpress themes with every custom items needed, from zero to a complete site working on this platform.', 'Custom', '', 'publish', 'open', 'open', '', 'custom-wordpress-themes', '', '', '2020-01-20 23:00:14', '2020-01-20 23:00:14', '', 0, 'http://localhost:8080/keepin-theme-web/?p=32', 0, 'post', '', 0),
(33, 1, '2020-01-16 13:09:47', '2020-01-16 13:09:47', 'We design and develop custom wordpress themes with every custom items needed, from zero to a complete site working on this platform.', 'Custom Wordpress Themes', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-01-16 13:09:47', '2020-01-16 13:09:47', '', 32, 'http://localhost:8080/keepin-theme-web/2020/01/16/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-01-16 13:11:04', '2020-01-16 13:11:04', 'At this historical moment, digital interaction is the most seeking treasure; we will make sure you get those beneficial interactions for you and your customers', 'Content', '', 'publish', 'open', 'open', '', 'content-publishing', '', '', '2020-01-20 22:59:46', '2020-01-20 22:59:46', '', 0, 'http://localhost:8080/keepin-theme-web/?p=34', 0, 'post', '', 0),
(35, 1, '2020-01-16 13:11:04', '2020-01-16 13:11:04', 'At this historical moment, digital interaction is the most seeking treasure; we will make sure you get those beneficial interactions for you and your customers', 'Content & Publishing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-01-16 13:11:04', '2020-01-16 13:11:04', '', 34, 'http://localhost:8080/keepin-theme-web/2020/01/16/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-01-16 14:16:37', '2020-01-16 14:16:37', 'Interactive and responsive web site, app and system.', 'ConsentiDog', '', 'publish', 'open', 'open', '', 'consentidog', '', '', '2020-01-16 14:48:56', '2020-01-16 14:48:56', '', 0, 'http://localhost:8080/keepin-theme-web/?p=36', 0, 'post', '', 0),
(37, 1, '2020-01-16 14:16:37', '2020-01-16 14:16:37', 'Interactive and responsive web site, app and system.', 'ConsentiDog', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-16 14:16:37', '2020-01-16 14:16:37', '', 36, 'http://localhost:8080/keepin-theme-web/2020/01/16/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-01-16 14:16:53', '2020-01-16 14:16:53', 'Updating an old App.', 'MEDS Php v7.3', '', 'publish', 'open', 'open', '', 'meds-php-v7-3', '', '', '2020-01-16 14:22:08', '2020-01-16 14:22:08', '', 0, 'http://localhost:8080/keepin-theme-web/?p=38', 0, 'post', '', 0),
(39, 1, '2020-01-16 14:16:53', '2020-01-16 14:16:53', 'Updating an old App.', 'MEDS Php v7.3', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-01-16 14:16:53', '2020-01-16 14:16:53', '', 38, 'http://localhost:8080/keepin-theme-web/2020/01/16/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-01-16 14:18:41', '2020-01-16 14:18:41', '', 'MEDS_Php7', 'Sistema realizado en PHP5 y se actualizo a PHP7', 'inherit', 'open', 'closed', '', 'mockup-meds_php7', '', '', '2020-01-16 14:21:27', '2020-01-16 14:21:27', '', 38, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/MockUp-MEDS_Php7.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-01-16 14:22:34', '2020-01-16 14:22:34', '', 'ConsentiDog', 'Theme wordpress desarrollado a medida, App y Backend desarrollado para consentidog', 'inherit', 'open', 'closed', '', 'mockup-consentidog', '', '', '2020-01-16 14:23:30', '2020-01-16 14:23:30', '', 36, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/MockUp-ConsentiDog.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-01-16 18:44:14', '2020-01-16 18:44:14', 'Us... creative people, expert developers, ready to offer the best solutions in web development and IT support.', 'About Us', '', 'trash', 'open', 'open', '', 'about-us__trashed', '', '', '2020-01-23 15:57:59', '2020-01-23 15:57:59', '', 0, 'http://localhost:8080/keepin-theme-web/?p=42', 0, 'post', '', 0),
(43, 1, '2020-01-16 18:43:09', '2020-01-16 18:43:09', '', '', '', 'inherit', 'open', 'closed', '', 'community', '', '', '2020-01-17 15:34:22', '2020-01-17 15:34:22', '', 42, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/community.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-01-17 15:37:15', '2020-01-17 15:37:15', '', 'Legal', '', 'publish', 'closed', 'closed', '', 'legal', '', '', '2020-01-17 15:37:15', '2020-01-17 15:37:15', '', 0, 'http://localhost:8080/keepin-theme-web/?page_id=46', 0, 'page', '', 0),
(44, 1, '2020-01-16 18:44:14', '2020-01-16 18:44:14', 'Us... creative people, expert developers, ready to offer the best solutions in web development and IT support.', 'About Us', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-01-16 18:44:14', '2020-01-16 18:44:14', '', 42, 'http://localhost:8080/keepin-theme-web/2020/01/16/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-01-17 15:33:31', '2020-01-17 15:33:31', 'Nuestro KeepinTeam, conoce más sobre nosotros', 'Meet the Team', 'KeepinTeam', 'inherit', 'open', 'closed', '', 'ico-team', '', '', '2020-01-17 15:34:26', '2020-01-17 15:34:26', '', 42, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/ico-team.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2020-01-17 15:37:15', '2020-01-17 15:37:15', '', 'Legal', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-01-17 15:37:15', '2020-01-17 15:37:15', '', 46, 'http://localhost:8080/keepin-theme-web/2020/01/17/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-01-17 15:37:30', '2020-01-17 15:37:30', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-01-28 15:17:54', '2020-01-28 15:17:54', '', 0, 'http://localhost:8080/keepin-theme-web/?page_id=48', 0, 'page', '', 0),
(49, 1, '2020-01-17 15:37:30', '2020-01-17 15:37:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2020-01-17 15:37:30', '2020-01-17 15:37:30', '', 48, 'http://localhost:8080/keepin-theme-web/2020/01/17/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-01-17 15:38:14', '2020-01-17 15:38:14', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-01-17 15:38:14', '2020-01-17 15:38:14', '', 0, 'http://localhost:8080/keepin-theme-web/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2020-01-17 15:38:14', '2020-01-17 15:38:14', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-01-17 15:38:14', '2020-01-17 15:38:14', '', 0, 'http://localhost:8080/keepin-theme-web/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2020-01-18 01:10:17', '2020-01-18 01:10:17', '{\n    \"instaurl\": {\n        \"value\": \"https://www.instagram.com/keepinagency/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-18 01:10:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f6345c96-fffd-4270-a9a2-8d8e8048bbb2', '', '', '2020-01-18 01:10:18', '2020-01-18 01:10:18', '', 0, 'http://localhost:8080/keepin-theme-web/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2020-01-20 22:59:46', '2020-01-20 22:59:46', 'At this historical moment, digital interaction is the most seeking treasure; we will make sure you get those beneficial interactions for you and your customers', 'Content', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-01-20 22:59:46', '2020-01-20 22:59:46', '', 34, 'http://localhost:8080/keepin-theme-web/2020/01/20/34-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-01-20 23:00:14', '2020-01-20 23:00:14', 'We design and develop custom wordpress themes with every custom items needed, from zero to a complete site working on this platform.', 'Custom', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-01-20 23:00:14', '2020-01-20 23:00:14', '', 32, 'http://localhost:8080/keepin-theme-web/2020/01/20/32-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-01-20 23:00:56', '2020-01-20 23:00:56', 'Companies process modernization and workflow could mean the difference between success and failure; KeepIn will assist and guide you how to achieve it.', 'Digital', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-01-20 23:00:56', '2020-01-20 23:00:56', '', 30, 'http://localhost:8080/keepin-theme-web/2020/01/20/30-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-20 23:01:03', '2020-01-20 23:01:03', 'We will help your customers easily access your services in an automated way through custom designed apps developed exclusively for you.', 'Applications', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-01-20 23:01:03', '2020-01-20 23:01:03', '', 27, 'http://localhost:8080/keepin-theme-web/2020/01/20/27-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-01-20 23:01:14', '2020-01-20 23:01:14', 'We guarantee you a high quality care and personalized service, will help you keeping your applications and websites 100% operational 365 days a year.', '24x7', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-01-20 23:01:14', '2020-01-20 23:01:14', '', 25, 'http://localhost:8080/keepin-theme-web/2020/01/20/25-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-01-20 23:01:25', '2020-01-20 23:01:25', 'A well-designed, attractive and functional website will help you power up your brand on the web, achieving greater sales opportunities.', 'Web Site', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-01-20 23:01:25', '2020-01-20 23:01:25', '', 23, 'http://localhost:8080/keepin-theme-web/2020/01/20/23-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-01-21 19:29:56', '2020-01-21 19:29:56', '', 'home', '', 'trash', 'closed', 'closed', '', 'index__trashed', '', '', '2020-01-23 14:13:02', '2020-01-23 14:13:02', '', 0, 'http://localhost:8080/keepin-theme-web/?page_id=61', 0, 'page', '', 0),
(62, 1, '2020-01-21 19:29:56', '2020-01-21 19:29:56', '', 'index', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-21 19:29:56', '2020-01-21 19:29:56', '', 61, 'http://localhost:8080/keepin-theme-web/2020/01/21/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-01-21 19:30:06', '2020-01-21 19:30:06', '', 'home', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-21 19:30:06', '2020-01-21 19:30:06', '', 61, 'http://localhost:8080/keepin-theme-web/2020/01/21/61-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-01-21 19:32:56', '2020-01-21 19:32:56', '', 'home', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-21 19:32:56', '2020-01-21 19:32:56', '', 61, 'http://localhost:8080/keepin-theme-web/2020/01/21/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-01-21 19:32:15', '2020-01-21 19:32:15', 'hola lial uoap nt   doinrunbwirnnopims', 'home', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-21 19:32:15', '2020-01-21 19:32:15', '', 61, 'http://localhost:8080/keepin-theme-web/2020/01/21/61-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-01-21 21:30:42', '2020-01-21 21:30:42', '{\n    \"txt-cta-home\": {\n        \"value\": \"Ready to get started? \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:30:42\"\n    },\n    \"url-btn-home\": {\n        \"value\": \"www.google.co\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:30:42\"\n    },\n    \"txt-btn-home\": {\n        \"value\": \"Tell us about your project. \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:30:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5ed276dc-1d3b-4bae-bab2-b91d4daa1d3d', '', '', '2020-01-21 21:30:42', '2020-01-21 21:30:42', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/5ed276dc-1d3b-4bae-bab2-b91d4daa1d3d/', 0, 'customize_changeset', '', 0),
(67, 1, '2020-01-21 21:30:50', '2020-01-21 21:30:50', '{\n    \"url-btn-home\": {\n        \"value\": \"www.google.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:30:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9180c97-3a94-4bf1-8623-db208f7b8c4c', '', '', '2020-01-21 21:30:50', '2020-01-21 21:30:50', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/b9180c97-3a94-4bf1-8623-db208f7b8c4c/', 0, 'customize_changeset', '', 0),
(68, 1, '2020-01-21 21:53:42', '2020-01-21 21:53:42', '{\n    \"text-cta-home\": {\n        \"value\": \"We make solutions go on computers, smartphones, or any web-enabled device.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:53:42\"\n    },\n    \"urle-btn-home\": {\n        \"value\": \"www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:53:42\"\n    },\n    \"text-btn-home\": {\n        \"value\": \"Contact me! \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:53:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '783732ec-a14d-4f85-b4bf-98430466cd09', '', '', '2020-01-21 21:53:42', '2020-01-21 21:53:42', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/783732ec-a14d-4f85-b4bf-98430466cd09/', 0, 'customize_changeset', '', 0),
(69, 1, '2020-01-21 21:53:49', '2020-01-21 21:53:49', '{\n    \"url-btn-home\": {\n        \"value\": \"www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 21:53:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2cbb9ad-817b-49c3-9806-5ed08f44b6d2', '', '', '2020-01-21 21:53:49', '2020-01-21 21:53:49', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/c2cbb9ad-817b-49c3-9806-5ed08f44b6d2/', 0, 'customize_changeset', '', 0),
(70, 1, '2020-01-21 22:05:48', '2020-01-21 22:05:48', '{\n    \"txt-cta-blue\": {\n        \"value\": \"Us... creative people, expert developers, ready to offer the best solutions in web development and IT support.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:05:48\"\n    },\n    \"url-btn-bue\": {\n        \"value\": \"www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:05:48\"\n    },\n    \"txt-btn-blue\": {\n        \"value\": \"Meet the team!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:05:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2dccacb-efe0-4ebb-a162-157d35f6560b', '', '', '2020-01-21 22:05:48', '2020-01-21 22:05:48', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/f2dccacb-efe0-4ebb-a162-157d35f6560b/', 0, 'customize_changeset', '', 0),
(71, 1, '2020-01-21 22:08:46', '2020-01-21 22:08:46', '{\n    \"txt-cta-green\": {\n        \"value\": \"Ready to get started? \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:08:46\"\n    },\n    \"url-btn-green\": {\n        \"value\": \"www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:08:46\"\n    },\n    \"txt-btn-green\": {\n        \"value\": \"Tell us about your project. \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:08:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '186811f2-2442-4c59-963a-138b21d2422b', '', '', '2020-01-21 22:08:46', '2020-01-21 22:08:46', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/186811f2-2442-4c59-963a-138b21d2422b/', 0, 'customize_changeset', '', 0),
(72, 1, '2020-01-21 22:09:21', '2020-01-21 22:09:21', '{\n    \"txt-cta-grey\": {\n        \"value\": \"We make solutions go on computers, smartphones, or any web-enabled device. \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:09:21\"\n    },\n    \"url-btn-grey\": {\n        \"value\": \"www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:09:21\"\n    },\n    \"txt-btn-grey\": {\n        \"value\": \"Contact me! \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 22:09:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd03f9df6-cf13-4b69-973f-d512ef1ee895', '', '', '2020-01-21 22:09:21', '2020-01-21 22:09:21', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/d03f9df6-cf13-4b69-973f-d512ef1ee895/', 0, 'customize_changeset', '', 0),
(73, 1, '2020-01-21 23:13:41', '2020-01-21 23:13:41', '{\n    \"url-btn-green\": {\n        \"value\": \"https://www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 23:13:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35846792-90b8-4eef-8337-c960cbb5e9b0', '', '', '2020-01-21 23:13:41', '2020-01-21 23:13:41', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/21/35846792-90b8-4eef-8337-c960cbb5e9b0/', 0, 'customize_changeset', '', 0),
(74, 1, '2020-01-21 23:14:04', '2020-01-21 23:14:04', '{\n    \"url-btn-green\": {\n        \"value\": \"www.keepinagency.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 23:14:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '918915af-6504-4e24-8afc-dd8ab031c938', '', '', '2020-01-21 23:14:04', '2020-01-21 23:14:04', '', 0, 'http://localhost:8080/keepin-theme-web/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2020-01-22 13:47:30', '2020-01-22 13:47:30', '{\n    \"home-texto\": {\n        \"value\": \"We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial development of our customers, making them the most faithful  promoters of our service.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-22 13:47:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a54dad7f-7e3f-4c32-9505-ebe508d4fce2', '', '', '2020-01-22 13:47:30', '2020-01-22 13:47:30', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/22/a54dad7f-7e3f-4c32-9505-ebe508d4fce2/', 0, 'customize_changeset', '', 0),
(76, 1, '2020-01-23 16:14:26', '2020-01-23 16:14:26', 'We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial develoment of our customers, marking them the most faithful promoters of our service.', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-01-26 15:15:04', '2020-01-26 15:15:04', '', 0, 'http://localhost:8080/keepin-theme-web/?page_id=76', 0, 'page', '', 0),
(78, 1, '2020-01-23 14:24:20', '2020-01-23 14:24:20', 'Our team, your team comes form varied backgrounds and all have different strenghts; but together, we make a reall strong team for projects of any size or complexity.', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2020-01-27 23:11:53', '2020-01-27 23:11:53', '', 0, 'http://localhost:8080/keepin-theme-web/?page_id=78', 0, 'page', '', 0),
(79, 1, '2020-01-23 14:24:20', '2020-01-23 14:24:20', 'Our team, your team comes form varied backgrounds and all have different strenghts; but together, we make a reall strong team for projects of any size or complexity.\r\n\r\nmostrar este contenido', 'Team', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-23 14:24:20', '2020-01-23 14:24:20', '', 78, 'http://localhost:8080/keepin-theme-web/2020/01/23/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-01-23 15:51:34', '2020-01-23 15:51:34', '{\n    \"imgteam\": {\n        \"value\": \"http://localhost:8080/keepin-theme-web/wp-content/themes/keepin-theme-web/img/ico-team.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-23 15:50:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a789ac1a-7f2f-45f0-9716-49f246bcc1ba', '', '', '2020-01-23 15:51:34', '2020-01-23 15:51:34', '', 0, 'http://localhost:8080/keepin-theme-web/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2020-01-23 16:12:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-23 16:12:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/keepin-theme-web/?p=81', 1, 'nav_menu_item', '', 0),
(82, 1, '2020-01-23 16:13:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-23 16:13:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/keepin-theme-web/?p=82', 1, 'nav_menu_item', '', 0),
(83, 1, '2020-01-23 16:14:26', '2020-01-23 16:14:26', '', 'Services', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-01-23 16:14:26', '2020-01-23 16:14:26', '', 76, 'http://localhost:8080/keepin-theme-web/2020/01/23/76-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-01-23 16:14:46', '2020-01-23 16:14:46', 'We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial development of our customers, making them the most faithful promoters of our service.', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2020-01-24 15:32:48', '2020-01-24 15:32:48', '', 0, 'http://localhost:8080/keepin-theme-web/?page_id=84', 0, 'page', '', 0),
(85, 1, '2020-01-23 16:14:46', '2020-01-23 16:14:46', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-01-23 16:14:46', '2020-01-23 16:14:46', '', 84, 'http://localhost:8080/keepin-theme-web/2020/01/23/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-01-23 16:15:34', '2020-01-23 16:15:34', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-01-28 15:36:22', '2020-01-28 15:36:22', '', 0, 'http://localhost:8080/keepin-theme-web/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2020-01-23 16:15:34', '2020-01-23 16:15:34', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2020-01-28 15:36:22', '2020-01-28 15:36:22', '', 0, 'http://localhost:8080/keepin-theme-web/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2020-01-23 16:15:34', '2020-01-23 16:15:34', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2020-01-28 15:36:22', '2020-01-28 15:36:22', '', 0, 'http://localhost:8080/keepin-theme-web/?p=88', 3, 'nav_menu_item', '', 0),
(91, 1, '2020-01-23 16:21:41', '2020-01-23 16:21:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jesus Pita', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-01-23 16:21:41', '2020-01-23 16:21:41', '', 90, 'http://localhost:8080/keepin-theme-web/2020/01/23/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-01-23 16:26:20', '2020-01-23 16:26:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Francisco Quintero', '', 'trash', 'open', 'open', '', 'francisco-quintero__trashed', '', '', '2020-01-28 14:30:17', '2020-01-28 14:30:17', '', 0, 'http://localhost:8080/keepin-theme-web/?p=92', 0, 'post', '', 0),
(93, 1, '2020-01-23 16:26:20', '2020-01-23 16:26:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Francisco Quintero', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2020-01-23 16:26:20', '2020-01-23 16:26:20', '', 92, 'http://localhost:8080/keepin-theme-web/2020/01/23/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-01-23 17:04:05', '2020-01-23 17:04:05', 'Our team, your team comes form varied backgrounds and all have different strenghts; but together, we make a reall strong team for projects of any size or complexity.\r\n\r\nmostrar este contenido', 'Team:', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-23 17:04:05', '2020-01-23 17:04:05', '', 78, 'http://localhost:8080/keepin-theme-web/2020/01/23/78-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-01-23 17:07:54', '2020-01-23 17:07:54', 'Our team, your team comes form varied backgrounds and all have different strenghts; but together, we make a reall strong team for projects of any size or complexity.\r\n\r\nmostrar este contenido', 'Team', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-23 17:07:54', '2020-01-23 17:07:54', '', 78, 'http://localhost:8080/keepin-theme-web/2020/01/23/78-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-01-23 19:36:50', '2020-01-23 19:36:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Kevin Rojas', '', 'trash', 'open', 'open', '', 'kevin-rojas__trashed', '', '', '2020-01-28 14:30:17', '2020-01-28 14:30:17', '', 0, 'http://localhost:8080/keepin-theme-web/?p=96', 0, 'post', '', 0),
(97, 1, '2020-01-23 19:36:50', '2020-01-23 19:36:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Kevin Rojas', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-01-23 19:36:50', '2020-01-23 19:36:50', '', 96, 'http://localhost:8080/keepin-theme-web/2020/01/23/96-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2020-01-23 19:37:13', '2020-01-23 19:37:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jhon Blanco', '', 'trash', 'open', 'open', '', 'jhon-blanco__trashed', '', '', '2020-01-28 14:30:17', '2020-01-28 14:30:17', '', 0, 'http://localhost:8080/keepin-theme-web/?p=98', 0, 'post', '', 0),
(99, 1, '2020-01-23 19:37:13', '2020-01-23 19:37:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jhon Blanco', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-23 19:37:13', '2020-01-23 19:37:13', '', 98, 'http://localhost:8080/keepin-theme-web/2020/01/23/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-01-23 19:37:50', '2020-01-23 19:37:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Javier Ramos', '', 'trash', 'open', 'open', '', 'javier-ramos__trashed', '', '', '2020-01-28 14:30:17', '2020-01-28 14:30:17', '', 0, 'http://localhost:8080/keepin-theme-web/?p=100', 0, 'post', '', 0),
(101, 1, '2020-01-23 19:37:50', '2020-01-23 19:37:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Javier Ramos', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2020-01-23 19:37:50', '2020-01-23 19:37:50', '', 100, 'http://localhost:8080/keepin-theme-web/2020/01/23/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-01-23 19:38:01', '2020-01-23 19:38:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jhon Blanco', '', 'inherit', 'closed', 'closed', '', '98-autosave-v1', '', '', '2020-01-23 19:38:01', '2020-01-23 19:38:01', '', 98, 'http://localhost:8080/keepin-theme-web/2020/01/23/98-autosave-v1/', 0, 'revision', '', 0),
(103, 1, '2020-01-23 19:38:44', '2020-01-23 19:38:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Kevin Rojas', '', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2020-01-23 19:38:44', '2020-01-23 19:38:44', '', 96, 'http://localhost:8080/keepin-theme-web/2020/01/23/96-autosave-v1/', 0, 'revision', '', 0),
(104, 1, '2020-01-23 22:31:13', '2020-01-23 22:31:13', 'Here you will find some articles about what really move us, histories,', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2020-01-23 22:31:13', '2020-01-23 22:31:13', '', 14, 'http://localhost:8080/keepin-theme-web/2020/01/23/14-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2020-01-23 22:32:44', '2020-01-23 22:32:44', 'Here you will find some articles about what really move us, histories, reviews, tips and maybe some tricks we have discover day by day on this fascinating journey calling \"work\"', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-23 22:32:44', '2020-01-23 22:32:44', '', 14, 'http://localhost:8080/keepin-theme-web/2020/01/23/14-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-01-24 00:13:50', '2020-01-24 00:13:50', 'We keep high standards of professionalism with a close, cordial and professional relationship, based on respect and tolerance.', '', '', 'publish', 'open', 'open', '', '107', '', '', '2020-01-24 00:13:50', '2020-01-24 00:13:50', '', 0, 'http://localhost:8080/keepin-theme-web/?p=107', 0, 'post', '', 0),
(108, 1, '2020-01-24 00:11:58', '2020-01-24 00:11:58', '', 'third_party_integration', '', 'inherit', 'open', 'closed', '', 'third_party_integration', '', '', '2020-01-24 00:11:58', '2020-01-24 00:11:58', '', 107, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/third_party_integration-1.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2020-01-24 00:13:50', '2020-01-24 00:13:50', 'We keep high standards of professionalism with a close, cordial and professional relationship, based on respect and tolerance.', '', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2020-01-24 00:13:50', '2020-01-24 00:13:50', '', 107, 'http://localhost:8080/keepin-theme-web/2020/01/24/107-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-01-24 00:14:41', '2020-01-24 00:14:41', 'We give effective answers to the eventualities that may arise in each of the services related to IT support, satisfying the needs of our partners.', '', '', 'publish', 'open', 'open', '', '110', '', '', '2020-01-24 00:14:52', '2020-01-24 00:14:52', '', 0, 'http://localhost:8080/keepin-theme-web/?p=110', 0, 'post', '', 0),
(111, 1, '2020-01-24 00:14:36', '2020-01-24 00:14:36', '', 'customer_support', '', 'inherit', 'open', 'closed', '', 'customer_support', '', '', '2020-01-24 00:14:36', '2020-01-24 00:14:36', '', 110, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/customer_support-1.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2020-01-24 00:14:41', '2020-01-24 00:14:41', 'We give effective answers to the eventualities that may arise in each of the services related to IT support, satisfying the needs of our partners.', '', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2020-01-24 00:14:41', '2020-01-24 00:14:41', '', 110, 'http://localhost:8080/keepin-theme-web/2020/01/24/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-01-24 00:15:25', '2020-01-24 00:15:25', 'We design, develop, maintain and update web-based solutions, adapted to the most demanding market requirements to offer a high quality service', '', '', 'publish', 'open', 'open', '', '113', '', '', '2020-01-24 00:22:18', '2020-01-24 00:22:18', '', 0, 'http://localhost:8080/keepin-theme-web/?p=113', 0, 'post', '', 0),
(114, 1, '2020-01-24 00:15:19', '2020-01-24 00:15:19', '', 'custom_solutions', '', 'inherit', 'open', 'closed', '', 'custom_solutions', '', '', '2020-01-24 00:15:19', '2020-01-24 00:15:19', '', 113, 'http://localhost:8080/keepin-theme-web/wp-content/uploads/2020/01/custom_solutions-1.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2020-01-24 00:15:25', '2020-01-24 00:15:25', 'We design, develop, maintain and update web-based solutions, adapted to the most demanding market requirements to offer a high quality service', '', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2020-01-24 00:15:25', '2020-01-24 00:15:25', '', 113, 'http://localhost:8080/keepin-theme-web/2020/01/24/113-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2020-01-24 15:15:53', '2020-01-24 15:15:53', 'The descrip about this outher article', 'Second Article', '', 'publish', 'open', 'open', '', 'second-article', '', '', '2020-01-24 15:15:53', '2020-01-24 15:15:53', '', 0, 'http://localhost:8080/keepin-theme-web/?p=118', 0, 'post', '', 0),
(119, 1, '2020-01-24 15:15:53', '2020-01-24 15:15:53', 'The descrip about this outher article', 'Second Article', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-01-24 15:15:53', '2020-01-24 15:15:53', '', 118, 'http://localhost:8080/keepin-theme-web/2020/01/24/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-01-24 15:17:10', '2020-01-24 15:17:10', 'The descrip about this outher article', 'Third Article', '', 'publish', 'open', 'open', '', 'third-article', '', '', '2020-01-24 15:17:10', '2020-01-24 15:17:10', '', 0, 'http://localhost:8080/keepin-theme-web/?p=120', 0, 'post', '', 0),
(121, 1, '2020-01-24 15:17:10', '2020-01-24 15:17:10', 'The descrip about this outher article', 'Third Article', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2020-01-24 15:17:10', '2020-01-24 15:17:10', '', 120, 'http://localhost:8080/keepin-theme-web/2020/01/24/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2020-01-24 15:18:44', '2020-01-24 15:18:44', 'The descrip about this outher article', 'Fourth Article', '', 'publish', 'open', 'open', '', 'fourth-article', '', '', '2020-01-24 15:18:44', '2020-01-24 15:18:44', '', 0, 'http://localhost:8080/keepin-theme-web/?p=122', 0, 'post', '', 0),
(123, 1, '2020-01-24 15:18:44', '2020-01-24 15:18:44', 'The descrip about this outher article', 'Fourth Article', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2020-01-24 15:18:44', '2020-01-24 15:18:44', '', 122, 'http://localhost:8080/keepin-theme-web/2020/01/24/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2020-01-24 15:31:23', '2020-01-24 15:31:23', 'We offer IT solutions that are dynamic, attractive and fu', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '84-autosave-v1', '', '', '2020-01-24 15:31:23', '2020-01-24 15:31:23', '', 84, 'http://localhost:8080/keepin-theme-web/2020/01/24/84-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2020-01-24 15:32:48', '2020-01-24 15:32:48', 'We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial development of our customers, making them the most faithful promoters of our service.', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-01-24 15:32:48', '2020-01-24 15:32:48', '', 84, 'http://localhost:8080/keepin-theme-web/2020/01/24/84-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-01-26 14:40:12', '2020-01-26 14:40:12', 'We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial develoment of our customers, marking them the most faithful promoters of our service.', 'Services', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2020-01-26 14:40:12', '2020-01-26 14:40:12', '', 76, 'http://localhost:8080/keepin-theme-web/2020/01/26/76-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2020-01-26 14:44:15', '2020-01-26 14:44:15', 'We offer IT solutions that are dynamic, attractive and functional; that exceed expectations and have a positive impact on the economic and commercial develoment of our customers, marking them the most faithful promoters of our service.', 'Services', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-01-26 14:44:15', '2020-01-26 14:44:15', '', 76, 'http://localhost:8080/keepin-theme-web/2020/01/26/76-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2020-01-27 15:51:22', '2020-01-27 15:51:22', '{\n    \"keepin-theme-web::page-btn-green\": {\n        \"value\": \"76\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 15:51:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e2c10b4d-e3fb-4e2b-8894-b6587fa57648', '', '', '2020-01-27 15:51:22', '2020-01-27 15:51:22', '', 0, 'http://localhost:8080/keepin-theme-web/2020/01/27/e2c10b4d-e3fb-4e2b-8894-b6587fa57648/', 0, 'customize_changeset', '', 0),
(129, 1, '2020-01-27 23:11:53', '2020-01-27 23:11:53', 'Our team, your team comes form varied backgrounds and all have different strenghts; but together, we make a reall strong team for projects of any size or complexity.', 'Team', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-27 23:11:53', '2020-01-27 23:11:53', '', 78, 'http://localhost:8080/keepin-theme-web/2020/01/27/78-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2020-01-28 14:01:27', '2020-01-28 14:01:27', '', 'Share', '', 'trash', 'open', 'open', '', 'share__trashed', '', '', '2020-01-28 14:09:55', '2020-01-28 14:09:55', '', 0, 'http://localhost:8080/keepin-theme-web/?p=130', 0, 'post', '', 0),
(131, 1, '2020-01-28 14:01:27', '2020-01-28 14:01:27', '', 'Share', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2020-01-28 14:01:27', '2020-01-28 14:01:27', '', 130, 'http://localhost:8080/keepin-theme-web/2020/01/28/130-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2020-01-28 14:29:01', '2020-01-28 14:29:01', '', 'Sharelina', '', 'trash', 'open', 'open', '', 'sharelina__trashed', '', '', '2020-01-28 14:30:17', '2020-01-28 14:30:17', '', 0, 'http://localhost:8080/keepin-theme-web/?p=132', 0, 'post', '', 0),
(133, 1, '2020-01-28 14:29:01', '2020-01-28 14:29:01', '', 'Sharelina', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2020-01-28 14:29:01', '2020-01-28 14:29:01', '', 132, 'http://localhost:8080/keepin-theme-web/2020/01/28/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-01-28 14:30:46', '2020-01-28 14:30:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Javier Ramos', '', 'publish', 'open', 'open', '', 'javier-ramos', '', '', '2020-01-28 14:30:46', '2020-01-28 14:30:46', '', 0, 'http://localhost:8080/keepin-theme-web/?p=134', 0, 'post', '', 0),
(135, 1, '2020-01-28 14:30:46', '2020-01-28 14:30:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Javier Ramos', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2020-01-28 14:30:46', '2020-01-28 14:30:46', '', 134, 'http://localhost:8080/keepin-theme-web/2020/01/28/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-01-28 14:31:13', '2020-01-28 14:31:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jhon Blanco', '', 'publish', 'open', 'open', '', 'jhon-blanco', '', '', '2020-01-28 14:31:13', '2020-01-28 14:31:13', '', 0, 'http://localhost:8080/keepin-theme-web/?p=136', 0, 'post', '', 0),
(137, 1, '2020-01-28 14:31:13', '2020-01-28 14:31:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jhon Blanco', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2020-01-28 14:31:13', '2020-01-28 14:31:13', '', 136, 'http://localhost:8080/keepin-theme-web/2020/01/28/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-01-28 14:31:59', '2020-01-28 14:31:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Kevin Rojas', '', 'publish', 'open', 'open', '', 'kevin-rojas', '', '', '2020-01-28 14:31:59', '2020-01-28 14:31:59', '', 0, 'http://localhost:8080/keepin-theme-web/?p=138', 0, 'post', '', 0),
(139, 1, '2020-01-28 14:31:59', '2020-01-28 14:31:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Kevin Rojas', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2020-01-28 14:31:59', '2020-01-28 14:31:59', '', 138, 'http://localhost:8080/keepin-theme-web/2020/01/28/138-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-01-28 14:32:22', '2020-01-28 14:32:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Francisco Quintero', '', 'publish', 'open', 'open', '', 'francisco-quintero', '', '', '2020-01-28 14:32:22', '2020-01-28 14:32:22', '', 0, 'http://localhost:8080/keepin-theme-web/?p=140', 0, 'post', '', 0),
(141, 1, '2020-01-28 14:32:22', '2020-01-28 14:32:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Francisco Quintero', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2020-01-28 14:32:22', '2020-01-28 14:32:22', '', 140, 'http://localhost:8080/keepin-theme-web/2020/01/28/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2020-01-28 14:33:02', '2020-01-28 14:33:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jesús Pita', '', 'publish', 'open', 'open', '', 'jesus-pita', '', '', '2020-01-28 14:33:02', '2020-01-28 14:33:02', '', 0, 'http://localhost:8080/keepin-theme-web/?p=142', 0, 'post', '', 0),
(143, 1, '2020-01-28 14:33:02', '2020-01-28 14:33:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Jesús Pita', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2020-01-28 14:33:02', '2020-01-28 14:33:02', '', 142, 'http://localhost:8080/keepin-theme-web/2020/01/28/142-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-01-28 14:33:30', '2020-01-28 14:33:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Sharelin Mujica', '', 'publish', 'open', 'open', '', 'sharelin-mujica', '', '', '2020-01-28 14:33:30', '2020-01-28 14:33:30', '', 0, 'http://localhost:8080/keepin-theme-web/?p=144', 0, 'post', '', 0),
(145, 1, '2020-01-28 14:33:30', '2020-01-28 14:33:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Sharelin Mujica', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2020-01-28 14:33:30', '2020-01-28 14:33:30', '', 144, 'http://localhost:8080/keepin-theme-web/2020/01/28/144-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-01-28 14:35:26', '2020-01-28 14:35:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Pedro Perez', '', 'publish', 'open', 'open', '', 'pedro-perez', '', '', '2020-01-28 14:35:26', '2020-01-28 14:35:26', '', 0, 'http://localhost:8080/keepin-theme-web/?p=146', 0, 'post', '', 0),
(147, 1, '2020-01-28 14:35:26', '2020-01-28 14:35:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et velit semper, eleifend leo ut, dictum lectus. Curabitur ac ligula maximus, auctor elit at, malesuada ante. Sed et aliquet ligula, et rhoncus mauris. Curabitur tortor est, luctus ut urna non, aliquam fermentum turpis. Curabitur elementum commodo tortor, vitae mollis nulla pretium ut. Sed felis nibh, fermentum ac quam nec, aliquet viverra lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, dolor maximus porttitor consequat, mi lorem pellentesque ante, vel euismod enim sem ut ligula. Aenean odio dui, aliquam eget scelerisque in, vehicula eget ex. Phasellus non posuere arcu. Pellentesque metus eros, consectetur sit amet velit at, dapibus rhoncus sapien. Curabitur et tincidunt velit, volutpat bibendum erat.', 'Pedro Perez', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2020-01-28 14:35:26', '2020-01-28 14:35:26', '', 146, 'http://localhost:8080/keepin-theme-web/2020/01/28/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2020-01-28 14:58:08', '2020-01-28 14:58:08', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-01-28 15:36:22', '2020-01-28 15:36:22', '', 0, 'http://localhost:8080/keepin-theme-web/?p=148', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Header', 'header', 0),
(3, 'portfolio', 'portfolio', 0),
(4, 'services', 'services', 0),
(5, 'team', 'team', 0),
(6, 'Footer', 'footer', 0),
(7, 'about_us_home', 'about_us_home', 0),
(8, 'blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(107, 7, 0),
(16, 2, 0),
(90, 5, 0),
(38, 3, 0),
(23, 4, 0),
(25, 4, 0),
(27, 4, 0),
(30, 4, 0),
(32, 4, 0),
(34, 4, 0),
(36, 3, 0),
(51, 6, 0),
(87, 2, 0),
(50, 6, 0),
(42, 1, 0),
(86, 2, 0),
(88, 2, 0),
(92, 5, 0),
(96, 5, 0),
(98, 5, 0),
(100, 5, 0),
(113, 7, 0),
(110, 7, 0),
(118, 8, 0),
(116, 8, 0),
(148, 2, 0),
(120, 8, 0),
(122, 8, 0),
(130, 5, 0),
(132, 5, 0),
(134, 5, 0),
(136, 5, 0),
(138, 5, 0),
(140, 5, 0),
(142, 5, 0),
(144, 5, 0),
(146, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', 'Cartera de clientes keepinagency', 0, 2),
(4, 4, 'category', 'Servicios que ofrece keepinagency', 0, 6),
(5, 5, 'category', 'Nuestro KeepinTeam, conoce mas sobre nosotros', 0, 7),
(6, 6, 'nav_menu', '', 0, 2),
(7, 7, 'category', 'Nuestro KeepinTeam, ubicados en el Home', 0, 3),
(8, 8, 'category', 'Artículos, noticias, e información de interés BlogKeepinTeam ', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'keepin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"ad6fd0e742611010f1d19b5c9162ad7bfd90b4c11ee63d4ba85a8ee625ec60df\";a:4:{s:10:\"expiration\";i:1580508539;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580335739;}s:64:\"dffbe4d3b527d9f2e4fa174b34966ff809ab0118213f12bb32673b0f7d4081b2\";a:4:{s:10:\"expiration\";i:1580649404;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580476604;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '150'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1578921136'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'keepin', '$P$BrijFUba6m5g0W1.xLUwR9xp8nsOZa.', 'keepin', 'kevinarojasp@gmail.com', '', '2020-01-13 12:35:45', '', 0, 'keepin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
