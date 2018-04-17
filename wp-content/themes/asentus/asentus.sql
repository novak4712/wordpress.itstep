-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 17 2018 г., 19:36
-- Версия сервера: 5.7.20
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `asentus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-16 11:43:16', '2018-04-16 08:43:16', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress.itstep', 'yes'),
(2, 'home', 'http://wordpress.itstep', 'yes'),
(3, 'blogname', 'asentus', 'yes'),
(4, 'blogdescription', 'первый сайт на WordPress', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'admin@admin.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'asentus', 'yes'),
(41, 'stylesheet', 'asentus', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '5', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1523997797;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524041006;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524046490;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523868530;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1523980612;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523980614;s:7:\"checked\";a:4:{s:7:\"asentus\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_a9c9f2e95d04342876471088fbbfe299', '1524473006', 'no'),
(122, '_site_transient_browser_a9c9f2e95d04342876471088fbbfe299', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"59.0.3071.115\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(140, 'new_admin_email', 'admin@admin.com', 'yes'),
(145, 'current_theme', 'Asentus', 'yes'),
(146, 'theme_mods_asentus', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:8:\"top_menu\";i:2;s:11:\"bottom_menu\";i:4;s:11:\"social_menu\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(166, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1523980614;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(167, 'acf_version', '4.4.12', 'yes'),
(260, '_site_transient_timeout_theme_roots', '1523982413', 'no'),
(261, '_site_transient_theme_roots', 'a:4:{s:7:\"asentus\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(262, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/04/ico_pochemu_4b.png'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:26:\"2018/04/ico_pochemu_4b.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 5, '_wp_attached_file', '2018/04/cropped-ico_pochemu_4b.png'),
(5, 5, '_wp_attachment_context', 'site-icon'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2018/04/cropped-ico_pochemu_4b.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-ico_pochemu_4b-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-ico_pochemu_4b-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:34:\"cropped-ico_pochemu_4b-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:34:\"cropped-ico_pochemu_4b-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:34:\"cropped-ico_pochemu_4b-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:32:\"cropped-ico_pochemu_4b-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 6, '_wp_trash_meta_status', 'publish'),
(8, 6, '_wp_trash_meta_time', '1523870733'),
(9, 7, '_wp_attached_file', '2018/04/logo.png'),
(10, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:19;s:4:\"file\";s:16:\"2018/04/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 7, '_wp_attachment_image_alt', 'Asentus Logo'),
(12, 8, '_edit_lock', '1523873470:1'),
(13, 8, '_customize_restore_dismissed', '1'),
(14, 2, '_wp_trash_meta_status', 'publish'),
(15, 2, '_wp_trash_meta_time', '1523873689'),
(16, 2, '_wp_desired_post_slug', 'sample-page'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1523877807:1'),
(19, 12, '_edit_last', '1'),
(20, 12, '_edit_lock', '1523877812:1'),
(21, 14, '_edit_last', '1'),
(22, 14, '_edit_lock', '1523886064:1'),
(23, 16, '_edit_last', '1'),
(24, 16, '_edit_lock', '1523877833:1'),
(25, 18, '_edit_last', '1'),
(26, 18, '_edit_lock', '1523877841:1'),
(27, 20, '_edit_last', '1'),
(28, 20, '_edit_lock', '1523877852:1'),
(29, 22, '_menu_item_type', 'post_type'),
(30, 22, '_menu_item_menu_item_parent', '0'),
(31, 22, '_menu_item_object_id', '20'),
(32, 22, '_menu_item_object', 'page'),
(33, 22, '_menu_item_target', ''),
(34, 22, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(35, 22, '_menu_item_xfn', 'top'),
(36, 22, '_menu_item_url', ''),
(38, 23, '_menu_item_type', 'post_type'),
(39, 23, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_object_id', '18'),
(41, 23, '_menu_item_object', 'page'),
(42, 23, '_menu_item_target', ''),
(43, 23, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(44, 23, '_menu_item_xfn', 'top'),
(45, 23, '_menu_item_url', ''),
(47, 24, '_menu_item_type', 'post_type'),
(48, 24, '_menu_item_menu_item_parent', '0'),
(49, 24, '_menu_item_object_id', '16'),
(50, 24, '_menu_item_object', 'page'),
(51, 24, '_menu_item_target', ''),
(52, 24, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(53, 24, '_menu_item_xfn', 'top'),
(54, 24, '_menu_item_url', ''),
(56, 25, '_menu_item_type', 'post_type'),
(57, 25, '_menu_item_menu_item_parent', '0'),
(58, 25, '_menu_item_object_id', '14'),
(59, 25, '_menu_item_object', 'page'),
(60, 25, '_menu_item_target', ''),
(61, 25, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(62, 25, '_menu_item_xfn', 'top'),
(63, 25, '_menu_item_url', ''),
(65, 26, '_menu_item_type', 'post_type'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '12'),
(68, 26, '_menu_item_object', 'page'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(71, 26, '_menu_item_xfn', 'top'),
(72, 26, '_menu_item_url', ''),
(74, 27, '_menu_item_type', 'post_type'),
(75, 27, '_menu_item_menu_item_parent', '0'),
(76, 27, '_menu_item_object_id', '10'),
(77, 27, '_menu_item_object', 'page'),
(78, 27, '_menu_item_target', ''),
(79, 27, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(80, 27, '_menu_item_xfn', 'top'),
(81, 27, '_menu_item_url', ''),
(83, 12, '_wp_page_template', 'default'),
(84, 16, '_wp_page_template', 'default'),
(85, 18, '_wp_page_template', 'default'),
(86, 20, '_wp_page_template', 'default'),
(87, 14, '_wp_page_template', 'default'),
(88, 10, '_wp_page_template', 'default'),
(89, 30, '_menu_item_type', 'post_type'),
(90, 30, '_menu_item_menu_item_parent', '0'),
(91, 30, '_menu_item_object_id', '20'),
(92, 30, '_menu_item_object', 'page'),
(93, 30, '_menu_item_target', ''),
(94, 30, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(95, 30, '_menu_item_xfn', 'bottom'),
(96, 30, '_menu_item_url', ''),
(98, 31, '_menu_item_type', 'post_type'),
(99, 31, '_menu_item_menu_item_parent', '0'),
(100, 31, '_menu_item_object_id', '18'),
(101, 31, '_menu_item_object', 'page'),
(102, 31, '_menu_item_target', ''),
(103, 31, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(104, 31, '_menu_item_xfn', 'bottom'),
(105, 31, '_menu_item_url', ''),
(107, 32, '_menu_item_type', 'post_type'),
(108, 32, '_menu_item_menu_item_parent', '0'),
(109, 32, '_menu_item_object_id', '16'),
(110, 32, '_menu_item_object', 'page'),
(111, 32, '_menu_item_target', ''),
(112, 32, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(113, 32, '_menu_item_xfn', 'bottom'),
(114, 32, '_menu_item_url', ''),
(116, 33, '_menu_item_type', 'post_type'),
(117, 33, '_menu_item_menu_item_parent', '0'),
(118, 33, '_menu_item_object_id', '14'),
(119, 33, '_menu_item_object', 'page'),
(120, 33, '_menu_item_target', ''),
(121, 33, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(122, 33, '_menu_item_xfn', 'bottom'),
(123, 33, '_menu_item_url', ''),
(125, 34, '_menu_item_type', 'post_type'),
(126, 34, '_menu_item_menu_item_parent', '0'),
(127, 34, '_menu_item_object_id', '12'),
(128, 34, '_menu_item_object', 'page'),
(129, 34, '_menu_item_target', ''),
(130, 34, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(131, 34, '_menu_item_xfn', 'bottom'),
(132, 34, '_menu_item_url', ''),
(134, 35, '_menu_item_type', 'post_type'),
(135, 35, '_menu_item_menu_item_parent', '0'),
(136, 35, '_menu_item_object_id', '10'),
(137, 35, '_menu_item_object', 'page'),
(138, 35, '_menu_item_target', ''),
(139, 35, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(140, 35, '_menu_item_xfn', 'bottom'),
(141, 35, '_menu_item_url', ''),
(143, 36, '_edit_last', '1'),
(144, 36, '_edit_lock', '1523885020:1'),
(145, 36, '_wp_page_template', 'default'),
(146, 38, '_menu_item_type', 'post_type'),
(147, 38, '_menu_item_menu_item_parent', '0'),
(148, 38, '_menu_item_object_id', '36'),
(149, 38, '_menu_item_object', 'page'),
(150, 38, '_menu_item_target', ''),
(151, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 38, '_menu_item_xfn', ''),
(153, 38, '_menu_item_url', ''),
(154, 38, '_menu_item_orphaned', '1523885170'),
(156, 36, '_wp_trash_meta_status', 'publish'),
(157, 36, '_wp_trash_meta_time', '1523885783'),
(158, 36, '_wp_desired_post_slug', 'twitter'),
(159, 41, '_edit_last', '1'),
(160, 41, '_wp_page_template', 'default'),
(161, 41, '_edit_lock', '1523887164:1'),
(162, 41, '_wp_trash_meta_status', 'publish'),
(163, 41, '_wp_trash_meta_time', '1523887313'),
(164, 41, '_wp_desired_post_slug', 'twitter'),
(165, 1, '_edit_lock', '1523887202:1'),
(166, 45, '_menu_item_type', 'custom'),
(167, 45, '_menu_item_menu_item_parent', '0'),
(168, 45, '_menu_item_object_id', '45'),
(169, 45, '_menu_item_object', 'custom'),
(170, 45, '_menu_item_target', '_blank'),
(171, 45, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(172, 45, '_menu_item_xfn', 'bottom'),
(173, 45, '_menu_item_url', 'https://www.twitter.com'),
(175, 46, '_menu_item_type', 'custom'),
(176, 46, '_menu_item_menu_item_parent', '0'),
(177, 46, '_menu_item_object_id', '46'),
(178, 46, '_menu_item_object', 'custom'),
(179, 46, '_menu_item_target', '_blank'),
(180, 46, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(181, 46, '_menu_item_xfn', 'bottom'),
(182, 46, '_menu_item_url', 'https://www.facebook.com'),
(184, 47, '_menu_item_type', 'custom'),
(185, 47, '_menu_item_menu_item_parent', '0'),
(186, 47, '_menu_item_object_id', '47'),
(187, 47, '_menu_item_object', 'custom'),
(188, 47, '_menu_item_target', '_blank'),
(189, 47, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(190, 47, '_menu_item_xfn', 'bottom'),
(191, 47, '_menu_item_url', 'https://www.instagram.com'),
(193, 48, '_menu_item_type', 'custom'),
(194, 48, '_menu_item_menu_item_parent', '0'),
(195, 48, '_menu_item_object_id', '48'),
(196, 48, '_menu_item_object', 'custom'),
(197, 48, '_menu_item_target', '_blank'),
(198, 48, '_menu_item_classes', 'a:1:{i:0;s:16:\"footer-list-item\";}'),
(199, 48, '_menu_item_xfn', 'bottom'),
(200, 48, '_menu_item_url', 'https://www.youtube.com/'),
(202, 49, '_edit_last', '1'),
(203, 49, '_edit_lock', '1523890010:1'),
(204, 49, '_wp_page_template', 'default'),
(205, 49, '_wp_trash_meta_status', 'publish'),
(206, 49, '_wp_trash_meta_time', '1523890618'),
(207, 49, '_wp_desired_post_slug', 'latest-products'),
(208, 1, '_wp_trash_meta_status', 'publish'),
(209, 1, '_wp_trash_meta_time', '1523891102'),
(210, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(211, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(212, 55, '_edit_last', '1'),
(213, 55, '_edit_lock', '1523893559:1'),
(215, 57, '_edit_last', '1'),
(216, 57, '_edit_lock', '1523893606:1'),
(219, 60, '_edit_last', '1'),
(220, 60, '_edit_lock', '1523893624:1'),
(222, 62, '_edit_last', '1'),
(224, 62, '_edit_lock', '1523893647:1'),
(228, 64, '_edit_last', '1'),
(229, 64, '_edit_lock', '1523893674:1'),
(231, 66, '_edit_last', '1'),
(232, 66, '_edit_lock', '1523893824:1'),
(240, 74, '_edit_last', '1'),
(241, 74, 'field_5ad4c320be601', 'a:14:{s:3:\"key\";s:19:\"field_5ad4c320be601\";s:5:\"label\";s:12:\"иконка\";s:4:\"name\";s:12:\"simple_icons\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Введите тэг с классом иконки (Simple-Line-Icons)\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:43:\"<i class=\"service-icon icon-chemistry\"></i>\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(243, 74, 'position', 'normal'),
(244, 74, 'layout', 'no_box'),
(245, 74, 'hide_on_screen', ''),
(246, 74, '_edit_lock', '1523901993:1'),
(255, 55, 'simple_icons', '<i class=\"service-icon icon-chemistry\"></i>'),
(256, 55, '_simple_icons', 'field_5ad4c320be601'),
(258, 75, 'simple_icons', '<i class=\"service-icon icon-screen-tablet\"></i>'),
(259, 75, '_simple_icons', 'field_5ad4c320be601'),
(260, 57, 'simple_icons', '<i class=\"service-icon icon-screen-tablet\"></i>'),
(261, 57, '_simple_icons', 'field_5ad4c320be601'),
(263, 76, 'simple_icons', '<i class=\"service-icon icon-badge\"></i>'),
(264, 76, '_simple_icons', 'field_5ad4c320be601'),
(265, 60, 'simple_icons', '<i class=\"service-icon icon-badge\"></i>'),
(266, 60, '_simple_icons', 'field_5ad4c320be601'),
(268, 77, 'simple_icons', '<i class=\"service-icon icon-notebook\"></i>'),
(269, 77, '_simple_icons', 'field_5ad4c320be601'),
(270, 62, 'simple_icons', '<i class=\"service-icon icon-notebook\"></i>'),
(271, 62, '_simple_icons', 'field_5ad4c320be601'),
(273, 78, 'simple_icons', '<i class=\"service-icon icon-speedometer\"></i>'),
(274, 78, '_simple_icons', 'field_5ad4c320be601'),
(275, 64, 'simple_icons', '<i class=\"service-icon icon-speedometer\"></i>'),
(276, 64, '_simple_icons', 'field_5ad4c320be601'),
(278, 79, 'simple_icons', '<i class=\"service-icon icon-badge\"></i>'),
(279, 79, '_simple_icons', 'field_5ad4c320be601'),
(280, 66, 'simple_icons', '<i class=\"service-icon icon-badge\"></i>'),
(281, 66, '_simple_icons', 'field_5ad4c320be601'),
(284, 74, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(285, 80, '_edit_last', '1'),
(286, 80, '_edit_lock', '1523897939:1'),
(289, 84, '_edit_last', '1'),
(290, 84, '_edit_lock', '1523897618:1'),
(292, 86, '_edit_last', '1'),
(293, 86, '_edit_lock', '1523894887:1'),
(295, 88, '_edit_last', '1'),
(296, 88, '_edit_lock', '1523897650:1'),
(298, 91, '_edit_last', '1'),
(299, 91, '_edit_lock', '1523897920:1'),
(301, 93, '_edit_last', '1'),
(302, 93, '_edit_lock', '1523898329:1'),
(304, 95, '_edit_last', '1'),
(305, 95, '_edit_lock', '1523898161:1'),
(308, 99, '_edit_last', '1'),
(309, 99, '_edit_lock', '1523898146:1'),
(312, 102, '_edit_last', '1'),
(313, 102, 'field_5ad4cf55fef97', 'a:14:{s:3:\"key\";s:19:\"field_5ad4cf55fef97\";s:5:\"label\";s:31:\"вид деятельности\";s:4:\"name\";s:8:\"activity\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"введите вид деятельности\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:10:\"Management\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(315, 102, 'position', 'normal'),
(316, 102, 'layout', 'no_box'),
(317, 102, 'hide_on_screen', ''),
(318, 102, '_edit_lock', '1523896513:1'),
(319, 102, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(321, 103, 'activity', 'Developmeny'),
(322, 103, '_activity', 'field_5ad4cf55fef97'),
(323, 91, 'activity', 'Developmeny'),
(324, 91, '_activity', 'field_5ad4cf55fef97'),
(326, 104, 'activity', 'Developmeny'),
(327, 104, '_activity', 'field_5ad4cf55fef97'),
(328, 93, 'activity', 'Developmeny'),
(329, 93, '_activity', 'field_5ad4cf55fef97'),
(331, 105, 'activity', 'Design'),
(332, 105, '_activity', 'field_5ad4cf55fef97'),
(333, 88, 'activity', 'Design'),
(334, 88, '_activity', 'field_5ad4cf55fef97'),
(336, 106, 'activity', 'Design'),
(337, 106, '_activity', 'field_5ad4cf55fef97'),
(338, 95, 'activity', 'Design'),
(339, 95, '_activity', 'field_5ad4cf55fef97'),
(341, 99, 'activity', 'Management'),
(342, 99, '_activity', 'field_5ad4cf55fef97'),
(344, 84, 'activity', 'Management'),
(345, 84, '_activity', 'field_5ad4cf55fef97'),
(346, 107, '_wp_attached_file', '2018/04/01.jpg'),
(347, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:970;s:6:\"height\";i:647;s:4:\"file\";s:14:\"2018/04/01.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 84, '_thumbnail_id', '107'),
(350, 108, '_wp_attached_file', '2018/04/02.jpg'),
(351, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:970;s:6:\"height\";i:647;s:4:\"file\";s:14:\"2018/04/02.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 109, '_wp_attached_file', '2018/04/03.jpg'),
(353, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:970;s:6:\"height\";i:647;s:4:\"file\";s:14:\"2018/04/03.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"03-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 88, '_thumbnail_id', '109'),
(356, 91, '_thumbnail_id', '108'),
(358, 110, '_edit_last', '1'),
(359, 110, '_edit_lock', '1523904886:1'),
(361, 111, 'activity', 'Management'),
(362, 111, '_activity', 'field_5ad4cf55fef97'),
(363, 110, 'activity', 'Management'),
(364, 110, '_activity', 'field_5ad4cf55fef97'),
(365, 99, '_thumbnail_id', '109'),
(367, 95, '_thumbnail_id', '107'),
(369, 93, '_thumbnail_id', '108'),
(371, 112, '_edit_last', '1'),
(372, 112, '_edit_lock', '1523898444:1'),
(373, 113, '_wp_attached_file', '2018/04/01.png'),
(374, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:77;s:4:\"file\";s:14:\"2018/04/01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"01-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 114, '_wp_attached_file', '2018/04/02.png'),
(376, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:77;s:4:\"file\";s:14:\"2018/04/02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"02-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 115, '_wp_attached_file', '2018/04/03.png'),
(378, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:77;s:4:\"file\";s:14:\"2018/04/03.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"03-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 116, '_wp_attached_file', '2018/04/04.png'),
(380, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:77;s:4:\"file\";s:14:\"2018/04/04.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"04-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 117, '_wp_attached_file', '2018/04/05.png'),
(382, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:77;s:4:\"file\";s:14:\"2018/04/05.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"05-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 118, '_wp_attached_file', '2018/04/06.png'),
(384, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:203;s:6:\"height\";i:77;s:4:\"file\";s:14:\"2018/04/06.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"06-150x77.png\";s:5:\"width\";i:150;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 112, '_thumbnail_id', '113'),
(387, 120, '_edit_last', '1'),
(388, 120, '_edit_lock', '1523898433:1'),
(389, 120, '_thumbnail_id', '114'),
(392, 122, '_edit_last', '1'),
(393, 122, '_edit_lock', '1523898471:1'),
(394, 122, '_thumbnail_id', '115'),
(396, 124, '_edit_last', '1'),
(397, 124, '_edit_lock', '1523898493:1'),
(398, 124, '_thumbnail_id', '116'),
(400, 126, '_edit_last', '1'),
(401, 126, '_edit_lock', '1523898509:1'),
(402, 126, '_thumbnail_id', '117'),
(404, 128, '_edit_last', '1'),
(405, 128, '_edit_lock', '1523898544:1'),
(406, 128, '_thumbnail_id', '118'),
(408, 130, '_edit_last', '1'),
(409, 130, '_edit_lock', '1523899892:1'),
(411, 132, '_edit_last', '1'),
(412, 132, '_edit_lock', '1523900005:1'),
(414, 134, '_edit_last', '1'),
(415, 134, 'field_5ad4dd460484c', 'a:14:{s:3:\"key\";s:19:\"field_5ad4dd460484c\";s:5:\"label\";s:6:\"text-1\";s:4:\"name\";s:6:\"text-1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"заполните тестом\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(416, 134, 'field_5ad4dd6c0484d', 'a:14:{s:3:\"key\";s:19:\"field_5ad4dd6c0484d\";s:5:\"label\";s:6:\"text-2\";s:4:\"name\";s:6:\"text-2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"заполните тестом\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(417, 134, 'field_5ad4dd8b0484e', 'a:14:{s:3:\"key\";s:19:\"field_5ad4dd8b0484e\";s:5:\"label\";s:10:\"автор\";s:4:\"name\";s:5:\"avtor\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"введите имя автора\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(418, 134, 'field_5ad4ddc20484f', 'a:14:{s:3:\"key\";s:19:\"field_5ad4ddc20484f\";s:5:\"label\";s:24:\"издательство\";s:4:\"name\";s:10:\"publishing\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:56:\"введите название издательства\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(420, 134, 'position', 'normal'),
(421, 134, 'layout', 'no_box'),
(422, 134, 'hide_on_screen', ''),
(423, 134, '_edit_lock', '1523900454:1'),
(425, 135, 'text-1', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut                                     laboret dolore magna aliqua. Ut enim minim veniam exercitation laboris ut siad                                     consequat siad minim enum esqudiat dolore.'),
(426, 135, '_text-1', 'field_5ad4dd460484c'),
(427, 135, 'text-2', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut                                     laboret tempor incididunt dolore magna consequat siad minim aliqua.'),
(428, 135, '_text-2', 'field_5ad4dd6c0484d'),
(429, 135, 'avtor', 'Alex Clarson'),
(430, 135, '_avtor', 'field_5ad4dd8b0484e'),
(431, 135, 'publishing', 'Metronic Customer'),
(432, 135, '_publishing', 'field_5ad4ddc20484f'),
(433, 132, 'text-1', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut                                     laboret dolore magna aliqua. Ut enim minim veniam exercitation laboris ut siad                                     consequat siad minim enum esqudiat dolore.'),
(434, 132, '_text-1', 'field_5ad4dd460484c'),
(435, 132, 'text-2', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut                                     laboret tempor incididunt dolore magna consequat siad minim aliqua.'),
(436, 132, '_text-2', 'field_5ad4dd6c0484d'),
(437, 132, 'avtor', 'Alex Clarson'),
(438, 132, '_avtor', 'field_5ad4dd8b0484e'),
(439, 132, 'publishing', 'Metronic Customer'),
(440, 132, '_publishing', 'field_5ad4ddc20484f'),
(442, 136, 'text-1', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu                                     fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa                                     qui officia deserunt mollit anim id est laborum.'),
(443, 136, '_text-1', 'field_5ad4dd460484c'),
(444, 136, 'text-2', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip                                     ex ea commodo consequat.'),
(445, 136, '_text-2', 'field_5ad4dd6c0484d'),
(446, 136, 'avtor', 'Joh Milner'),
(447, 136, '_avtor', 'field_5ad4dd8b0484e'),
(448, 136, 'publishing', 'Metronic Customer'),
(449, 136, '_publishing', 'field_5ad4ddc20484f'),
(450, 130, 'text-1', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu                                     fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa                                     qui officia deserunt mollit anim id est laborum.'),
(451, 130, '_text-1', 'field_5ad4dd460484c'),
(452, 130, 'text-2', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip                                     ex ea commodo consequat.'),
(453, 130, '_text-2', 'field_5ad4dd6c0484d'),
(454, 130, 'avtor', 'Joh Milner'),
(455, 130, '_avtor', 'field_5ad4dd8b0484e'),
(456, 130, 'publishing', 'Metronic Customer'),
(457, 130, '_publishing', 'field_5ad4ddc20484f'),
(458, 134, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(459, 137, '_edit_last', '1'),
(460, 137, '_edit_lock', '1523902093:1'),
(462, 139, '_edit_last', '1'),
(463, 139, '_edit_lock', '1523902504:1'),
(466, 141, '_edit_last', '1'),
(467, 141, '_edit_lock', '1523902047:1'),
(469, 143, '_edit_last', '1'),
(470, 143, 'field_5ad4e27b8a9d4', 'a:15:{s:3:\"key\";s:19:\"field_5ad4e27b8a9d4\";s:5:\"label\";s:8:\"цена\";s:4:\"name\";s:5:\"price\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:23:\"введите цену\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(471, 143, 'field_5ad4e2ca8a9d5', 'a:14:{s:3:\"key\";s:19:\"field_5ad4e2ca8a9d5\";s:5:\"label\";s:12:\"бонус-1\";s:4:\"name\";s:7:\"bonus-1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"введите параметр бонуса\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(472, 143, 'field_5ad4e33a8a9d6', 'a:14:{s:3:\"key\";s:19:\"field_5ad4e33a8a9d6\";s:5:\"label\";s:12:\"бонус-2\";s:4:\"name\";s:7:\"bonus-2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"введите параметр бонуса\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(473, 143, 'field_5ad4e3588a9d7', 'a:14:{s:3:\"key\";s:19:\"field_5ad4e3588a9d7\";s:5:\"label\";s:12:\"бонус-3\";s:4:\"name\";s:7:\"bonus-3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"введите параметр бонуса\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(475, 143, 'position', 'normal'),
(476, 143, 'layout', 'no_box'),
(477, 143, 'hide_on_screen', ''),
(478, 143, '_edit_lock', '1523902013:1'),
(480, 144, 'price', '49'),
(481, 144, '_price', 'field_5ad4e27b8a9d4'),
(482, 144, 'bonus-1', 'Basic Features'),
(483, 144, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(484, 144, 'bonus-2', 'Up to 5 products'),
(485, 144, '_bonus-2', 'field_5ad4e33a8a9d6'),
(486, 144, 'bonus-3', '50 Users Panels'),
(487, 144, '_bonus-3', 'field_5ad4e3588a9d7'),
(488, 137, 'price', '49'),
(489, 137, '_price', 'field_5ad4e27b8a9d4'),
(490, 137, 'bonus-1', 'Basic Features'),
(491, 137, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(492, 137, 'bonus-2', 'Up to 5 products'),
(493, 137, '_bonus-2', 'field_5ad4e33a8a9d6'),
(494, 137, 'bonus-3', '50 Users Panels'),
(495, 137, '_bonus-3', 'field_5ad4e3588a9d7'),
(497, 145, 'price', '149'),
(498, 145, '_price', 'field_5ad4e27b8a9d4'),
(499, 145, 'bonus-1', 'Basic Features'),
(500, 145, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(501, 145, 'bonus-2', 'Up to 100 products'),
(502, 145, '_bonus-2', 'field_5ad4e33a8a9d6'),
(503, 145, 'bonus-3', '100 Users Panels'),
(504, 145, '_bonus-3', 'field_5ad4e3588a9d7'),
(505, 139, 'price', '149'),
(506, 139, '_price', 'field_5ad4e27b8a9d4'),
(507, 139, 'bonus-1', 'Basic Features'),
(508, 139, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(509, 139, 'bonus-2', 'Up to 100 products'),
(510, 139, '_bonus-2', 'field_5ad4e33a8a9d6'),
(511, 139, 'bonus-3', '100 Users Panels'),
(512, 139, '_bonus-3', 'field_5ad4e3588a9d7'),
(514, 146, 'price', '249'),
(515, 146, '_price', 'field_5ad4e27b8a9d4'),
(516, 146, 'bonus-1', 'Extended Features'),
(517, 146, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(518, 146, 'bonus-2', 'Unlimited products'),
(519, 146, '_bonus-2', 'field_5ad4e33a8a9d6'),
(520, 146, 'bonus-3', 'Unlimited Users Panels'),
(521, 146, '_bonus-3', 'field_5ad4e3588a9d7'),
(522, 141, 'price', '249'),
(523, 141, '_price', 'field_5ad4e27b8a9d4'),
(524, 141, 'bonus-1', 'Extended Features'),
(525, 141, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(526, 141, 'bonus-2', 'Unlimited products'),
(527, 141, '_bonus-2', 'field_5ad4e33a8a9d6'),
(528, 141, 'bonus-3', 'Unlimited Users Panels'),
(529, 141, '_bonus-3', 'field_5ad4e3588a9d7'),
(530, 143, 'field_5ad4e683b0aae', 'a:14:{s:3:\"key\";s:19:\"field_5ad4e683b0aae\";s:5:\"label\";s:12:\"иконка\";s:4:\"name\";s:4:\"icon\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Введите тэг с классом иконки (Simple-Line-Icons)\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:39:\"<i class=\"pricing-icon icon-badge\"></i>\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(532, 143, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(534, 147, 'price', '249'),
(535, 147, '_price', 'field_5ad4e27b8a9d4'),
(536, 147, 'bonus-1', 'Extended Features'),
(537, 147, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(538, 147, 'bonus-2', 'Unlimited products'),
(539, 147, '_bonus-2', 'field_5ad4e33a8a9d6'),
(540, 147, 'bonus-3', 'Unlimited Users Panels'),
(541, 147, '_bonus-3', 'field_5ad4e3588a9d7'),
(542, 147, 'icon', '<i class=\"pricing-icon icon-shield\"></i>'),
(543, 147, '_icon', 'field_5ad4e683b0aae'),
(544, 141, 'icon', '<i class=\"pricing-icon icon-shield\"></i>'),
(545, 141, '_icon', 'field_5ad4e683b0aae'),
(547, 148, 'price', '49'),
(548, 148, '_price', 'field_5ad4e27b8a9d4'),
(549, 148, 'bonus-1', 'Basic Features'),
(550, 148, '_bonus-1', 'field_5ad4e2ca8a9d5'),
(551, 148, 'bonus-2', 'Up to 5 products'),
(552, 148, '_bonus-2', 'field_5ad4e33a8a9d6'),
(553, 148, 'bonus-3', '50 Users Panels'),
(554, 148, '_bonus-3', 'field_5ad4e3588a9d7'),
(555, 148, 'icon', '<i class=\"pricing-icon icon-chemistry\"></i>'),
(556, 148, '_icon', 'field_5ad4e683b0aae'),
(557, 137, 'icon', '<i class=\"pricing-icon icon-chemistry\"></i>'),
(558, 137, '_icon', 'field_5ad4e683b0aae'),
(560, 139, 'icon', '<i class=\"pricing-icon icon-badge\"></i>'),
(561, 139, '_icon', 'field_5ad4e683b0aae'),
(562, 149, '_edit_last', '1'),
(563, 149, '_edit_lock', '1523904619:1'),
(564, 150, '_wp_attached_file', '2018/04/01-1.jpg'),
(565, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:970;s:6:\"height\";i:970;s:4:\"file\";s:16:\"2018/04/01-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"01-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(566, 149, '_thumbnail_id', '150'),
(570, 153, '_edit_last', '1'),
(571, 153, '_edit_lock', '1523906133:1'),
(572, 154, '_wp_attached_file', '2018/04/01-2.jpg'),
(573, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:400;s:4:\"file\";s:16:\"2018/04/01-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-2-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"01-2-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(574, 155, '_wp_attached_file', '2018/04/02-1.jpg'),
(575, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:400;s:4:\"file\";s:16:\"2018/04/02-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"02-1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(576, 156, '_wp_attached_file', '2018/04/01-3.jpg'),
(577, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:860;s:4:\"file\";s:16:\"2018/04/01-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-3-269x300.jpg\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"01-3-768x858.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:858;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(578, 157, '_wp_attached_file', '2018/04/02-2.jpg'),
(579, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:860;s:4:\"file\";s:16:\"2018/04/02-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-2-269x300.jpg\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"02-2-768x858.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:858;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(580, 158, '_wp_attached_file', '2018/04/03-1.jpg'),
(581, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:860;s:4:\"file\";s:16:\"2018/04/03-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"03-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"03-1-269x300.jpg\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"03-1-768x858.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:858;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(582, 159, '_wp_attached_file', '2018/04/01-4.jpg'),
(583, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:380;s:4:\"file\";s:16:\"2018/04/01-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-4-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 160, '_wp_attached_file', '2018/04/01-5.jpg'),
(585, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:397;s:6:\"height\";i:400;s:4:\"file\";s:16:\"2018/04/01-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-5-298x300.jpg\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 161, '_wp_attached_file', '2018/04/01-6.jpg'),
(587, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:397;s:6:\"height\";i:300;s:4:\"file\";s:16:\"2018/04/01-6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-6-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 162, '_wp_attached_file', '2018/04/02-3.jpg'),
(589, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:397;s:6:\"height\";i:300;s:4:\"file\";s:16:\"2018/04/02-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-3-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 163, '_wp_attached_file', '2018/04/03-2.jpg'),
(591, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:397;s:6:\"height\";i:300;s:4:\"file\";s:16:\"2018/04/03-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"03-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"03-2-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 153, '_thumbnail_id', '159'),
(594, 165, '_edit_last', '1'),
(595, 165, 'field_5ad4f38afcbc5', 'a:14:{s:3:\"key\";s:19:\"field_5ad4f38afcbc5\";s:5:\"label\";s:12:\"текст-1\";s:4:\"name\";s:6:\"text-1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"введите текст\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(596, 165, 'field_5ad4f3bffcbc6', 'a:14:{s:3:\"key\";s:19:\"field_5ad4f3bffcbc6\";s:5:\"label\";s:12:\"текст-2\";s:4:\"name\";s:6:\"text-2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"введите текст\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(597, 165, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(598, 165, 'position', 'normal'),
(599, 165, 'layout', 'no_box'),
(600, 165, 'hide_on_screen', ''),
(601, 165, '_edit_lock', '1523905473:1'),
(603, 166, 'text-1', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua. Ut enimet minim veniam magna aliqua. Ut enim minim veniam exercitation laboris ut siad consequat siad minim enum esqudiat dolore.</p>'),
(604, 166, '_text-1', 'field_5ad4f38afcbc5'),
(605, 166, 'text-2', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret tempor incididunt dolore magna consequat siad minim aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua. Ut enim minim veniam exercitation laboris ut siad consequat siad minim enum esqudiat dolore.</p>'),
(606, 166, '_text-2', 'field_5ad4f3bffcbc6'),
(607, 153, 'text-1', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua. Ut enimet minim veniam magna aliqua. Ut enim minim veniam exercitation laboris ut siad consequat siad minim enum esqudiat dolore.</p>'),
(608, 153, '_text-1', 'field_5ad4f38afcbc5'),
(609, 153, 'text-2', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret tempor incididunt dolore magna consequat siad minim aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua. Ut enim minim veniam exercitation laboris ut siad consequat siad minim enum esqudiat dolore.</p>'),
(610, 153, '_text-2', 'field_5ad4f3bffcbc6'),
(612, 167, '_edit_last', '1'),
(613, 167, '_edit_lock', '1523906173:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(615, 169, '_edit_last', '1'),
(616, 169, '_edit_lock', '1523906204:1'),
(618, 171, '_edit_last', '1'),
(619, 171, '_edit_lock', '1523906343:1'),
(621, 173, '_edit_last', '1'),
(622, 173, '_edit_lock', '1523906713:1'),
(625, 175, '_edit_last', '1'),
(626, 175, '_edit_lock', '1523906892:1'),
(627, 175, '_thumbnail_id', '156'),
(629, 178, '_edit_last', '1'),
(630, 178, 'field_5ad4f97beeb45', 'a:14:{s:3:\"key\";s:19:\"field_5ad4f97beeb45\";s:5:\"label\";s:18:\"должность\";s:4:\"name\";s:8:\"position\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"введите должность\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(631, 178, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(632, 178, 'position', 'normal'),
(633, 178, 'layout', 'no_box'),
(634, 178, 'hide_on_screen', ''),
(635, 178, '_edit_lock', '1523906868:1'),
(637, 179, 'position', 'Project Manager'),
(638, 179, '_position', 'field_5ad4f97beeb45'),
(639, 175, 'position', 'Project Manager'),
(640, 175, '_position', 'field_5ad4f97beeb45'),
(641, 180, '_edit_last', '1'),
(642, 180, '_edit_lock', '1523906944:1'),
(643, 180, '_thumbnail_id', '157'),
(645, 181, 'position', 'Lead Developer'),
(646, 181, '_position', 'field_5ad4f97beeb45'),
(647, 180, 'position', 'Lead Developer'),
(648, 180, '_position', 'field_5ad4f97beeb45'),
(649, 182, '_edit_last', '1'),
(650, 182, '_edit_lock', '1523906999:1'),
(651, 182, '_thumbnail_id', '158'),
(653, 183, 'position', 'Designer'),
(654, 183, '_position', 'field_5ad4f97beeb45'),
(655, 182, 'position', 'Designer'),
(656, 182, '_position', 'field_5ad4f97beeb45'),
(657, 184, '_edit_last', '1'),
(658, 184, '_edit_lock', '1523982411:1'),
(660, 186, '_edit_last', '1'),
(661, 186, 'field_5ad6203233984', 'a:14:{s:3:\"key\";s:19:\"field_5ad6203233984\";s:5:\"label\";s:12:\"адресс\";s:4:\"name\";s:6:\"adress\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите адресс\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(662, 186, 'field_5ad6205633985', 'a:15:{s:3:\"key\";s:19:\"field_5ad6205633985\";s:5:\"label\";s:14:\"телефон\";s:4:\"name\";s:7:\"telefon\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:29:\"введите телефон\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(663, 186, 'field_5ad6207c33986', 'a:14:{s:3:\"key\";s:19:\"field_5ad6207c33986\";s:5:\"label\";s:5:\"email\";s:4:\"name\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"введите почту\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(664, 186, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"16\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(665, 186, 'position', 'normal'),
(666, 186, 'layout', 'no_box'),
(667, 186, 'hide_on_screen', ''),
(668, 186, '_edit_lock', '1523982378:1'),
(670, 187, 'adress', 'Head Office'),
(671, 187, '_adress', 'field_5ad6203233984'),
(672, 187, 'telefon', '101234567890'),
(673, 187, '_telefon', 'field_5ad6205633985'),
(674, 187, 'email', 'hq@acidus.com'),
(675, 187, '_email', 'field_5ad6207c33986'),
(676, 184, 'adress', 'Head Office'),
(677, 184, '_adress', 'field_5ad6203233984'),
(678, 184, 'telefon', '101234567890'),
(679, 184, '_telefon', 'field_5ad6205633985'),
(680, 184, 'email', 'hq@acidus.com'),
(681, 184, '_email', 'field_5ad6207c33986'),
(682, 188, '_edit_last', '1'),
(683, 188, '_edit_lock', '1523982469:1'),
(685, 189, 'adress', 'Operation'),
(686, 189, '_adress', 'field_5ad6203233984'),
(687, 189, 'telefon', '447734567890'),
(688, 189, '_telefon', 'field_5ad6205633985'),
(689, 189, 'email', 'operation@acidus.com'),
(690, 189, '_email', 'field_5ad6207c33986'),
(691, 188, 'adress', 'Operation'),
(692, 188, '_adress', 'field_5ad6203233984'),
(693, 188, 'telefon', '447734567890'),
(694, 188, '_telefon', 'field_5ad6205633985'),
(695, 188, 'email', 'operation@acidus.com'),
(696, 188, '_email', 'field_5ad6207c33986'),
(697, 190, '_edit_last', '1'),
(698, 190, '_edit_lock', '1523982777:1'),
(700, 191, 'adress', 'Finance'),
(701, 191, '_adress', 'field_5ad6203233984'),
(702, 191, 'telefon', '500124567890'),
(703, 191, '_telefon', 'field_5ad6205633985'),
(704, 191, 'email', 'finance@acidus.com'),
(705, 191, '_email', 'field_5ad6207c33986'),
(706, 190, 'adress', 'Finance'),
(707, 190, '_adress', 'field_5ad6203233984'),
(708, 190, 'telefon', '500124567890'),
(709, 190, '_telefon', 'field_5ad6205633985'),
(710, 190, 'email', 'finance@acidus.com'),
(711, 190, '_email', 'field_5ad6207c33986');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-16 11:43:16', '2018-04-16 08:43:16', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-04-16 18:05:02', '2018-04-16 15:05:02', '', 0, 'http://wordpress.itstep/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-16 11:43:16', '2018-04-16 08:43:16', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://wordpress.itstep/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-16 13:14:49', '2018-04-16 10:14:49', '', 0, 'http://wordpress.itstep/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-16 11:43:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 11:43:27', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-16 12:25:23', '2018-04-16 09:25:23', '', 'ico_pochemu_4b', '', 'inherit', 'open', 'closed', '', 'ico_pochemu_4b', '', '', '2018-04-16 12:25:23', '2018-04-16 09:25:23', '', 0, 'http://wordpress.itstep/wp-content/uploads/2018/04/ico_pochemu_4b.png', 0, 'attachment', 'image/png', 0),
(5, 1, '2018-04-16 12:25:31', '2018-04-16 09:25:31', 'http://wordpress.itstep/wp-content/uploads/2018/04/cropped-ico_pochemu_4b.png', 'cropped-ico_pochemu_4b.png', '', 'inherit', 'open', 'closed', '', 'cropped-ico_pochemu_4b-png', '', '', '2018-04-16 12:25:31', '2018-04-16 09:25:31', '', 0, 'http://wordpress.itstep/wp-content/uploads/2018/04/cropped-ico_pochemu_4b.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-04-16 12:25:33', '2018-04-16 09:25:33', '{\n    \"site_icon\": {\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 09:25:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '19556498-37c1-441c-9377-4116c70b0c52', '', '', '2018-04-16 12:25:33', '2018-04-16 09:25:33', '', 0, 'http://wordpress.itstep/2018/04/16/19556498-37c1-441c-9377-4116c70b0c52/', 0, 'customize_changeset', '', 0),
(7, 1, '2018-04-16 13:07:14', '2018-04-16 10:07:14', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-04-16 13:07:57', '2018-04-16 10:07:57', '', 0, 'http://wordpress.itstep/wp-content/uploads/2018/04/logo.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2018-04-16 13:08:21', '0000-00-00 00:00:00', '{\n    \"asentus::custom_logo\": {\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 10:08:21\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5d7ca06b-b793-42de-9427-de8957ae4c4a', '', '', '2018-04-16 13:08:21', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2018-04-16 13:14:49', '2018-04-16 10:14:49', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://wordpress.itstep/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-16 13:14:49', '2018-04-16 10:14:49', '', 2, 'http://wordpress.itstep/2018/04/16/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-16 13:14:56', '2018-04-16 10:14:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-16 14:23:27', '2018-04-16 11:23:27', '', 0, 'http://wordpress.itstep/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-16 13:14:56', '2018-04-16 10:14:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-16 13:14:56', '2018-04-16 10:14:56', '', 10, 'http://wordpress.itstep/2018/04/16/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-16 13:15:18', '2018-04-16 10:15:18', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2018-04-16 14:23:32', '2018-04-16 11:23:32', '', 0, 'http://wordpress.itstep/?page_id=12', 1, 'page', '', 0),
(13, 1, '2018-04-16 13:15:18', '2018-04-16 10:15:18', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-16 13:15:18', '2018-04-16 10:15:18', '', 12, 'http://wordpress.itstep/2018/04/16/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-16 13:15:23', '2018-04-16 10:15:23', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-04-16 14:23:43', '2018-04-16 11:23:43', '', 0, 'http://wordpress.itstep/?page_id=14', 2, 'page', '', 0),
(15, 1, '2018-04-16 13:15:23', '2018-04-16 10:15:23', '', 'About', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-04-16 13:15:23', '2018-04-16 10:15:23', '', 14, 'http://wordpress.itstep/2018/04/16/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-04-16 13:15:32', '2018-04-16 10:15:32', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2018-04-16 14:23:53', '2018-04-16 11:23:53', '', 0, 'http://wordpress.itstep/?page_id=16', 3, 'page', '', 0),
(17, 1, '2018-04-16 13:15:32', '2018-04-16 10:15:32', '', 'Products', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-16 13:15:32', '2018-04-16 10:15:32', '', 16, 'http://wordpress.itstep/2018/04/16/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-16 13:15:41', '2018-04-16 10:15:41', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2018-04-16 14:24:01', '2018-04-16 11:24:01', '', 0, 'http://wordpress.itstep/?page_id=18', 4, 'page', '', 0),
(19, 1, '2018-04-16 13:15:41', '2018-04-16 10:15:41', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-04-16 13:15:41', '2018-04-16 10:15:41', '', 18, 'http://wordpress.itstep/2018/04/16/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-16 13:15:48', '2018-04-16 10:15:48', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-04-16 14:24:12', '2018-04-16 11:24:12', '', 0, 'http://wordpress.itstep/?page_id=20', 5, 'page', '', 0),
(21, 1, '2018-04-16 13:15:48', '2018-04-16 10:15:48', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-04-16 13:15:48', '2018-04-16 10:15:48', '', 20, 'http://wordpress.itstep/2018/04/16/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-04-16 13:25:58', '2018-04-16 10:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-04-16 16:54:20', '2018-04-16 13:54:20', '', 0, 'http://wordpress.itstep/?p=22', 6, 'nav_menu_item', '', 0),
(23, 1, '2018-04-16 13:25:58', '2018-04-16 10:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-04-16 16:54:20', '2018-04-16 13:54:20', '', 0, 'http://wordpress.itstep/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2018-04-16 13:25:58', '2018-04-16 10:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-04-16 16:54:20', '2018-04-16 13:54:20', '', 0, 'http://wordpress.itstep/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2018-04-16 13:25:58', '2018-04-16 10:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-04-16 16:54:20', '2018-04-16 13:54:20', '', 0, 'http://wordpress.itstep/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2018-04-16 13:25:58', '2018-04-16 10:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-04-16 16:54:20', '2018-04-16 13:54:20', '', 0, 'http://wordpress.itstep/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2018-04-16 13:25:58', '2018-04-16 10:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-04-16 16:54:20', '2018-04-16 13:54:20', '', 0, 'http://wordpress.itstep/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-04-16 15:45:26', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 15:45:26', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?post_type=acf&p=28', 0, 'acf', '', 0),
(29, 1, '2018-04-16 15:46:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 15:46:18', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?post_type=acf&p=29', 0, 'acf', '', 0),
(30, 1, '2018-04-16 15:55:32', '2018-04-16 12:55:32', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-04-16 16:58:50', '2018-04-16 13:58:50', '', 0, 'http://wordpress.itstep/?p=30', 6, 'nav_menu_item', '', 0),
(31, 1, '2018-04-16 15:55:32', '2018-04-16 12:55:32', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-04-16 16:58:50', '2018-04-16 13:58:50', '', 0, 'http://wordpress.itstep/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2018-04-16 15:55:32', '2018-04-16 12:55:32', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-04-16 16:58:50', '2018-04-16 13:58:50', '', 0, 'http://wordpress.itstep/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2018-04-16 15:55:32', '2018-04-16 12:55:32', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-04-16 16:58:50', '2018-04-16 13:58:50', '', 0, 'http://wordpress.itstep/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2018-04-16 15:55:32', '2018-04-16 12:55:32', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-04-16 16:58:50', '2018-04-16 13:58:50', '', 0, 'http://wordpress.itstep/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2018-04-16 15:55:32', '2018-04-16 12:55:32', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-04-16 16:58:50', '2018-04-16 13:58:50', '', 0, 'http://wordpress.itstep/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-04-16 16:25:58', '2018-04-16 13:25:58', '', 'Twitter', '', 'trash', 'closed', 'closed', '', 'twitter__trashed', '', '', '2018-04-16 16:36:23', '2018-04-16 13:36:23', '', 0, 'http://wordpress.itstep/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-04-16 16:25:58', '2018-04-16 13:25:58', '', 'Twitter', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-04-16 16:25:58', '2018-04-16 13:25:58', '', 36, 'http://wordpress.itstep/2018/04/16/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-16 16:26:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 16:26:10', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-04-16 16:35:19', '0000-00-00 00:00:00', '{\n    \"custom_css[asentus]\": {\n        \"value\": \".footer-list-item{\\n\\tcolor: #fff;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 13:35:19\"\n    },\n    \"asentus::nav_menu_locations[top_menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 13:34:19\"\n    },\n    \"asentus::nav_menu_locations[social_menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 13:34:19\"\n    },\n    \"asentus::nav_menu_locations[bottom_menu]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 13:34:19\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd9ccd8f8-69c7-4fe4-b1aa-3bc8a349e240', '', '', '2018-04-16 16:35:19', '2018-04-16 13:35:19', '', 0, 'http://wordpress.itstep/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2018-04-16 16:48:23', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 16:48:23', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?post_type=acf&p=40', 0, 'acf', '', 0),
(41, 1, '2018-04-16 17:01:31', '2018-04-16 14:01:31', '', 'Twitter', '', 'trash', 'closed', 'closed', '', 'twitter__trashed-2', '', '', '2018-04-16 17:01:53', '2018-04-16 14:01:53', '', 0, 'http://wordpress.itstep/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-04-16 17:01:31', '2018-04-16 14:01:31', '', 'Twitter', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-16 17:01:31', '2018-04-16 14:01:31', '', 41, 'http://wordpress.itstep/2018/04/16/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-16 17:02:22', '2018-04-16 14:02:22', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-04-16 17:02:22', '2018-04-16 14:02:22', '', 1, 'http://wordpress.itstep/2018/04/16/1-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2018-04-16 17:07:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 17:07:41', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?post_type=acf&p=44', 0, 'acf', '', 0),
(45, 1, '2018-04-16 17:16:09', '2018-04-16 14:16:09', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-04-16 17:16:44', '2018-04-16 14:16:44', '', 0, 'http://wordpress.itstep/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-04-16 17:16:09', '2018-04-16 14:16:09', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-04-16 17:16:44', '2018-04-16 14:16:44', '', 0, 'http://wordpress.itstep/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2018-04-16 17:16:09', '2018-04-16 14:16:09', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-04-16 17:16:44', '2018-04-16 14:16:44', '', 0, 'http://wordpress.itstep/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2018-04-16 17:16:09', '2018-04-16 14:16:09', '', 'YouTube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2018-04-16 17:16:44', '2018-04-16 14:16:44', '', 0, 'http://wordpress.itstep/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2018-04-16 17:27:45', '2018-04-16 14:27:45', '<h2>Latest Products</h2>\r\nLorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation', 'Latest Products', '', 'trash', 'closed', 'closed', '', 'latest-products__trashed', '', '', '2018-04-16 17:56:58', '2018-04-16 14:56:58', '', 10, 'http://wordpress.itstep/?page_id=49', 0, 'page', '', 0),
(50, 1, '2018-04-16 17:27:45', '2018-04-16 14:27:45', '<h2>Latest Products</h2>\r\nLorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation', 'Latest Products', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-04-16 17:27:45', '2018-04-16 14:27:45', '', 49, 'http://wordpress.itstep/2018/04/16/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-16 17:54:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 17:54:32', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?page_id=51', 0, 'page', '', 0),
(52, 1, '2018-04-16 17:55:51', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 17:55:51', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=52', 0, 'post', '', 0),
(53, 1, '2018-04-16 17:58:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 17:58:02', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=53', 0, 'post', '', 0),
(54, 1, '2018-04-16 18:05:02', '2018-04-16 15:05:02', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-16 18:05:02', '2018-04-16 15:05:02', '', 1, 'http://wordpress.itstep/2018/04/16/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-16 18:05:40', '2018-04-16 15:05:40', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Art Of Coding', '', 'publish', 'open', 'open', '', 'art-of-coding', '', '', '2018-04-16 18:48:06', '2018-04-16 15:48:06', '', 0, 'http://wordpress.itstep/?p=55', 0, 'post', '', 0),
(56, 1, '2018-04-16 18:05:40', '2018-04-16 15:05:40', '', 'Art Of Coding', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-16 18:05:40', '2018-04-16 15:05:40', '', 55, 'http://wordpress.itstep/2018/04/16/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-04-16 18:06:16', '2018-04-16 15:06:16', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Responsive Design', '', 'publish', 'open', 'open', '', 'responsive-design', '', '', '2018-04-16 18:48:31', '2018-04-16 15:48:31', '', 0, 'http://wordpress.itstep/?p=57', 0, 'post', '', 0),
(58, 1, '2018-04-16 18:06:16', '2018-04-16 15:06:16', '<pre>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</pre>', 'Responsive Design', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-04-16 18:06:16', '2018-04-16 15:06:16', '', 57, 'http://wordpress.itstep/2018/04/16/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-04-16 18:06:33', '2018-04-16 15:06:33', '<pre>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</pre>', 'Art Of Coding', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-16 18:06:33', '2018-04-16 15:06:33', '', 55, 'http://wordpress.itstep/2018/04/16/55-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-16 18:06:56', '2018-04-16 15:06:56', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Feature Reach', '', 'publish', 'open', 'open', '', 'feature-reach', '', '', '2018-04-16 18:49:18', '2018-04-16 15:49:18', '', 0, 'http://wordpress.itstep/?p=60', 0, 'post', '', 0),
(61, 1, '2018-04-16 18:06:56', '2018-04-16 15:06:56', '<pre>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</pre>', 'Feature Reach', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-16 18:06:56', '2018-04-16 15:06:56', '', 60, 'http://wordpress.itstep/2018/04/16/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-04-16 18:07:20', '2018-04-16 15:07:20', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Useful Documentation', '', 'publish', 'open', 'open', '', 'useful-documentation', '', '', '2018-04-16 18:49:36', '2018-04-16 15:49:36', '', 0, 'http://wordpress.itstep/?p=62', 0, 'post', '', 0),
(63, 1, '2018-04-16 18:07:20', '2018-04-16 15:07:20', '<pre>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</pre>', 'Useful Documentation', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-04-16 18:07:20', '2018-04-16 15:07:20', '', 62, 'http://wordpress.itstep/2018/04/16/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-04-16 18:08:31', '2018-04-16 15:08:31', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Fast Delivery', '', 'publish', 'open', 'open', '', 'fast-delivery', '', '', '2018-04-16 18:49:59', '2018-04-16 15:49:59', '', 0, 'http://wordpress.itstep/?p=64', 0, 'post', '', 0),
(65, 1, '2018-04-16 18:08:31', '2018-04-16 15:08:31', '<pre>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</pre>', 'Fast Delivery', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-04-16 18:08:31', '2018-04-16 15:08:31', '', 64, 'http://wordpress.itstep/2018/04/16/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-04-16 18:09:06', '2018-04-16 15:09:06', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Free Plugins', '', 'publish', 'open', 'open', '', 'free-plugins', '', '', '2018-04-16 18:50:36', '2018-04-16 15:50:36', '', 0, 'http://wordpress.itstep/?p=66', 0, 'post', '', 0),
(67, 1, '2018-04-16 18:09:06', '2018-04-16 15:09:06', '<pre>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</pre>', 'Free Plugins', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-04-16 18:09:06', '2018-04-16 15:09:06', '', 66, 'http://wordpress.itstep/2018/04/16/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-04-16 18:17:36', '2018-04-16 15:17:36', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Free Plugins', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-04-16 18:17:36', '2018-04-16 15:17:36', '', 66, 'http://wordpress.itstep/2018/04/16/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-16 18:18:34', '2018-04-16 15:18:34', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Fast Delivery', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-04-16 18:18:34', '2018-04-16 15:18:34', '', 64, 'http://wordpress.itstep/2018/04/16/64-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-04-16 18:18:45', '2018-04-16 15:18:45', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Useful Documentation', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-04-16 18:18:45', '2018-04-16 15:18:45', '', 62, 'http://wordpress.itstep/2018/04/16/62-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-04-16 18:18:55', '2018-04-16 15:18:55', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Feature Reach', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-16 18:18:55', '2018-04-16 15:18:55', '', 60, 'http://wordpress.itstep/2018/04/16/60-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-04-16 18:19:09', '2018-04-16 15:19:09', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Responsive Design', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-04-16 18:19:09', '2018-04-16 15:19:09', '', 57, 'http://wordpress.itstep/2018/04/16/57-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-04-16 18:19:19', '2018-04-16 15:19:19', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Art Of Coding', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-16 18:19:19', '2018-04-16 15:19:19', '', 55, 'http://wordpress.itstep/2018/04/16/55-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-04-16 18:43:57', '2018-04-16 15:43:57', '', 'Parametrs service', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-service', '', '', '2018-04-16 18:52:59', '2018-04-16 15:52:59', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=74', 0, 'acf', '', 0),
(75, 1, '2018-04-16 18:48:31', '2018-04-16 15:48:31', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Responsive Design', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-04-16 18:48:31', '2018-04-16 15:48:31', '', 57, 'http://wordpress.itstep/2018/04/16/57-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-04-16 18:49:18', '2018-04-16 15:49:18', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Feature Reach', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-16 18:49:18', '2018-04-16 15:49:18', '', 60, 'http://wordpress.itstep/2018/04/16/60-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-04-16 18:49:36', '2018-04-16 15:49:36', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Useful Documentation', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-04-16 18:49:36', '2018-04-16 15:49:36', '', 62, 'http://wordpress.itstep/2018/04/16/62-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-04-16 18:49:59', '2018-04-16 15:49:59', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Fast Delivery', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-04-16 18:49:59', '2018-04-16 15:49:59', '', 64, 'http://wordpress.itstep/2018/04/16/64-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-04-16 18:50:36', '2018-04-16 15:50:36', '<p class=\"margin-b-5\">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Free Plugins', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-04-16 18:50:36', '2018-04-16 15:50:36', '', 66, 'http://wordpress.itstep/2018/04/16/66-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-04-16 19:07:04', '2018-04-16 16:07:04', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>', 'Latest Products', '', 'publish', 'open', 'open', '', 'latest-products', '', '', '2018-04-16 19:07:12', '2018-04-16 16:07:12', '', 0, 'http://wordpress.itstep/?p=80', 0, 'post', '', 0),
(81, 1, '2018-04-16 19:05:06', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 19:05:06', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-04-16 19:07:04', '2018-04-16 16:07:04', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>', 'Latest Products', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-04-16 19:07:04', '2018-04-16 16:07:04', '', 80, 'http://wordpress.itstep/2018/04/16/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-04-16 19:07:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 19:07:21', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=83', 0, 'post', '', 0),
(84, 1, '2018-04-16 19:09:26', '2018-04-16 16:09:26', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Triangle Roof', '', 'publish', 'open', 'open', '', 'triangle-roof', '', '', '2018-04-16 19:50:40', '2018-04-16 16:50:40', '', 0, 'http://wordpress.itstep/?p=84', 0, 'post', '', 0),
(85, 1, '2018-04-16 19:09:26', '2018-04-16 16:09:26', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Triangle Roof', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-04-16 19:09:26', '2018-04-16 16:09:26', '', 84, 'http://wordpress.itstep/2018/04/16/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-04-16 19:10:28', '2018-04-16 16:10:28', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners', '', 'publish', 'open', 'open', '', 'curved-corners', '', '', '2018-04-16 19:10:28', '2018-04-16 16:10:28', '', 0, 'http://wordpress.itstep/?p=86', 0, 'post', '', 0),
(87, 1, '2018-04-16 19:10:28', '2018-04-16 16:10:28', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-16 19:10:28', '2018-04-16 16:10:28', '', 86, 'http://wordpress.itstep/2018/04/16/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-04-16 19:10:59', '2018-04-16 16:10:59', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Bird On Green', '', 'publish', 'open', 'open', '', 'bird-on-green', '', '', '2018-04-16 19:56:29', '2018-04-16 16:56:29', '', 0, 'http://wordpress.itstep/?p=88', 0, 'post', '', 0),
(89, 1, '2018-04-16 19:10:59', '2018-04-16 16:10:59', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Bird On Green', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-16 19:10:59', '2018-04-16 16:10:59', '', 88, 'http://wordpress.itstep/2018/04/16/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-04-16 19:11:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 19:11:01', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=90', 0, 'post', '', 0),
(91, 1, '2018-04-16 19:13:57', '2018-04-16 16:13:57', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners', '', 'publish', 'open', 'open', '', 'triangle-roof2', '', '', '2018-04-16 19:56:46', '2018-04-16 16:56:46', '', 0, 'http://wordpress.itstep/?p=91', 0, 'post', '', 0),
(92, 1, '2018-04-16 19:13:57', '2018-04-16 16:13:57', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Triangle Roof2', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-16 19:13:57', '2018-04-16 16:13:57', '', 91, 'http://wordpress.itstep/2018/04/16/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-04-16 19:14:23', '2018-04-16 16:14:23', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners2', '', 'publish', 'open', 'open', '', 'curved-corners2', '', '', '2018-04-16 20:05:18', '2018-04-16 17:05:18', '', 0, 'http://wordpress.itstep/?p=93', 0, 'post', '', 0),
(94, 1, '2018-04-16 19:14:23', '2018-04-16 16:14:23', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners2', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-04-16 19:14:23', '2018-04-16 16:14:23', '', 93, 'http://wordpress.itstep/2018/04/16/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-04-16 19:14:49', '2018-04-16 16:14:49', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Bird On Green2', '', 'publish', 'open', 'open', '', 'bird-on-green2', '', '', '2018-04-16 20:05:00', '2018-04-16 17:05:00', '', 0, 'http://wordpress.itstep/?p=95', 0, 'post', '', 0),
(96, 1, '2018-04-16 19:14:49', '2018-04-16 16:14:49', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Bird On Green2', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-04-16 19:14:49', '2018-04-16 16:14:49', '', 95, 'http://wordpress.itstep/2018/04/16/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-04-16 19:27:11', '2018-04-16 16:27:11', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Triangle Roof', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-16 19:27:11', '2018-04-16 16:27:11', '', 91, 'http://wordpress.itstep/2018/04/16/91-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-04-16 19:27:16', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 19:27:16', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=98', 0, 'post', '', 0),
(99, 1, '2018-04-16 19:27:40', '2018-04-16 16:27:40', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut\r\n                    consequat siad esqudiat dolor</p>', 'Triangle Roof2', '', 'publish', 'open', 'open', '', 'triangle-roof2-2', '', '', '2018-04-16 20:04:44', '2018-04-16 17:04:44', '', 0, 'http://wordpress.itstep/?p=99', 0, 'post', '', 0),
(100, 1, '2018-04-16 19:27:40', '2018-04-16 16:27:40', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut\r\n                    consequat siad esqudiat dolor</p>', 'Triangle Roof2', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-04-16 19:27:40', '2018-04-16 16:27:40', '', 99, 'http://wordpress.itstep/2018/04/16/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-04-16 19:28:25', '2018-04-16 16:28:25', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-16 19:28:25', '2018-04-16 16:28:25', '', 91, 'http://wordpress.itstep/2018/04/16/91-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-04-16 19:29:19', '2018-04-16 16:29:19', '', 'Parametrs products', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-products', '', '', '2018-04-16 19:34:27', '2018-04-16 16:34:27', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=102', 0, 'acf', '', 0),
(103, 1, '2018-04-16 19:35:16', '2018-04-16 16:35:16', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-16 19:35:16', '2018-04-16 16:35:16', '', 91, 'http://wordpress.itstep/2018/04/16/91-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-04-16 19:35:30', '2018-04-16 16:35:30', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Curved Corners2', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-04-16 19:35:30', '2018-04-16 16:35:30', '', 93, 'http://wordpress.itstep/2018/04/16/93-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-04-16 19:35:47', '2018-04-16 16:35:47', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Bird On Green', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-04-16 19:35:47', '2018-04-16 16:35:47', '', 88, 'http://wordpress.itstep/2018/04/16/88-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-04-16 19:35:57', '2018-04-16 16:35:57', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Bird On Green2', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-04-16 19:35:57', '2018-04-16 16:35:57', '', 95, 'http://wordpress.itstep/2018/04/16/95-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-04-16 19:44:29', '2018-04-16 16:44:29', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2018-04-16 19:44:29', '2018-04-16 16:44:29', '', 84, 'http://wordpress.itstep/wp-content/uploads/2018/04/01.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-04-16 19:56:22', '2018-04-16 16:56:22', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2018-04-16 19:56:22', '2018-04-16 16:56:22', '', 88, 'http://wordpress.itstep/wp-content/uploads/2018/04/02.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-04-16 19:56:22', '2018-04-16 16:56:22', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2018-04-16 19:56:22', '2018-04-16 16:56:22', '', 88, 'http://wordpress.itstep/wp-content/uploads/2018/04/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-04-16 20:01:53', '2018-04-16 17:01:53', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>', 'Our Exceptional Solutions', '', 'publish', 'open', 'open', '', 'our-exceptional-solutions', '', '', '2018-04-16 21:53:06', '2018-04-16 18:53:06', '', 0, 'http://wordpress.itstep/?p=110', 0, 'post', '', 0),
(111, 1, '2018-04-16 20:01:53', '2018-04-16 17:01:53', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>', 'Our Exceptional Solutions', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-04-16 20:01:53', '2018-04-16 17:01:53', '', 110, 'http://wordpress.itstep/2018/04/16/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-04-16 20:09:08', '2018-04-16 17:09:08', '', 'Discord', '', 'publish', 'open', 'open', '', 'discord', '', '', '2018-04-16 20:09:45', '2018-04-16 17:09:45', '', 0, 'http://wordpress.itstep/?p=112', 0, 'post', '', 0),
(113, 1, '2018-04-16 20:09:00', '2018-04-16 17:09:00', '', '01', '', 'inherit', 'open', 'closed', '', '01-2', '', '', '2018-04-16 20:09:00', '2018-04-16 17:09:00', '', 112, 'http://wordpress.itstep/wp-content/uploads/2018/04/01.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2018-04-16 20:09:00', '2018-04-16 17:09:00', '', '02', '', 'inherit', 'open', 'closed', '', '02-2', '', '', '2018-04-16 20:09:00', '2018-04-16 17:09:00', '', 112, 'http://wordpress.itstep/wp-content/uploads/2018/04/02.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2018-04-16 20:09:00', '2018-04-16 17:09:00', '', '03', '', 'inherit', 'open', 'closed', '', '03-2', '', '', '2018-04-16 20:09:00', '2018-04-16 17:09:00', '', 112, 'http://wordpress.itstep/wp-content/uploads/2018/04/03.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-04-16 20:09:01', '2018-04-16 17:09:01', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2018-04-16 20:09:01', '2018-04-16 17:09:01', '', 112, 'http://wordpress.itstep/wp-content/uploads/2018/04/04.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2018-04-16 20:09:01', '2018-04-16 17:09:01', '', '05', '', 'inherit', 'open', 'closed', '', '05', '', '', '2018-04-16 20:09:01', '2018-04-16 17:09:01', '', 112, 'http://wordpress.itstep/wp-content/uploads/2018/04/05.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2018-04-16 20:09:01', '2018-04-16 17:09:01', '', '06', '', 'inherit', 'open', 'closed', '', '06', '', '', '2018-04-16 20:09:01', '2018-04-16 17:09:01', '', 112, 'http://wordpress.itstep/wp-content/uploads/2018/04/06.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2018-04-16 20:09:08', '2018-04-16 17:09:08', '', 'Discord', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-04-16 20:09:08', '2018-04-16 17:09:08', '', 112, 'http://wordpress.itstep/2018/04/16/112-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-04-16 20:09:35', '2018-04-16 17:09:35', '', 'netflix', '', 'publish', 'open', 'open', '', 'netflix', '', '', '2018-04-16 20:09:35', '2018-04-16 17:09:35', '', 0, 'http://wordpress.itstep/?p=120', 0, 'post', '', 0),
(121, 1, '2018-04-16 20:09:35', '2018-04-16 17:09:35', '', 'netflix', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-04-16 20:09:35', '2018-04-16 17:09:35', '', 120, 'http://wordpress.itstep/2018/04/16/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-04-16 20:10:07', '2018-04-16 17:10:07', '', 'broadcom', '', 'publish', 'open', 'open', '', 'broadcom', '', '', '2018-04-16 20:10:07', '2018-04-16 17:10:07', '', 0, 'http://wordpress.itstep/?p=122', 0, 'post', '', 0),
(123, 1, '2018-04-16 20:10:07', '2018-04-16 17:10:07', '', 'broadcom', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-04-16 20:10:07', '2018-04-16 17:10:07', '', 122, 'http://wordpress.itstep/2018/04/16/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-04-16 20:10:29', '2018-04-16 17:10:29', '', 'hoop', '', 'publish', 'open', 'open', '', 'hoop', '', '', '2018-04-16 20:10:29', '2018-04-16 17:10:29', '', 0, 'http://wordpress.itstep/?p=124', 0, 'post', '', 0),
(125, 1, '2018-04-16 20:10:29', '2018-04-16 17:10:29', '', 'hoop', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-04-16 20:10:29', '2018-04-16 17:10:29', '', 124, 'http://wordpress.itstep/2018/04/16/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-04-16 20:10:52', '2018-04-16 17:10:52', '', 'airbnb', '', 'publish', 'open', 'open', '', 'airbnb', '', '', '2018-04-16 20:10:52', '2018-04-16 17:10:52', '', 0, 'http://wordpress.itstep/?p=126', 0, 'post', '', 0),
(127, 1, '2018-04-16 20:10:52', '2018-04-16 17:10:52', '', 'airbnb', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-04-16 20:10:52', '2018-04-16 17:10:52', '', 126, 'http://wordpress.itstep/2018/04/16/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-04-16 20:11:23', '2018-04-16 17:11:23', '', 'heineken', '', 'publish', 'open', 'open', '', 'heineken', '', '', '2018-04-16 20:11:23', '2018-04-16 17:11:23', '', 0, 'http://wordpress.itstep/?p=128', 0, 'post', '', 0),
(129, 1, '2018-04-16 20:11:23', '2018-04-16 17:11:23', '', 'heineken', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-04-16 20:11:23', '2018-04-16 17:11:23', '', 128, 'http://wordpress.itstep/2018/04/16/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-04-16 20:27:18', '2018-04-16 17:27:18', '', 'Customer Reviews - Joh Milner', '', 'publish', 'open', 'open', '', 'customer-reviews-joh-milner', '', '', '2018-04-16 20:33:50', '2018-04-16 17:33:50', '', 0, 'http://wordpress.itstep/?p=130', 0, 'post', '', 0),
(131, 1, '2018-04-16 20:27:18', '2018-04-16 17:27:18', '', 'Customer Reviews - Joh Milner', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2018-04-16 20:27:18', '2018-04-16 17:27:18', '', 130, 'http://wordpress.itstep/2018/04/16/130-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-04-16 20:27:52', '2018-04-16 17:27:52', '', 'Customer Reviews - Alex Clarson', '', 'publish', 'open', 'open', '', 'customer-reviews-alex-clarson', '', '', '2018-04-16 20:33:01', '2018-04-16 17:33:01', '', 0, 'http://wordpress.itstep/?p=132', 0, 'post', '', 0),
(133, 1, '2018-04-16 20:27:52', '2018-04-16 17:27:52', '', 'Customer Reviews - Alex Clarson', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2018-04-16 20:27:52', '2018-04-16 17:27:52', '', 132, 'http://wordpress.itstep/2018/04/16/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-04-16 20:31:43', '2018-04-16 17:31:43', '', 'Parametrs testimonials', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-testimonials', '', '', '2018-04-16 20:34:25', '2018-04-16 17:34:25', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=134', 0, 'acf', '', 0),
(135, 1, '2018-04-16 20:33:01', '2018-04-16 17:33:01', '', 'Customer Reviews - Alex Clarson', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2018-04-16 20:33:01', '2018-04-16 17:33:01', '', 132, 'http://wordpress.itstep/2018/04/16/132-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-04-16 20:33:50', '2018-04-16 17:33:50', '', 'Customer Reviews - Joh Milner', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2018-04-16 20:33:50', '2018-04-16 17:33:50', '', 130, 'http://wordpress.itstep/2018/04/16/130-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-04-16 20:46:49', '2018-04-16 17:46:49', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Starter Kit', '', 'publish', 'open', 'open', '', 'starter-kit', '', '', '2018-04-16 21:10:13', '2018-04-16 18:10:13', '', 0, 'http://wordpress.itstep/?p=137', 0, 'post', '', 0),
(138, 1, '2018-04-16 20:46:49', '2018-04-16 17:46:49', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Starter Kit', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-04-16 20:46:49', '2018-04-16 17:46:49', '', 137, 'http://wordpress.itstep/2018/04/16/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-04-16 20:47:48', '2018-04-16 17:47:48', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Professional', '', 'publish', 'open', 'open', '', 'professional', '', '', '2018-04-16 21:10:45', '2018-04-16 18:10:45', '', 0, 'http://wordpress.itstep/?p=139', 0, 'post', '', 0),
(140, 1, '2018-04-16 20:47:48', '2018-04-16 17:47:48', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Professional', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-16 20:47:48', '2018-04-16 17:47:48', '', 139, 'http://wordpress.itstep/2018/04/16/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-04-16 20:50:27', '2018-04-16 17:50:27', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Advanced', '', 'publish', 'open', 'open', '', 'advanced', '', '', '2018-04-16 21:09:49', '2018-04-16 18:09:49', '', 0, 'http://wordpress.itstep/?p=141', 0, 'post', '', 0),
(142, 1, '2018-04-16 20:50:27', '2018-04-16 17:50:27', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Advanced', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-04-16 20:50:27', '2018-04-16 17:50:27', '', 141, 'http://wordpress.itstep/2018/04/16/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-04-16 20:55:22', '2018-04-16 17:55:22', '', 'Parametrs pracing', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-pracing', '', '', '2018-04-16 21:09:12', '2018-04-16 18:09:12', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=143', 0, 'acf', '', 0),
(144, 1, '2018-04-16 20:56:29', '2018-04-16 17:56:29', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Starter Kit', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-04-16 20:56:29', '2018-04-16 17:56:29', '', 137, 'http://wordpress.itstep/2018/04/16/137-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-04-16 20:57:10', '2018-04-16 17:57:10', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Professional', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-16 20:57:10', '2018-04-16 17:57:10', '', 139, 'http://wordpress.itstep/2018/04/16/139-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-04-16 20:57:47', '2018-04-16 17:57:47', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Advanced', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-04-16 20:57:47', '2018-04-16 17:57:47', '', 141, 'http://wordpress.itstep/2018/04/16/141-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-04-16 21:09:49', '2018-04-16 18:09:49', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Advanced', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-04-16 21:09:49', '2018-04-16 18:09:49', '', 141, 'http://wordpress.itstep/2018/04/16/141-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-04-16 21:10:13', '2018-04-16 18:10:13', '<p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>', 'Starter Kit', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-04-16 21:10:13', '2018-04-16 18:10:13', '', 137, 'http://wordpress.itstep/2018/04/16/137-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-04-16 21:18:58', '2018-04-16 18:18:58', ' <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>\r\n                        <p>Ipsum dolor sit amet consectetur adipiscing elit sed tempor incididut ut sead laboret dolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur adipiscing</p>', 'Our Clients', '', 'publish', 'open', 'open', '', 'our-clients', '', '', '2018-04-16 21:45:32', '2018-04-16 18:45:32', '', 0, 'http://wordpress.itstep/?p=149', 0, 'post', '', 0),
(150, 1, '2018-04-16 21:18:34', '2018-04-16 18:18:34', '', '01', '', 'inherit', 'open', 'closed', '', '01-3', '', '', '2018-04-16 21:18:34', '2018-04-16 18:18:34', '', 149, 'http://wordpress.itstep/wp-content/uploads/2018/04/01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2018-04-16 21:18:58', '2018-04-16 18:18:58', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret\r\ndolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur\r\nadipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam\r\nexercitation\r\n\r\nIpsum dolor sit amet consectetur adipiscing elit sed tempor incididut ut sead laboret\r\ndolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur\r\nadipiscing', 'Our Clients', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-04-16 21:18:58', '2018-04-16 18:18:58', '', 149, 'http://wordpress.itstep/2018/04/16/149-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(152, 1, '2018-04-16 21:45:32', '2018-04-16 18:45:32', ' <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>\r\n                        <p>Ipsum dolor sit amet consectetur adipiscing elit sed tempor incididut ut sead laboret dolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur adipiscing</p>', 'Our Clients', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-04-16 21:45:32', '2018-04-16 18:45:32', '', 149, 'http://wordpress.itstep/2018/04/16/149-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-04-16 22:03:09', '2018-04-16 19:03:09', '', 'General Questions', '', 'publish', 'open', 'open', '', 'general-questions', '', '', '2018-04-16 22:11:58', '2018-04-16 19:11:58', '', 0, 'http://wordpress.itstep/?p=153', 0, 'post', '', 0),
(154, 1, '2018-04-16 22:02:06', '2018-04-16 19:02:06', '', '01', '', 'inherit', 'open', 'closed', '', '01-4', '', '', '2018-04-16 22:02:06', '2018-04-16 19:02:06', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/01-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2018-04-16 22:02:06', '2018-04-16 19:02:06', '', '02', '', 'inherit', 'open', 'closed', '', '02-3', '', '', '2018-04-16 22:02:06', '2018-04-16 19:02:06', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/02-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2018-04-16 22:02:16', '2018-04-16 19:02:16', '', '01', '', 'inherit', 'open', 'closed', '', '01-5', '', '', '2018-04-16 22:02:16', '2018-04-16 19:02:16', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/01-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2018-04-16 22:02:17', '2018-04-16 19:02:17', '', '02', '', 'inherit', 'open', 'closed', '', '02-4', '', '', '2018-04-16 22:02:17', '2018-04-16 19:02:17', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/02-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2018-04-16 22:02:17', '2018-04-16 19:02:17', '', '03', '', 'inherit', 'open', 'closed', '', '03-3', '', '', '2018-04-16 22:02:17', '2018-04-16 19:02:17', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/03-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2018-04-16 22:02:31', '2018-04-16 19:02:31', '', '01', '', 'inherit', 'open', 'closed', '', '01-6', '', '', '2018-04-16 22:02:31', '2018-04-16 19:02:31', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/01-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-04-16 22:02:40', '2018-04-16 19:02:40', '', '01', '', 'inherit', 'open', 'closed', '', '01-7', '', '', '2018-04-16 22:02:40', '2018-04-16 19:02:40', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/01-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2018-04-16 22:02:50', '2018-04-16 19:02:50', '', '01', '', 'inherit', 'open', 'closed', '', '01-8', '', '', '2018-04-16 22:02:50', '2018-04-16 19:02:50', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/01-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2018-04-16 22:02:50', '2018-04-16 19:02:50', '', '02', '', 'inherit', 'open', 'closed', '', '02-5', '', '', '2018-04-16 22:02:50', '2018-04-16 19:02:50', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/02-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2018-04-16 22:02:51', '2018-04-16 19:02:51', '', '03', '', 'inherit', 'open', 'closed', '', '03-4', '', '', '2018-04-16 22:02:51', '2018-04-16 19:02:51', '', 153, 'http://wordpress.itstep/wp-content/uploads/2018/04/03-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2018-04-16 22:03:09', '2018-04-16 19:03:09', '', 'General Questions', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2018-04-16 22:03:09', '2018-04-16 19:03:09', '', 153, 'http://wordpress.itstep/2018/04/16/153-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2018-04-16 22:05:09', '2018-04-16 19:05:09', '', 'Parametrs questions', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-questions', '', '', '2018-04-16 22:05:09', '2018-04-16 19:05:09', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=165', 0, 'acf', '', 0),
(166, 1, '2018-04-16 22:09:05', '2018-04-16 19:09:05', '', 'General Questions', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2018-04-16 22:09:05', '2018-04-16 19:09:05', '', 153, 'http://wordpress.itstep/2018/04/16/153-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2018-04-16 22:18:35', '2018-04-16 19:18:35', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>', 'Art Of Coding', '', 'publish', 'open', 'open', '', 'art-of-coding-2', '', '', '2018-04-16 22:18:35', '2018-04-16 19:18:35', '', 0, 'http://wordpress.itstep/?p=167', 0, 'post', '', 0),
(168, 1, '2018-04-16 22:18:35', '2018-04-16 19:18:35', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>', 'Art Of Coding', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2018-04-16 22:18:35', '2018-04-16 19:18:35', '', 167, 'http://wordpress.itstep/2018/04/16/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-04-16 22:19:00', '2018-04-16 19:19:00', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>', 'Clean Design', '', 'publish', 'open', 'open', '', 'clean-design', '', '', '2018-04-16 22:19:00', '2018-04-16 19:19:00', '', 0, 'http://wordpress.itstep/?p=169', 0, 'post', '', 0),
(170, 1, '2018-04-16 22:19:00', '2018-04-16 19:19:00', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>', 'Clean Design', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2018-04-16 22:19:00', '2018-04-16 19:19:00', '', 169, 'http://wordpress.itstep/2018/04/16/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-04-16 22:19:21', '2018-04-16 19:19:21', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>', 'Amazing Support', '', 'publish', 'open', 'open', '', 'amazing-support', '', '', '2018-04-16 22:19:21', '2018-04-16 19:19:21', '', 0, 'http://wordpress.itstep/?p=171', 0, 'post', '', 0),
(172, 1, '2018-04-16 22:19:21', '2018-04-16 19:19:21', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>', 'Amazing Support', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2018-04-16 22:19:21', '2018-04-16 19:19:21', '', 171, 'http://wordpress.itstep/2018/04/16/171-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-04-16 22:27:24', '2018-04-16 19:27:24', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>', 'Meet the Team', '', 'publish', 'open', 'open', '', 'meet-the-team', '', '', '2018-04-16 22:27:30', '2018-04-16 19:27:30', '', 0, 'http://wordpress.itstep/?p=173', 0, 'post', '', 0),
(174, 1, '2018-04-16 22:27:24', '2018-04-16 19:27:24', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>', 'Meet the Team', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2018-04-16 22:27:24', '2018-04-16 19:27:24', '', 173, 'http://wordpress.itstep/2018/04/16/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-04-16 22:28:32', '2018-04-16 19:28:32', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Alicia Keys', '', 'publish', 'open', 'open', '', 'alicia-keys', '', '', '2018-04-16 22:30:31', '2018-04-16 19:30:31', '', 0, 'http://wordpress.itstep/?p=175', 0, 'post', '', 0),
(176, 1, '2018-04-16 22:28:32', '2018-04-16 19:28:32', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Alicia Keys', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-04-16 22:28:32', '2018-04-16 19:28:32', '', 175, 'http://wordpress.itstep/2018/04/16/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-04-16 22:28:34', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-16 22:28:34', '0000-00-00 00:00:00', '', 0, 'http://wordpress.itstep/?p=177', 0, 'post', '', 0),
(178, 1, '2018-04-16 22:30:11', '2018-04-16 19:30:11', '', 'Parametrs team', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-team', '', '', '2018-04-16 22:30:11', '2018-04-16 19:30:11', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=178', 0, 'acf', '', 0),
(179, 1, '2018-04-16 22:30:31', '2018-04-16 19:30:31', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Alicia Keys', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-04-16 22:30:31', '2018-04-16 19:30:31', '', 175, 'http://wordpress.itstep/2018/04/16/175-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2018-04-16 22:31:24', '2018-04-16 19:31:24', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'James Millner', '', 'publish', 'open', 'open', '', 'james-millner', '', '', '2018-04-16 22:31:24', '2018-04-16 19:31:24', '', 0, 'http://wordpress.itstep/?p=180', 0, 'post', '', 0),
(181, 1, '2018-04-16 22:31:24', '2018-04-16 19:31:24', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'James Millner', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2018-04-16 22:31:24', '2018-04-16 19:31:24', '', 180, 'http://wordpress.itstep/2018/04/16/180-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-04-16 22:32:15', '2018-04-16 19:32:15', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Scarlet Johanson', '', 'publish', 'open', 'open', '', 'scarlet-johanson', '', '', '2018-04-16 22:32:15', '2018-04-16 19:32:15', '', 0, 'http://wordpress.itstep/?p=182', 0, 'post', '', 0),
(183, 1, '2018-04-16 22:32:15', '2018-04-16 19:32:15', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Scarlet Johanson', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2018-04-16 22:32:15', '2018-04-16 19:32:15', '', 182, 'http://wordpress.itstep/2018/04/16/182-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2018-04-17 19:26:02', '2018-04-17 16:26:02', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'New York', '', 'publish', 'open', 'open', '', 'new-york', '', '', '2018-04-17 19:29:13', '2018-04-17 16:29:13', '', 0, 'http://wordpress.itstep/?p=184', 0, 'post', '', 0),
(185, 1, '2018-04-17 19:26:02', '2018-04-17 16:26:02', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'New York', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-04-17 19:26:02', '2018-04-17 16:26:02', '', 184, 'http://wordpress.itstep/2018/04/17/184-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-04-17 19:28:39', '2018-04-17 16:28:39', '', 'Parametrs contact', '', 'publish', 'closed', 'closed', '', 'acf_parametrs-contact', '', '', '2018-04-17 19:28:39', '2018-04-17 16:28:39', '', 0, 'http://wordpress.itstep/?post_type=acf&#038;p=186', 0, 'acf', '', 0),
(187, 1, '2018-04-17 19:29:13', '2018-04-17 16:29:13', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'New York', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-04-17 19:29:13', '2018-04-17 16:29:13', '', 184, 'http://wordpress.itstep/2018/04/17/184-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-04-17 19:30:11', '2018-04-17 16:30:11', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'London', '', 'publish', 'open', 'open', '', 'london', '', '', '2018-04-17 19:30:11', '2018-04-17 16:30:11', '', 0, 'http://wordpress.itstep/?p=188', 0, 'post', '', 0),
(189, 1, '2018-04-17 19:30:11', '2018-04-17 16:30:11', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'London', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-04-17 19:30:11', '2018-04-17 16:30:11', '', 188, 'http://wordpress.itstep/2018/04/17/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-04-17 19:30:53', '2018-04-17 16:30:53', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Singapore', '', 'publish', 'open', 'open', '', 'singapore', '', '', '2018-04-17 19:30:53', '2018-04-17 16:30:53', '', 0, 'http://wordpress.itstep/?p=190', 0, 'post', '', 0),
(191, 1, '2018-04-17 19:30:53', '2018-04-17 16:30:53', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>', 'Singapore', '', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2018-04-17 19:30:53', '2018-04-17 16:30:53', '', 190, 'http://wordpress.itstep/2018/04/17/190-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'top menu', 'top-menu', 0),
(4, 'bottom menu', 'bottom-menu', 0),
(6, 'social menu', 'social-menu', 0),
(7, 'Service', 'service', 0),
(8, 'Latest Products', 'latest-products', 0),
(9, 'Clients', 'clients', 0),
(10, 'Testimonials', 'testimonials', 0),
(11, 'Pricing', 'pricing', 0),
(12, 'Promo Section', 'promo-section', 0),
(13, 'General Questions', 'general-questions', 0),
(14, 'Features', 'features', 0),
(15, 'Team', 'team', 0),
(16, 'Contact', 'contact', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(45, 6, 0),
(46, 6, 0),
(47, 6, 0),
(48, 6, 0),
(55, 7, 0),
(57, 7, 0),
(60, 7, 0),
(62, 7, 0),
(64, 7, 0),
(66, 7, 0),
(80, 8, 0),
(84, 8, 0),
(86, 1, 0),
(88, 8, 0),
(91, 8, 0),
(93, 8, 0),
(95, 8, 0),
(99, 8, 0),
(110, 8, 0),
(112, 9, 0),
(120, 9, 0),
(122, 9, 0),
(124, 9, 0),
(126, 9, 0),
(128, 9, 0),
(130, 10, 0),
(132, 10, 0),
(137, 11, 0),
(139, 11, 0),
(141, 11, 0),
(149, 12, 0),
(153, 13, 0),
(167, 14, 0),
(169, 14, 0),
(171, 14, 0),
(173, 15, 0),
(175, 15, 0),
(180, 15, 0),
(182, 15, 0),
(184, 16, 0),
(188, 16, 0),
(190, 16, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 6),
(6, 6, 'nav_menu', '', 0, 4),
(7, 7, 'category', '', 0, 6),
(8, 8, 'category', '', 0, 8),
(9, 9, 'category', '', 0, 6),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 0, 3),
(12, 12, 'category', '', 0, 1),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 3),
(15, 15, 'category', '', 0, 4),
(16, 16, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&posts_list_mode=list'),
(20, 1, 'wp_user-settings-time', '1523904328'),
(21, 1, 'managenav-menuscolumnshidden', 'a:2:{i:0;s:15:\"title-attribute\";i:1;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '6'),
(24, 1, 'session_tokens', 'a:2:{s:64:\"fe71983bd34640d6aa0f47f04181717ce714623986bc240cc55166254e3dd79e\";a:4:{s:10:\"expiration\";i:1524054459;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1523881659;}s:64:\"55edb10fc3230653a3e8788f464d4407147df8b01a399199e58299fd7a5c1888\";a:4:{s:10:\"expiration\";i:1525191751;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1523982151;}}'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(27, 1, 'closedpostboxes_acf', 'a:0:{}'),
(28, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'edit_post_per_page', '20');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B1HfJ4t8TzSnaFeNnqXYVSWnmgeBEl0', 'admin', 'admin@admin.com', '', '2018-04-16 08:43:16', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=712;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
