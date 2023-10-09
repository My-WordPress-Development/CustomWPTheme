-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2023 at 12:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customwptheme_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-09 12:04:03', '2023-10-09 12:04:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/CustomWPTheme', 'yes'),
(2, 'home', 'http://localhost/CustomWPTheme', 'yes'),
(3, 'blogname', 'WordPress using Custom Theme', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jerrymayalor555@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:79:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1712405041', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:4:{i:1696856644;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1696896244;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1696939444;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(120, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/editor.css\";i:3;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/editor.min.css\";i:4;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/style-rtl.css\";i:5;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/style.css\";i:7;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/archives/style.min.css\";i:8;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/editor.css\";i:11;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/editor.min.css\";i:12;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/style-rtl.css\";i:13;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/style.css\";i:15;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/style.min.css\";i:16;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/theme.css\";i:19;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/audio/theme.min.css\";i:20;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/editor.css\";i:23;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/editor.min.css\";i:24;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/style.css\";i:27;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/avatar/style.min.css\";i:28;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/block/editor-rtl.css\";i:29;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/block/editor.css\";i:31;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/block/editor.min.css\";i:32;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/editor-rtl.css\";i:33;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/editor.css\";i:35;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/editor.min.css\";i:36;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/style-rtl.css\";i:37;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/style.css\";i:39;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/button/style.min.css\";i:40;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/editor.css\";i:43;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/editor.min.css\";i:44;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/style.css\";i:47;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/buttons/style.min.css\";i:48;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/calendar/style.css\";i:51;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/calendar/style.min.css\";i:52;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/editor.css\";i:55;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/editor.min.css\";i:56;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/style-rtl.css\";i:57;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/style.css\";i:59;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/categories/style.min.css\";i:60;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/editor-rtl.css\";i:61;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/editor.css\";i:63;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/editor.min.css\";i:64;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/style-rtl.css\";i:65;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:62:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/style.css\";i:67;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/style.min.css\";i:68;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/theme-rtl.css\";i:69;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:62:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/theme.css\";i:71;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/code/theme.min.css\";i:72;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/editor.css\";i:75;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/editor.min.css\";i:76;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/style-rtl.css\";i:77;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/style.css\";i:79;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/columns/style.min.css\";i:80;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-content/style.css\";i:83;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-content/style.min.css\";i:84;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-template/style.css\";i:87;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comment-template/style.min.css\";i:88;s:90:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:94:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:86:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:90:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:86:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:85:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/style.css\";i:99;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-title/editor.css\";i:103;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/editor.css\";i:107;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/editor.min.css\";i:108;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/style-rtl.css\";i:109;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/style.css\";i:111;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/comments/style.min.css\";i:112;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/editor.css\";i:115;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/editor.min.css\";i:116;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/style-rtl.css\";i:117;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/style.css\";i:119;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/cover/style.min.css\";i:120;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/editor-rtl.css\";i:121;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/editor.css\";i:123;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/editor.min.css\";i:124;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/style-rtl.css\";i:125;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/style.css\";i:127;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/details/style.min.css\";i:128;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/editor.css\";i:131;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/editor.min.css\";i:132;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/style-rtl.css\";i:133;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/style.css\";i:135;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/style.min.css\";i:136;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/theme.css\";i:139;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/embed/theme.min.css\";i:140;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/editor-rtl.css\";i:141;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/editor.css\";i:143;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/editor.min.css\";i:144;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/style-rtl.css\";i:145;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:62:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/style.css\";i:147;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/file/style.min.css\";i:148;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/footnotes/style.css\";i:151;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/footnotes/style.min.css\";i:152;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/freeform/editor.css\";i:155;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/freeform/editor.min.css\";i:156;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/editor.css\";i:159;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/editor.min.css\";i:160;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/style.css\";i:163;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/style.min.css\";i:164;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/theme.css\";i:167;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/gallery/theme.min.css\";i:168;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/editor-rtl.css\";i:169;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/editor.css\";i:171;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/editor.min.css\";i:172;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/style-rtl.css\";i:173;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/style.css\";i:175;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/style.min.css\";i:176;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/theme-rtl.css\";i:177;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/theme.css\";i:179;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/group/theme.min.css\";i:180;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/heading/style-rtl.css\";i:181;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/heading/style.css\";i:183;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/heading/style.min.css\";i:184;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/html/editor-rtl.css\";i:185;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/html/editor.css\";i:187;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/html/editor.min.css\";i:188;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/editor-rtl.css\";i:189;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/editor.css\";i:191;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/editor.min.css\";i:192;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/style-rtl.css\";i:193;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/style.css\";i:195;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/style.min.css\";i:196;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/theme-rtl.css\";i:197;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/theme.css\";i:199;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/image/theme.min.css\";i:200;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-comments/style.css\";i:203;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/editor.css\";i:207;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/style.css\";i:211;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/list/style-rtl.css\";i:213;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:62:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/list/style.css\";i:215;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/list/style.min.css\";i:216;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/editor.css\";i:219;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/editor.min.css\";i:220;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/style.css\";i:223;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/media-text/style.min.css\";i:224;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/more/editor-rtl.css\";i:225;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/more/editor.css\";i:227;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/more/editor.min.css\";i:228;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/editor.css\";i:231;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/style.css\";i:235;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:85:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/editor.css\";i:243;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/editor.min.css\";i:244;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/style.css\";i:247;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/navigation/style.min.css\";i:248;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/nextpage/editor.css\";i:251;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/editor.css\";i:255;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/editor.min.css\";i:256;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/style.css\";i:259;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/page-list/style.min.css\";i:260;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/editor.css\";i:263;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/style.css\";i:267;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/paragraph/style.min.css\";i:268;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-author/style.css\";i:271;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-author/style.min.css\";i:272;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:85:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:80:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:84:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/style.css\";i:279;s:80:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-date/style.css\";i:283;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-date/style.min.css\";i:284;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/style.css\";i:291;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:86:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:85:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/style.css\";i:299;s:81:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:86:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:80:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/editor.css\";i:307;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/editor.min.css\";i:308;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/style.css\";i:311;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-template/style.min.css\";i:312;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-terms/style.css\";i:315;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-terms/style.min.css\";i:316;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-title/style.css\";i:319;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/post-title/style.min.css\";i:320;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/preformatted/style.css\";i:323;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/preformatted/style.min.css\";i:324;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/editor.css\";i:327;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/style.css\";i:331;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/style.min.css\";i:332;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/theme.css\";i:335;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:87:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:91:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:83:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:87:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:83:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/editor.css\";i:343;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/style.css\";i:347;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-title/style.css\";i:351;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query-title/style.min.css\";i:352;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query/editor-rtl.css\";i:353;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query/editor.css\";i:355;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/query/editor.min.css\";i:356;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/style-rtl.css\";i:357;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/style.css\";i:359;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/style.min.css\";i:360;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/theme.css\";i:363;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/quote/theme.min.css\";i:364;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/read-more/style.css\";i:367;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/read-more/style.min.css\";i:368;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:62:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/editor.css\";i:371;s:66:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/editor.min.css\";i:372;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/style-rtl.css\";i:373;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:61:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/style.css\";i:375;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/rss/style.min.css\";i:376;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/editor-rtl.css\";i:377;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/editor.css\";i:379;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/editor.min.css\";i:380;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/style-rtl.css\";i:381;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/style.css\";i:383;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/style.min.css\";i:384;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/theme-rtl.css\";i:385;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/theme.css\";i:387;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/search/theme.min.css\";i:388;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/editor.css\";i:391;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/editor.min.css\";i:392;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/style-rtl.css\";i:393;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/style.css\";i:395;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/style.min.css\";i:396;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/theme.css\";i:399;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/separator/theme.min.css\";i:400;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/shortcode/editor.css\";i:403;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/editor.css\";i:407;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/style.css\";i:411;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-logo/style.min.css\";i:412;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-tagline/editor.css\";i:415;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:77:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/editor.css\";i:419;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/editor.min.css\";i:420;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/style.css\";i:423;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/site-title/style.min.css\";i:424;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-link/editor.css\";i:427;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-link/editor.min.css\";i:428;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/editor.css\";i:431;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/editor.min.css\";i:432;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/style.css\";i:435;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/social-links/style.min.css\";i:436;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:73:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:65:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/editor.css\";i:439;s:69:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/editor.min.css\";i:440;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/style.css\";i:443;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/spacer/style.min.css\";i:444;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/editor-rtl.css\";i:445;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/editor.css\";i:447;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/editor.min.css\";i:448;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/style-rtl.css\";i:449;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/style.css\";i:451;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/style.min.css\";i:452;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/theme-rtl.css\";i:453;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/theme.css\";i:455;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/table/theme.min.css\";i:456;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/tag-cloud/style.css\";i:459;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:80:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/editor.css\";i:463;s:76:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/editor.min.css\";i:464;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/theme.css\";i:467;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/template-part/theme.min.css\";i:468;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:82:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/term-description/style.css\";i:471;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/term-description/style.min.css\";i:472;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:79:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/editor.css\";i:475;s:75:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:78:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:70:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/style.css\";i:479;s:74:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/text-columns/style.min.css\";i:480;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/verse/style-rtl.css\";i:481;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/verse/style.css\";i:483;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/verse/style.min.css\";i:484;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/editor-rtl.css\";i:485;s:72:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:64:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/editor.css\";i:487;s:68:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/editor.min.css\";i:488;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/style-rtl.css\";i:489;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/style.css\";i:491;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/style.min.css\";i:492;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/theme-rtl.css\";i:493;s:71:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:63:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/theme.css\";i:495;s:67:\"D:/laragon/www/CustomWPTheme/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1696853046;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_timeout_theme_roots', '1696854847', 'no'),
(130, '_site_transient_theme_roots', 'a:5:{s:5:\"astra\";s:7:\"/themes\";s:7:\"mytheme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(131, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696853049;s:7:\"checked\";a:4:{s:5:\"astra\";s:5:\"4.3.1\";s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:5:\"4.3.1\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/astra.4.3.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696853050;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.1\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-09 12:04:03', '2023-10-09 12:04:03', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-09 12:04:03', '2023-10-09 12:04:03', '', 0, 'http://localhost/CustomWPTheme/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-09 12:04:03', '2023-10-09 12:04:03', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/CustomWPTheme/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-09 12:04:03', '2023-10-09 12:04:03', '', 0, 'http://localhost/CustomWPTheme/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-09 12:04:03', '2023-10-09 12:04:03', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/CustomWPTheme.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-09 12:04:03', '2023-10-09 12:04:03', '', 0, 'http://localhost/CustomWPTheme/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-09 12:04:05', '2023-10-09 12:04:05', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-09 12:04:05', '2023-10-09 12:04:05', '', 0, 'https://localhost/CustomWPTheme/2023/10/09/navigation/', 0, 'wp_navigation', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '1234'),
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
(15, 1, 'show_welcome_panel', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '1234', '$P$BaPRhrZtdRMk/d0gbwnFyfhpbTBMU20', '1234', 'jerrymayalor555@gmail.com', 'http://localhost/CustomWPTheme', '2023-10-09 12:04:03', '', 0, '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
