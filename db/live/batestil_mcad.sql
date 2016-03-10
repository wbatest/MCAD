-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2016 at 05:49 PM
-- Server version: 5.5.42-37.1-log
-- PHP Version: 5.4.31

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `batestil_mcad`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-02-29 05:49:35', '2016-02-29 05:49:35', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

DROP TABLE IF EXISTS `wp_duplicator_packages`;
CREATE TABLE IF NOT EXISTS `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=328 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://batestillman.com/mcad', 'yes'),
(2, 'home', 'http://batestillman.com/mcad', 'yes'),
(3, 'blogname', 'Sanctuary', 'yes'),
(4, 'blogdescription', 'ECO-RETREAT for PROFESSIONAL ARTISTS', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wtillman@mcad.edu', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:27:"acf-gallery/acf-gallery.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:25:"duplicator/duplicator.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'frustration', 'yes'),
(42, 'stylesheet', 'frustration', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '17', 'yes'),
(85, 'page_on_front', '7', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:4:{i:1457577074;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1457588975;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1457588981;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:17:"wtillman@mcad.edu";s:7:"version";s:5:"4.3.3";s:9:"timestamp";i:1456724983;}', 'yes'),
(115, 'can_compress_scripts', '1', 'yes'),
(134, 'current_theme', 'sanctuary', 'yes'),
(135, 'theme_mods_sanctuary', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456759767;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(152, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456798262;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(153, 'theme_mods_frustration', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:17:"background_repeat";s:9:"no-repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";s:16:"header_textcolor";s:6:"000000";}', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'acf_version', '4.4.5', 'yes'),
(176, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(301, 'category_children', 'a:0:{}', 'yes'),
(312, 'duplicator_version_plugin', '1.1.4', 'yes'),
(314, 'duplicator_settings', 'a:10:{s:7:"version";s:5:"1.1.4";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(316, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1457566041;s:15:"version_checked";s:5:"4.3.3";s:12:"translations";a:0:{}}', 'yes'),
(319, '_site_transient_timeout_theme_roots', '1457567841', 'yes'),
(320, '_site_transient_theme_roots', 'a:4:{s:11:"frustration";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(322, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1457566041;s:7:"checked";a:4:{s:11:"frustration";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.4.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.6.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.7.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(323, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1457566041;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.8.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.5";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.5.zip";}s:25:"duplicator/duplicator.php";O:8:"stdClass":6:{s:2:"id";s:5:"22600";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:5:"1.1.4";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/duplicator.1.1.4.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(324, '_transient_random_seed', '3205828456105479231aa289d6fc4461', 'yes'),
(326, 'rewrite_rules', 'a:96:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"team_members/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"team_members/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"team_members/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"team_members/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"team_members/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"team_members/([^/]+)/trackback/?$";s:38:"index.php?team_member=$matches[1]&tb=1";s:41:"team_members/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?team_member=$matches[1]&paged=$matches[2]";s:48:"team_members/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?team_member=$matches[1]&cpage=$matches[2]";s:33:"team_members/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?team_member=$matches[1]&page=$matches[2]";s:29:"team_members/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"team_members/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"team_members/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"team_members/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"team_members/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"cabins/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"cabins/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"cabins/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"cabins/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"cabins/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"cabins/([^/]+)/trackback/?$";s:33:"index.php?cabins=$matches[1]&tb=1";s:35:"cabins/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?cabins=$matches[1]&paged=$matches[2]";s:42:"cabins/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?cabins=$matches[1]&cpage=$matches[2]";s:27:"cabins/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?cabins=$matches[1]&page=$matches[2]";s:23:"cabins/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"cabins/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"cabins/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"cabins/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"cabins/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(327, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=428 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1456801835:1'),
(3, 5, '_edit_last', '1'),
(4, 5, 'field_56d4ffb3d0f26', 'a:12:{s:3:"key";s:19:"field_56d4ffb3d0f26";s:5:"label";s:8:"Order by";s:4:"name";s:8:"order_by";s:4:"type";s:6:"select";s:12:"instructions";s:33:"how you would like to order posts";s:8:"required";s:1:"0";s:7:"choices";a:2:{s:14:"Date Published";s:14:"Date Published";s:6:"Author";s:6:"Author";}s:13:"default_value";s:14:"Date Published";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(6, 5, 'position', 'normal'),
(7, 5, 'layout', 'default'),
(8, 5, 'hide_on_screen', ''),
(9, 5, '_edit_lock', '1457300680:1'),
(11, 5, 'field_56d501060eda9', 'a:13:{s:3:"key";s:19:"field_56d501060eda9";s:5:"label";s:5:"order";s:4:"name";s:5:"order";s:4:"type";s:5:"radio";s:12:"instructions";s:26:"Set the ordering direction";s:8:"required";s:1:"0";s:7:"choices";a:2:{s:9:"Ascending";s:9:"Ascending";s:10:"Descending";s:10:"Descending";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56d4ffb3d0f26";s:8:"operator";s:2:"==";s:5:"value";s:14:"Date Published";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(14, 5, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:15:"custom-post.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(15, 6, '_edit_last', '1'),
(22, 6, 'position', 'acf_after_title'),
(23, 6, 'layout', 'no_box'),
(24, 6, 'hide_on_screen', 'a:4:{i:0;s:10:"discussion";i:1;s:8:"comments";i:2;s:4:"slug";i:3;s:6:"author";}'),
(25, 6, '_edit_lock', '1457293297:1'),
(26, 7, '_edit_last', '1'),
(27, 7, '_edit_lock', '1457313179:1'),
(30, 7, '_wp_page_template', 'template-home.php'),
(31, 9, 'heading', 'A Canoe is a Terrible thing to Waste'),
(32, 9, '_heading', 'field_56d5049c738d1'),
(33, 9, 'hero_image', '8'),
(34, 9, '_hero_image', 'field_56d504a7738d2'),
(35, 9, 'column_1_content', 'AMERICA does not repel the past or what it has produced under its forms or amid other politics or the idea of castes or the old religions … accepts the lesson with calmness … is not so impatient as has been supposed that the slough still sticks to opinions and manners and literature while the life which served its requirements has passed into the new life of the new forms … perceives that the corpse is slowly borne from the eating and sleeping rooms of the house … perceives that it waits a little while in the door … that it was fittest for its days … that its action has descended to the stalwart and well shaped heir who approaches … and that he shall be fittest for his days.   1\r\nThe Americans of all nations at any time upon the earth, have probably the fullest poetical nature. The United States themselves are essentially the greatest poem. In the history of the earth hitherto the largest and most stirring appear tame and orderly to their ampler largeness and stir. Here at last is something in the doings of man that corresponds with the broadcast doings of the day and night. Here is not merely a nation but a teeming nation of nations. Here is action untied from strings necessarily blind to particulars and details magnificently moving in vast masses. Here is the hospitality which forever indicates heroes… . Here are the roughs and beards and space and ruggedness and nonchalance that the soul loves. Here the performance disdaining the trivial unapproached in the tremendous audacity of its crowds and groupings and the push of its perspective spreads with crampless and flowing breadth and showers its proflic and splendid extravagance. One sees it must indeed own the riches of the summer and winter, and need never be bankrupt while corn grows from the ground or the orchards drop apples or the bays contain fish or men beget children upon women.\r\nOther states indicate themselves in their deputies … but the genius of the United States is not best or most in its executives or legislatures, nor in its ambassadors or authors or colleges or churches or parlors, nor even in its newspapers or inventors … but always most in the common people. Their manners, speech, dress, friendship—the freshness and candor of their physiognomy—the picturesque looseness of their carriage … their deathless attachment to freedom—their aversion to anything indecorous or soft or mean—the practical acknowledgment of the citizens of one state by the citizens of all other states—the fierceness of their roused resentment—their curiosity and welcome of novelty—their self-esteem and wonderful sympathy—their susceptibility to a slight—the air they have of persons who never knew how it felt to stand in the presence of superiors—the fluency of their speech—their delight in music, the sure symptom of manly tenderness and native elegance of soul … their good temper and open handedness—the terrible significance of their elections—the President’s taking off his hat to them, not they to him—these too are unrhymed poetry. It awaits the gigantic and generous treatment worthy of it.'),
(36, 9, '_column_1_content', 'field_56d504c3738d3'),
(37, 9, 'column_2_content', ''),
(38, 9, '_column_2_content', 'field_56d504df738d4'),
(39, 9, 'featured_article', '1'),
(40, 9, '_featured_article', 'field_56d504f4738d5'),
(41, 7, 'heading', 'A Canoe is a Terrible thing to Waste'),
(42, 7, '_heading', 'field_56d5049c738d1'),
(43, 7, 'hero_image', ''),
(44, 7, '_hero_image', 'field_56d63ba1f4669'),
(45, 7, 'column_1_content', 'AMERICA does not repel the past or what it has produced under its forms or amid other politics or the idea of castes or the old religions … accepts the lesson with calmness … is not so impatient as has been supposed that the slough still sticks to opinions and manners and literature while the life which served its requirements has passed into the new life of the new forms … perceives that the corpse is slowly borne from the eating and sleeping rooms of the house … perceives that it waits a little while in the door … that it was fittest for its days … that its action has descended to the stalwart and well shaped heir who approaches … and that he shall be fittest for his days.   1\r\nThe Americans of all nations at any time upon the earth, have probably the fullest poetical nature. The United States themselves are essentially the greatest poem. In the history of the earth hitherto the largest and most stirring appear tame and orderly to their ampler largeness and stir. Here at last is something in the doings of man that corresponds with the broadcast doings of the day and night. Here is not merely a nation but a teeming nation of nations. Here is action untied from strings necessarily blind to particulars and details magnificently moving in vast masses. Here is the hospitality which forever indicates heroes… . Here are the roughs and beards and space and ruggedness and nonchalance that the soul loves. Here the performance disdaining the trivial unapproached in the tremendous audacity of its crowds and groupings and the push of its perspective spreads with crampless and flowing breadth and showers its proflic and splendid extravagance. One sees it must indeed own the riches of the summer and winter, and need never be bankrupt while corn grows from the ground or the orchards drop apples or the bays contain fish or men beget children upon women.\r\nOther states indicate themselves in their deputies … but the genius of the United States is not best or most in its executives or legislatures, nor in its ambassadors or authors or colleges or churches or parlors, nor even in its newspapers or inventors … but always most in the common people. Their manners, speech, dress, friendship—the freshness and candor of their physiognomy—the picturesque looseness of their carriage … their deathless attachment to freedom—their aversion to anything indecorous or soft or mean—the practical acknowledgment of the citizens of one state by the citizens of all other states—the fierceness of their roused resentment—their curiosity and welcome of novelty—their self-esteem and wonderful sympathy—their susceptibility to a slight—the air they have of persons who never knew how it felt to stand in the presence of superiors—the fluency of their speech—their delight in music, the sure symptom of manly tenderness and native elegance of soul … their good temper and open handedness—the terrible significance of their elections—the President’s taking off his hat to them, not they to him—these too are unrhymed poetry. It awaits the gigantic and generous treatment worthy of it.'),
(46, 7, '_column_1_content', 'field_56d504c3738d3'),
(47, 7, 'column_2_content', 'The largeness of nature or the nation were monstrous without a corresponding largeness and generosity of the spirit of the citizen. Not nature nor swarming states nor streets and steamships nor prosperous business nor farms nor capital nor learning may suffice for the ideal of man … nor suffice the poet. No reminiscences may suffice either. A live nation can always cut a deep mark and can have the best authority the cheapest … namely from its own soul. This is the sum of the profitable uses of individuals or states and of present action and grandeur and of the subjects of poets.—As if it were necessary to trot back generation after generation to the eastern records! As if the beauty and sacredness of the demonstrable must fall behind that of the mythical! As if men do not make their mark out of any times! As if the opening of the western continent by discovery and what has transpired since in North and South America were less than the small theatre of the antique or the aimless sleep-walking of the middle ages! The pride of the United States leaves the wealth and finesse of the cities and all returns of commerce and agriculture and all the magnitude of geography or shows of exterior victory to enjoy the breed of full sized men or one full sized man unconquerable and simple. 4\r\nThe American poets are to enclose old and new for America is the race of races. of them a bard is to be commensurate with a people. to him the other continents arrive as contributions … he gives them reception for their sake and his own sake. His spirit responds to his country’s spirit … he incarnates its geography and natural life and rivers and lakes. Mississippi with annual freshets and changing chutes, Missouri and Columbia and Ohio and St. Lawrence with the Falls and beautiful masculine Hudson, do not embouchure where they spend themselves more than they embouchure into him. The blue breadth over the inland sea of Virginia and Maryland and the sea off Massachusetts and Maine and over Manhattan Bay and over Champlain and Erie and over Ontario and Huron and Michigan and Superior, and over the Texan and Mexican and Floridian and Cuban seas, and over the seas off California and Oregon, is not tallied by the blue breadth of the waters below more than the breadth of above and below is tallied by him. When the long Atlantic coast stretches longer and the Pacific coast stretches longer he easily stretches with them north or south. He spans between them also from east to west and reflects what is between them. On him rise solid growths that offset the growths of pine and cedar and hemlock and live oak and locust and chestnut and cypress and hickory and limetree and cottonwood and tuliptree and caotus and wildvine and tamarind and persimmon … and tangles as tangled as any canebrake or swamp … and forests coated with transparent ice, and icicles hanging from boughs and crackling in the wind … and sides and peaks of mountains … and pasturage sweet and free as savannah or upland or prairie … with flights and songs and screams that answer those of the wild pigeon and high-hold and orchard-oriole and coot and surf-duck and red-shouldered-hawk and fish-hawk and white ibis and Indian-hen and cat-owl and water-pheasant and qua-bird and pied-sheldrake and blackbird and mockingbird and buzzard and condor and nightheron and eagle. to him the hereditary countenance descends both mother’s and father’s. to him enter the essences of the real things and past and present events—of the enormous diversity of temperature and agriculture and mines—the tribes of red aborigines—the weather-beaten vessels entering new ports or making landings on rocky coasts—the first settlements north or south—the rapid stature and muscle—the haughty defiance of ’76, and the war and peace and formation of the constitution … the Union always surrounded by blatherers and always calm and impregnable—the perpetual coming of immigrants—the wharf-hem’d cities and superior marine—the unsurveyed interior—the loghouses and clearings and wild animals and hunters and trappers … the free commerce—the fisheries and whaling and gold-digging—the endless gestation of new states—the convening of Congress every December, the members duly coming up from all climates and the uttermost parts … the noble character of the young mechanics and of all free American workmen and workwomen … the general ardor and friendliness and enterprise—the perfect equality of the female with the male … the large amativeness—the fluid movement of the population—the factories and mercantile life and laborsaving machinery—the Yankee swap—the New York firemen and the target excursion—the Southern plantation life—the character of the northeast and of the northwest and southwest—slavery and the tremulous spreading of hands to protect it, and the stern opposition to it which shall never cease till it ceases or the speaking of tongues and the moving of lips cease. For such the expression of the American poet is to be transcendent and new. It is to be indirect and not direct or descriptive or epic. Its quality goes through these to much more. Let the age and wars of other nations be chanted and their eras and characters be illustrated and that finish the verse. Not so the great psalm of the republic. Here the theme is creative and has vista. Here comes one among the well beloved stonecutters and plans with decision and science and sees the solid and beautiful forms of the future where there are now no solid forms.'),
(48, 7, '_column_2_content', 'field_56d504df738d4'),
(49, 7, 'featured_article', '1'),
(50, 7, '_featured_article', 'field_56d504f4738d5'),
(53, 10, 'heading', 'A Canoe is a Terrible thing to Waste'),
(54, 10, '_heading', 'field_56d5049c738d1'),
(55, 10, 'hero_image', '8'),
(56, 10, '_hero_image', 'field_56d504a7738d2'),
(57, 10, 'column_1_content', 'AMERICA does not repel the past or what it has produced under its forms or amid other politics or the idea of castes or the old religions … accepts the lesson with calmness … is not so impatient as has been supposed that the slough still sticks to opinions and manners and literature while the life which served its requirements has passed into the new life of the new forms … perceives that the corpse is slowly borne from the eating and sleeping rooms of the house … perceives that it waits a little while in the door … that it was fittest for its days … that its action has descended to the stalwart and well shaped heir who approaches … and that he shall be fittest for his days.   1\r\nThe Americans of all nations at any time upon the earth, have probably the fullest poetical nature. The United States themselves are essentially the greatest poem. In the history of the earth hitherto the largest and most stirring appear tame and orderly to their ampler largeness and stir. Here at last is something in the doings of man that corresponds with the broadcast doings of the day and night. Here is not merely a nation but a teeming nation of nations. Here is action untied from strings necessarily blind to particulars and details magnificently moving in vast masses. Here is the hospitality which forever indicates heroes… . Here are the roughs and beards and space and ruggedness and nonchalance that the soul loves. Here the performance disdaining the trivial unapproached in the tremendous audacity of its crowds and groupings and the push of its perspective spreads with crampless and flowing breadth and showers its proflic and splendid extravagance. One sees it must indeed own the riches of the summer and winter, and need never be bankrupt while corn grows from the ground or the orchards drop apples or the bays contain fish or men beget children upon women.\r\nOther states indicate themselves in their deputies … but the genius of the United States is not best or most in its executives or legislatures, nor in its ambassadors or authors or colleges or churches or parlors, nor even in its newspapers or inventors … but always most in the common people. Their manners, speech, dress, friendship—the freshness and candor of their physiognomy—the picturesque looseness of their carriage … their deathless attachment to freedom—their aversion to anything indecorous or soft or mean—the practical acknowledgment of the citizens of one state by the citizens of all other states—the fierceness of their roused resentment—their curiosity and welcome of novelty—their self-esteem and wonderful sympathy—their susceptibility to a slight—the air they have of persons who never knew how it felt to stand in the presence of superiors—the fluency of their speech—their delight in music, the sure symptom of manly tenderness and native elegance of soul … their good temper and open handedness—the terrible significance of their elections—the President’s taking off his hat to them, not they to him—these too are unrhymed poetry. It awaits the gigantic and generous treatment worthy of it.'),
(58, 10, '_column_1_content', 'field_56d504c3738d3'),
(59, 10, 'column_2_content', 'The largeness of nature or the nation were monstrous without a corresponding largeness and generosity of the spirit of the citizen. Not nature nor swarming states nor streets and steamships nor prosperous business nor farms nor capital nor learning may suffice for the ideal of man … nor suffice the poet. No reminiscences may suffice either. A live nation can always cut a deep mark and can have the best authority the cheapest … namely from its own soul. This is the sum of the profitable uses of individuals or states and of present action and grandeur and of the subjects of poets.—As if it were necessary to trot back generation after generation to the eastern records! As if the beauty and sacredness of the demonstrable must fall behind that of the mythical! As if men do not make their mark out of any times! As if the opening of the western continent by discovery and what has transpired since in North and South America were less than the small theatre of the antique or the aimless sleep-walking of the middle ages! The pride of the United States leaves the wealth and finesse of the cities and all returns of commerce and agriculture and all the magnitude of geography or shows of exterior victory to enjoy the breed of full sized men or one full sized man unconquerable and simple. 4\r\nThe American poets are to enclose old and new for America is the race of races. of them a bard is to be commensurate with a people. to him the other continents arrive as contributions … he gives them reception for their sake and his own sake. His spirit responds to his country’s spirit … he incarnates its geography and natural life and rivers and lakes. Mississippi with annual freshets and changing chutes, Missouri and Columbia and Ohio and St. Lawrence with the Falls and beautiful masculine Hudson, do not embouchure where they spend themselves more than they embouchure into him. The blue breadth over the inland sea of Virginia and Maryland and the sea off Massachusetts and Maine and over Manhattan Bay and over Champlain and Erie and over Ontario and Huron and Michigan and Superior, and over the Texan and Mexican and Floridian and Cuban seas, and over the seas off California and Oregon, is not tallied by the blue breadth of the waters below more than the breadth of above and below is tallied by him. When the long Atlantic coast stretches longer and the Pacific coast stretches longer he easily stretches with them north or south. He spans between them also from east to west and reflects what is between them. On him rise solid growths that offset the growths of pine and cedar and hemlock and live oak and locust and chestnut and cypress and hickory and limetree and cottonwood and tuliptree and caotus and wildvine and tamarind and persimmon … and tangles as tangled as any canebrake or swamp … and forests coated with transparent ice, and icicles hanging from boughs and crackling in the wind … and sides and peaks of mountains … and pasturage sweet and free as savannah or upland or prairie … with flights and songs and screams that answer those of the wild pigeon and high-hold and orchard-oriole and coot and surf-duck and red-shouldered-hawk and fish-hawk and white ibis and Indian-hen and cat-owl and water-pheasant and qua-bird and pied-sheldrake and blackbird and mockingbird and buzzard and condor and nightheron and eagle. to him the hereditary countenance descends both mother’s and father’s. to him enter the essences of the real things and past and present events—of the enormous diversity of temperature and agriculture and mines—the tribes of red aborigines—the weather-beaten vessels entering new ports or making landings on rocky coasts—the first settlements north or south—the rapid stature and muscle—the haughty defiance of ’76, and the war and peace and formation of the constitution … the Union always surrounded by blatherers and always calm and impregnable—the perpetual coming of immigrants—the wharf-hem’d cities and superior marine—the unsurveyed interior—the loghouses and clearings and wild animals and hunters and trappers … the free commerce—the fisheries and whaling and gold-digging—the endless gestation of new states—the convening of Congress every December, the members duly coming up from all climates and the uttermost parts … the noble character of the young mechanics and of all free American workmen and workwomen … the general ardor and friendliness and enterprise—the perfect equality of the female with the male … the large amativeness—the fluid movement of the population—the factories and mercantile life and laborsaving machinery—the Yankee swap—the New York firemen and the target excursion—the Southern plantation life—the character of the northeast and of the northwest and southwest—slavery and the tremulous spreading of hands to protect it, and the stern opposition to it which shall never cease till it ceases or the speaking of tongues and the moving of lips cease. For such the expression of the American poet is to be transcendent and new. It is to be indirect and not direct or descriptive or epic. Its quality goes through these to much more. Let the age and wars of other nations be chanted and their eras and characters be illustrated and that finish the verse. Not so the great psalm of the republic. Here the theme is creative and has vista. Here comes one among the well beloved stonecutters and plans with decision and science and sees the solid and beautiful forms of the future where there are now no solid forms.'),
(60, 10, '_column_2_content', 'field_56d504df738d4'),
(61, 10, 'featured_article', '1'),
(62, 10, '_featured_article', 'field_56d504f4738d5'),
(65, 12, 'heading', 'A Canoe is a Terrible thing to Waste'),
(66, 12, '_heading', 'field_56d5049c738d1'),
(67, 12, 'hero_image', '11'),
(68, 12, '_hero_image', 'field_56d504a7738d2'),
(69, 12, 'column_1_content', 'AMERICA does not repel the past or what it has produced under its forms or amid other politics or the idea of castes or the old religions … accepts the lesson with calmness … is not so impatient as has been supposed that the slough still sticks to opinions and manners and literature while the life which served its requirements has passed into the new life of the new forms … perceives that the corpse is slowly borne from the eating and sleeping rooms of the house … perceives that it waits a little while in the door … that it was fittest for its days … that its action has descended to the stalwart and well shaped heir who approaches … and that he shall be fittest for his days.   1\r\nThe Americans of all nations at any time upon the earth, have probably the fullest poetical nature. The United States themselves are essentially the greatest poem. In the history of the earth hitherto the largest and most stirring appear tame and orderly to their ampler largeness and stir. Here at last is something in the doings of man that corresponds with the broadcast doings of the day and night. Here is not merely a nation but a teeming nation of nations. Here is action untied from strings necessarily blind to particulars and details magnificently moving in vast masses. Here is the hospitality which forever indicates heroes… . Here are the roughs and beards and space and ruggedness and nonchalance that the soul loves. Here the performance disdaining the trivial unapproached in the tremendous audacity of its crowds and groupings and the push of its perspective spreads with crampless and flowing breadth and showers its proflic and splendid extravagance. One sees it must indeed own the riches of the summer and winter, and need never be bankrupt while corn grows from the ground or the orchards drop apples or the bays contain fish or men beget children upon women.\r\nOther states indicate themselves in their deputies … but the genius of the United States is not best or most in its executives or legislatures, nor in its ambassadors or authors or colleges or churches or parlors, nor even in its newspapers or inventors … but always most in the common people. Their manners, speech, dress, friendship—the freshness and candor of their physiognomy—the picturesque looseness of their carriage … their deathless attachment to freedom—their aversion to anything indecorous or soft or mean—the practical acknowledgment of the citizens of one state by the citizens of all other states—the fierceness of their roused resentment—their curiosity and welcome of novelty—their self-esteem and wonderful sympathy—their susceptibility to a slight—the air they have of persons who never knew how it felt to stand in the presence of superiors—the fluency of their speech—their delight in music, the sure symptom of manly tenderness and native elegance of soul … their good temper and open handedness—the terrible significance of their elections—the President’s taking off his hat to them, not they to him—these too are unrhymed poetry. It awaits the gigantic and generous treatment worthy of it.'),
(70, 12, '_column_1_content', 'field_56d504c3738d3'),
(71, 12, 'column_2_content', 'The largeness of nature or the nation were monstrous without a corresponding largeness and generosity of the spirit of the citizen. Not nature nor swarming states nor streets and steamships nor prosperous business nor farms nor capital nor learning may suffice for the ideal of man … nor suffice the poet. No reminiscences may suffice either. A live nation can always cut a deep mark and can have the best authority the cheapest … namely from its own soul. This is the sum of the profitable uses of individuals or states and of present action and grandeur and of the subjects of poets.—As if it were necessary to trot back generation after generation to the eastern records! As if the beauty and sacredness of the demonstrable must fall behind that of the mythical! As if men do not make their mark out of any times! As if the opening of the western continent by discovery and what has transpired since in North and South America were less than the small theatre of the antique or the aimless sleep-walking of the middle ages! The pride of the United States leaves the wealth and finesse of the cities and all returns of commerce and agriculture and all the magnitude of geography or shows of exterior victory to enjoy the breed of full sized men or one full sized man unconquerable and simple. 4\r\nThe American poets are to enclose old and new for America is the race of races. of them a bard is to be commensurate with a people. to him the other continents arrive as contributions … he gives them reception for their sake and his own sake. His spirit responds to his country’s spirit … he incarnates its geography and natural life and rivers and lakes. Mississippi with annual freshets and changing chutes, Missouri and Columbia and Ohio and St. Lawrence with the Falls and beautiful masculine Hudson, do not embouchure where they spend themselves more than they embouchure into him. The blue breadth over the inland sea of Virginia and Maryland and the sea off Massachusetts and Maine and over Manhattan Bay and over Champlain and Erie and over Ontario and Huron and Michigan and Superior, and over the Texan and Mexican and Floridian and Cuban seas, and over the seas off California and Oregon, is not tallied by the blue breadth of the waters below more than the breadth of above and below is tallied by him. When the long Atlantic coast stretches longer and the Pacific coast stretches longer he easily stretches with them north or south. He spans between them also from east to west and reflects what is between them. On him rise solid growths that offset the growths of pine and cedar and hemlock and live oak and locust and chestnut and cypress and hickory and limetree and cottonwood and tuliptree and caotus and wildvine and tamarind and persimmon … and tangles as tangled as any canebrake or swamp … and forests coated with transparent ice, and icicles hanging from boughs and crackling in the wind … and sides and peaks of mountains … and pasturage sweet and free as savannah or upland or prairie … with flights and songs and screams that answer those of the wild pigeon and high-hold and orchard-oriole and coot and surf-duck and red-shouldered-hawk and fish-hawk and white ibis and Indian-hen and cat-owl and water-pheasant and qua-bird and pied-sheldrake and blackbird and mockingbird and buzzard and condor and nightheron and eagle. to him the hereditary countenance descends both mother’s and father’s. to him enter the essences of the real things and past and present events—of the enormous diversity of temperature and agriculture and mines—the tribes of red aborigines—the weather-beaten vessels entering new ports or making landings on rocky coasts—the first settlements north or south—the rapid stature and muscle—the haughty defiance of ’76, and the war and peace and formation of the constitution … the Union always surrounded by blatherers and always calm and impregnable—the perpetual coming of immigrants—the wharf-hem’d cities and superior marine—the unsurveyed interior—the loghouses and clearings and wild animals and hunters and trappers … the free commerce—the fisheries and whaling and gold-digging—the endless gestation of new states—the convening of Congress every December, the members duly coming up from all climates and the uttermost parts … the noble character of the young mechanics and of all free American workmen and workwomen … the general ardor and friendliness and enterprise—the perfect equality of the female with the male … the large amativeness—the fluid movement of the population—the factories and mercantile life and laborsaving machinery—the Yankee swap—the New York firemen and the target excursion—the Southern plantation life—the character of the northeast and of the northwest and southwest—slavery and the tremulous spreading of hands to protect it, and the stern opposition to it which shall never cease till it ceases or the speaking of tongues and the moving of lips cease. For such the expression of the American poet is to be transcendent and new. It is to be indirect and not direct or descriptive or epic. Its quality goes through these to much more. Let the age and wars of other nations be chanted and their eras and characters be illustrated and that finish the verse. Not so the great psalm of the republic. Here the theme is creative and has vista. Here comes one among the well beloved stonecutters and plans with decision and science and sees the solid and beautiful forms of the future where there are now no solid forms.'),
(72, 12, '_column_2_content', 'field_56d504df738d4'),
(73, 12, 'featured_article', '1'),
(74, 12, '_featured_article', 'field_56d504f4738d5'),
(75, 13, '_menu_item_type', 'custom'),
(76, 13, '_menu_item_menu_item_parent', '0'),
(77, 13, '_menu_item_object_id', '13'),
(78, 13, '_menu_item_object', 'custom'),
(79, 13, '_menu_item_target', ''),
(80, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 13, '_menu_item_xfn', ''),
(82, 13, '_menu_item_url', 'http://batestillman.com/mcad/'),
(102, 2, '_wp_trash_meta_status', 'publish'),
(103, 2, '_wp_trash_meta_time', '1456803618'),
(104, 17, '_edit_last', '1'),
(105, 17, '_wp_page_template', 'default'),
(106, 17, '_edit_lock', '1456803493:1'),
(107, 19, '_edit_last', '1'),
(108, 19, '_wp_page_template', 'default'),
(109, 19, '_edit_lock', '1456803502:1'),
(110, 21, '_edit_last', '1'),
(111, 21, '_wp_page_template', 'default'),
(112, 21, '_edit_lock', '1456803548:1'),
(113, 23, '_edit_last', '1'),
(114, 23, '_wp_page_template', 'default'),
(115, 23, '_edit_lock', '1456803554:1'),
(116, 25, '_edit_last', '1'),
(117, 25, '_wp_page_template', 'default'),
(118, 25, '_edit_lock', '1456803560:1'),
(119, 27, '_edit_last', '1'),
(120, 27, '_wp_page_template', 'default'),
(121, 27, '_edit_lock', '1456803583:1'),
(122, 29, '_menu_item_type', 'post_type'),
(123, 29, '_menu_item_menu_item_parent', '0'),
(124, 29, '_menu_item_object_id', '27'),
(125, 29, '_menu_item_object', 'page'),
(126, 29, '_menu_item_target', ''),
(127, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(128, 29, '_menu_item_xfn', ''),
(129, 29, '_menu_item_url', ''),
(131, 30, '_menu_item_type', 'post_type'),
(132, 30, '_menu_item_menu_item_parent', '0'),
(133, 30, '_menu_item_object_id', '25'),
(134, 30, '_menu_item_object', 'page'),
(135, 30, '_menu_item_target', ''),
(136, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 30, '_menu_item_xfn', ''),
(138, 30, '_menu_item_url', ''),
(140, 31, '_menu_item_type', 'post_type'),
(141, 31, '_menu_item_menu_item_parent', '0'),
(142, 31, '_menu_item_object_id', '23'),
(143, 31, '_menu_item_object', 'page'),
(144, 31, '_menu_item_target', ''),
(145, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 31, '_menu_item_xfn', ''),
(147, 31, '_menu_item_url', ''),
(149, 32, '_menu_item_type', 'post_type'),
(150, 32, '_menu_item_menu_item_parent', '0'),
(151, 32, '_menu_item_object_id', '21'),
(152, 32, '_menu_item_object', 'page'),
(153, 32, '_menu_item_target', ''),
(154, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 32, '_menu_item_xfn', ''),
(156, 32, '_menu_item_url', ''),
(158, 33, '_menu_item_type', 'post_type'),
(159, 33, '_menu_item_menu_item_parent', '0'),
(160, 33, '_menu_item_object_id', '19'),
(161, 33, '_menu_item_object', 'page'),
(162, 33, '_menu_item_target', ''),
(163, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 33, '_menu_item_xfn', ''),
(165, 33, '_menu_item_url', ''),
(167, 34, '_menu_item_type', 'post_type'),
(168, 34, '_menu_item_menu_item_parent', '0'),
(169, 34, '_menu_item_object_id', '17'),
(170, 34, '_menu_item_object', 'page'),
(171, 34, '_menu_item_target', ''),
(172, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 34, '_menu_item_xfn', ''),
(174, 34, '_menu_item_url', ''),
(176, 1, '_wp_trash_meta_status', 'publish'),
(177, 1, '_wp_trash_meta_time', '1456805109'),
(178, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(179, 36, '_edit_last', '1'),
(180, 36, '_edit_lock', '1456804984:1'),
(182, 38, '_edit_last', '1'),
(184, 38, '_edit_lock', '1456804996:1'),
(185, 40, '_edit_last', '1'),
(187, 40, '_edit_lock', '1456805009:1'),
(188, 42, '_edit_last', '1'),
(190, 42, '_edit_lock', '1456805023:1'),
(191, 44, '_edit_last', '1'),
(193, 44, '_edit_lock', '1456805036:1'),
(194, 46, '_edit_last', '1'),
(195, 46, '_edit_lock', '1456805052:1'),
(197, 48, '_edit_last', '1'),
(199, 48, '_edit_lock', '1456805063:1'),
(200, 50, '_edit_last', '1'),
(202, 50, '_edit_lock', '1456805621:1'),
(203, 52, '_menu_item_type', 'post_type'),
(204, 52, '_menu_item_menu_item_parent', '34'),
(205, 52, '_menu_item_object_id', '50'),
(206, 52, '_menu_item_object', 'post'),
(207, 52, '_menu_item_target', ''),
(208, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 52, '_menu_item_xfn', ''),
(210, 52, '_menu_item_url', ''),
(212, 53, '_menu_item_type', 'post_type'),
(213, 53, '_menu_item_menu_item_parent', '34'),
(214, 53, '_menu_item_object_id', '48'),
(215, 53, '_menu_item_object', 'post'),
(216, 53, '_menu_item_target', ''),
(217, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 53, '_menu_item_xfn', ''),
(219, 53, '_menu_item_url', ''),
(221, 54, '_menu_item_type', 'post_type'),
(222, 54, '_menu_item_menu_item_parent', '34'),
(223, 54, '_menu_item_object_id', '46'),
(224, 54, '_menu_item_object', 'post'),
(225, 54, '_menu_item_target', ''),
(226, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(227, 54, '_menu_item_xfn', ''),
(228, 54, '_menu_item_url', ''),
(230, 55, '_menu_item_type', 'post_type'),
(231, 55, '_menu_item_menu_item_parent', '34'),
(232, 55, '_menu_item_object_id', '44'),
(233, 55, '_menu_item_object', 'post'),
(234, 55, '_menu_item_target', ''),
(235, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(236, 55, '_menu_item_xfn', ''),
(237, 55, '_menu_item_url', ''),
(239, 56, '_menu_item_type', 'post_type'),
(240, 56, '_menu_item_menu_item_parent', '34'),
(241, 56, '_menu_item_object_id', '42'),
(242, 56, '_menu_item_object', 'post'),
(243, 56, '_menu_item_target', ''),
(244, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 56, '_menu_item_xfn', ''),
(246, 56, '_menu_item_url', ''),
(248, 57, '_menu_item_type', 'post_type'),
(249, 57, '_menu_item_menu_item_parent', '34'),
(250, 57, '_menu_item_object_id', '40'),
(251, 57, '_menu_item_object', 'post'),
(252, 57, '_menu_item_target', ''),
(253, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 57, '_menu_item_xfn', ''),
(255, 57, '_menu_item_url', ''),
(257, 58, '_menu_item_type', 'post_type'),
(258, 58, '_menu_item_menu_item_parent', '34'),
(259, 58, '_menu_item_object_id', '38'),
(260, 58, '_menu_item_object', 'post'),
(261, 58, '_menu_item_target', ''),
(262, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 58, '_menu_item_xfn', ''),
(264, 58, '_menu_item_url', ''),
(266, 59, '_menu_item_type', 'post_type'),
(267, 59, '_menu_item_menu_item_parent', '34'),
(268, 59, '_menu_item_object_id', '36'),
(269, 59, '_menu_item_object', 'post'),
(270, 59, '_menu_item_target', ''),
(271, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 59, '_menu_item_xfn', ''),
(273, 59, '_menu_item_url', ''),
(282, 60, 'hero_image', '11'),
(283, 60, '_hero_image', 'field_56d63ba1f4669'),
(284, 60, 'image_text', '<h1>A Place to Work</h1>\r\n<h2>Without Distraction</h2>'),
(285, 60, '_image_text', 'field_56d63bccf466a'),
(286, 7, 'image_text', ''),
(287, 7, '_image_text', 'field_56d63bccf466a'),
(290, 61, 'hero_image', '8'),
(291, 61, '_hero_image', 'field_56d63ba1f4669'),
(292, 61, 'image_text', '<h1>A Place to Work</h1>\r\n<h2>Without Distraction</h2>'),
(293, 61, '_image_text', 'field_56d63bccf466a'),
(295, 62, 'hero_image', ''),
(296, 62, '_hero_image', 'field_56d63ba1f4669'),
(297, 62, 'image_text', ''),
(298, 62, '_image_text', 'field_56d63bccf466a'),
(299, 6, 'field_56dc752ed27c3', 'a:14:{s:3:"key";s:19:"field_56dc752ed27c3";s:5:"label";s:15:"image caption 1";s:4:"name";s:15:"image_caption_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(300, 6, 'field_56dc755fd27c4', 'a:14:{s:3:"key";s:19:"field_56dc755fd27c4";s:5:"label";s:19:"image sub caption 1";s:4:"name";s:19:"image_sub_caption_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(301, 6, 'field_56dc7586d27c5', 'a:11:{s:3:"key";s:19:"field_56dc7586d27c5";s:5:"label";s:7:"image 1";s:4:"name";s:7:"image_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(302, 6, 'field_56dc75aad27c6', 'a:14:{s:3:"key";s:19:"field_56dc75aad27c6";s:5:"label";s:15:"image caption 2";s:4:"name";s:15:"image_caption_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(303, 6, 'field_56dc75b7d27c7', 'a:14:{s:3:"key";s:19:"field_56dc75b7d27c7";s:5:"label";s:19:"image sub caption 2";s:4:"name";s:19:"image_sub_caption_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(304, 6, 'field_56dc75c0d27c8', 'a:11:{s:3:"key";s:19:"field_56dc75c0d27c8";s:5:"label";s:7:"image 2";s:4:"name";s:7:"image_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(305, 6, 'field_56dc75ccd27c9', 'a:14:{s:3:"key";s:19:"field_56dc75ccd27c9";s:5:"label";s:15:"image caption 3";s:4:"name";s:15:"image_caption_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(306, 6, 'field_56dc75d8d27ca', 'a:14:{s:3:"key";s:19:"field_56dc75d8d27ca";s:5:"label";s:19:"image sub caption 3";s:4:"name";s:19:"image_sub_caption_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(307, 6, 'field_56dc75ded27cb', 'a:11:{s:3:"key";s:19:"field_56dc75ded27cb";s:5:"label";s:7:"image 3";s:4:"name";s:7:"image_3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(308, 6, 'field_56dc75f2d27cc', 'a:14:{s:3:"key";s:19:"field_56dc75f2d27cc";s:5:"label";s:0:"";s:4:"name";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(310, 63, '_wp_attached_file', '2016/03/image_1.jpg'),
(311, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:19:"2016/03/image_1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"image_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"image_1-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(312, 64, '_wp_attached_file', '2016/03/image_2.jpg'),
(313, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:19:"2016/03/image_2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"image_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"image_2-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(314, 65, '_wp_attached_file', '2016/03/image_3.jpg'),
(315, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:19:"2016/03/image_3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"image_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"image_3-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(316, 66, 'image_caption_1', 'A place to work'),
(317, 66, '_image_caption_1', 'field_56dc752ed27c3'),
(318, 66, 'image_sub_caption_1', 'without distraction'),
(319, 66, '_image_sub_caption_1', 'field_56dc755fd27c4'),
(320, 66, 'image_1', '63'),
(321, 66, '_image_1', 'field_56dc7586d27c5'),
(322, 66, 'image_caption_2', 'Monastic Environment'),
(323, 66, '_image_caption_2', 'field_56dc75aad27c6'),
(324, 66, 'image_sub_caption_2', 'Wisconsin woodlands, natural waterfall'),
(325, 66, '_image_sub_caption_2', 'field_56dc75b7d27c7'),
(326, 66, 'image_2', '64'),
(327, 66, '_image_2', 'field_56dc75c0d27c8'),
(328, 66, 'image_caption_3', 'work/live studio cabins'),
(329, 66, '_image_caption_3', 'field_56dc75ccd27c9'),
(330, 66, 'image_sub_caption_3', 'designed for specific art-practices'),
(331, 66, '_image_sub_caption_3', 'field_56dc75d8d27ca'),
(332, 66, 'image_3', '65'),
(333, 66, '_image_3', 'field_56dc75ded27cb'),
(334, 66, '_', 'field_56dc75f2d27cc'),
(335, 7, 'image_caption_1', 'A place to work'),
(336, 7, '_image_caption_1', 'field_56dc752ed27c3'),
(337, 7, 'image_sub_caption_1', 'without distraction'),
(338, 7, '_image_sub_caption_1', 'field_56dc755fd27c4'),
(339, 7, 'image_1', '63'),
(340, 7, '_image_1', 'field_56dc7586d27c5'),
(341, 7, 'image_caption_2', 'Monastic Environment'),
(342, 7, '_image_caption_2', 'field_56dc75aad27c6'),
(343, 7, 'image_sub_caption_2', 'Wisconsin woodlands, natural waterfall'),
(344, 7, '_image_sub_caption_2', 'field_56dc75b7d27c7'),
(345, 7, 'image_2', '64'),
(346, 7, '_image_2', 'field_56dc75c0d27c8'),
(347, 7, 'image_caption_3', 'work/live studio cabins'),
(348, 7, '_image_caption_3', 'field_56dc75ccd27c9'),
(349, 7, 'image_sub_caption_3', 'designed for specific art-practices'),
(350, 7, '_image_sub_caption_3', 'field_56dc75d8d27ca'),
(351, 7, 'image_3', '65'),
(352, 7, '_image_3', 'field_56dc75ded27cb'),
(353, 7, '_', 'field_56dc75f2d27cc'),
(354, 6, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"template-home.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(355, 68, '_edit_last', '1'),
(356, 68, 'field_56dca5722b3f4', 'a:14:{s:3:"key";s:19:"field_56dca5722b3f4";s:5:"label";s:9:"Job Title";s:4:"name";s:9:"job_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(357, 68, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"team_member";s:8:"order_no";i:0;s:8:"group_no";i:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(358, 68, 'position', 'normal'),
(359, 68, 'layout', 'no_box'),
(360, 68, 'hide_on_screen', ''),
(361, 68, '_edit_lock', '1457314738:1'),
(362, 69, '_edit_last', '1'),
(363, 69, '_edit_lock', '1457302678:1'),
(364, 69, 'job_title', 'In the world of the skunks the man with half a nose is king'),
(365, 69, '_job_title', 'field_56dca5722b3f4'),
(366, 70, '_edit_last', '1'),
(367, 70, 'field_56dcad68339e7', 'a:10:{s:3:"key";s:19:"field_56dcad68339e7";s:5:"label";s:13:"Image Gallery";s:4:"name";s:13:"image_gallery";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(368, 70, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:20:"template-gallery.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(369, 70, 'position', 'normal'),
(370, 70, 'layout', 'no_box'),
(371, 70, 'hide_on_screen', ''),
(372, 70, '_edit_lock', '1457302936:1'),
(373, 71, '_edit_last', '1'),
(374, 71, '_edit_lock', '1457303045:1'),
(375, 72, '_wp_attached_file', '2016/03/boundaryWaters.jpg'),
(376, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1231;s:6:"height";i:582;s:4:"file";s:26:"2016/03/boundaryWaters.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"boundaryWaters-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"boundaryWaters-300x142.jpg";s:5:"width";i:300;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"boundaryWaters-1024x484.jpg";s:5:"width";i:1024;s:6:"height";i:484;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(377, 73, '_wp_attached_file', '2016/03/fence_post_colorado.jpg'),
(378, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:525;s:6:"height";i:328;s:4:"file";s:31:"2016/03/fence_post_colorado.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"fence_post_colorado-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"fence_post_colorado-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(379, 74, '_wp_attached_file', '2016/03/mount_hood.jpg'),
(380, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:525;s:6:"height";i:292;s:4:"file";s:22:"2016/03/mount_hood.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"mount_hood-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"mount_hood-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(381, 71, '_wp_page_template', 'template-gallery.php'),
(382, 75, 'image_gallery', 'a:3:{i:0;s:2:"72";i:1;s:2:"73";i:2;s:2:"74";}'),
(383, 75, '_image_gallery', 'field_56dcad68339e7'),
(384, 71, 'image_gallery', 'a:3:{i:0;s:2:"72";i:1;s:2:"73";i:2;s:2:"74";}'),
(385, 71, '_image_gallery', 'field_56dcad68339e7'),
(386, 76, '_wp_attached_file', '2016/03/social_icons-16.png'),
(387, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:534;s:6:"height";i:534;s:4:"file";s:27:"2016/03/social_icons-16.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social_icons-16-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"social_icons-16-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(388, 77, '_wp_attached_file', '2016/03/social_icons-17.png'),
(389, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:534;s:6:"height";i:534;s:4:"file";s:27:"2016/03/social_icons-17.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social_icons-17-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"social_icons-17-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(390, 78, '_wp_attached_file', '2016/03/social_icons-19.png'),
(391, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:534;s:6:"height";i:534;s:4:"file";s:27:"2016/03/social_icons-19.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social_icons-19-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"social_icons-19-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(392, 79, '_wp_attached_file', '2016/03/social_icons-21.png'),
(393, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:534;s:6:"height";i:534;s:4:"file";s:27:"2016/03/social_icons-21.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"social_icons-21-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"social_icons-21-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(394, 80, '_edit_last', '1'),
(395, 80, 'field_56dcd89050300', 'a:11:{s:3:"key";s:19:"field_56dcd89050300";s:5:"label";s:16:"Background Image";s:4:"name";s:16:"background_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(396, 80, 'field_56dcd8d750301', 'a:11:{s:3:"key";s:19:"field_56dcd8d750301";s:5:"label";s:10:"main image";s:4:"name";s:10:"main_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(397, 80, 'field_56dcdaa350302', 'a:10:{s:3:"key";s:19:"field_56dcdaa350302";s:5:"label";s:17:"Thumbnail Gallery";s:4:"name";s:17:"thumbnail_gallery";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(398, 80, 'field_56dcdabc50303', 'a:14:{s:3:"key";s:19:"field_56dcdabc50303";s:5:"label";s:10:"Cabin Name";s:4:"name";s:10:"cabin_name";s:4:"type";s:4:"text";s:12:"instructions";s:17:"Name of the Cabin";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(399, 80, 'field_56dcdaec50304', 'a:13:{s:3:"key";s:19:"field_56dcdaec50304";s:5:"label";s:17:"Cabin Description";s:4:"name";s:17:"cabin_description";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:30:"Enter description of the Cabin";s:9:"maxlength";s:0:"";s:4:"rows";s:2:"25";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(400, 80, 'field_56dcdb4e50305', 'a:12:{s:3:"key";s:19:"field_56dcdb4e50305";s:5:"label";s:6:"Button";s:4:"name";s:6:"button";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:0:{}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(401, 80, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"cabins";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(402, 80, 'position', 'normal'),
(403, 80, 'layout', 'no_box'),
(404, 80, 'hide_on_screen', ''),
(405, 80, '_edit_lock', '1457316281:1'),
(406, 81, '_edit_last', '1'),
(407, 81, '_edit_lock', '1457316743:1'),
(408, 82, '_wp_attached_file', '2016/03/painters_background.jpg'),
(409, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:31:"2016/03/painters_background.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"painters_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"painters_background-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(410, 83, '_wp_attached_file', '2016/03/painters-cabin.jpg'),
(411, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:508;s:6:"height";i:401;s:4:"file";s:26:"2016/03/painters-cabin.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"painters-cabin-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"painters-cabin-300x237.jpg";s:5:"width";i:300;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(412, 84, '_wp_attached_file', '2016/03/image_31.jpg'),
(413, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:20:"2016/03/image_31.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"image_31-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"image_31-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(414, 85, '_wp_attached_file', '2016/03/painters_thumb-1.jpg'),
(415, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:313;s:6:"height";i:408;s:4:"file";s:28:"2016/03/painters_thumb-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"painters_thumb-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"painters_thumb-1-230x300.jpg";s:5:"width";i:230;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(416, 86, '_wp_attached_file', '2016/03/painters_thumb-2.jpg'),
(417, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:407;s:4:"file";s:28:"2016/03/painters_thumb-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"painters_thumb-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"painters_thumb-2-231x300.jpg";s:5:"width";i:231;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(418, 81, 'background_image', '82'),
(419, 81, '_background_image', 'field_56dcd89050300'),
(420, 81, 'main_image', '83'),
(421, 81, '_main_image', 'field_56dcd8d750301'),
(422, 81, 'thumbnail_gallery', 'a:3:{i:0;s:2:"85";i:1;s:2:"86";i:2;s:2:"83";}'),
(423, 81, '_thumbnail_gallery', 'field_56dcdaa350302'),
(424, 81, 'cabin_name', 'Orchard Painter''s Cabin'),
(425, 81, '_cabin_name', 'field_56dcdabc50303'),
(426, 81, 'cabin_description', 'Filled with natural northern light, the Painter''s Cabin is perfect for oil, watercolor and acrylic painters.\r\n\r\n<h3>Art making features:</h3>\r\n<ul>\r\n<li>12'' x 16'' plywood painting wall</li>\r\n<li>Utility sink</li>\r\n<li>Rolling cart/palette table</li>\r\n<li>Folding easel</li>\r\n<li>Access to wood shop</li>\r\n</ul>\r\n\r\n<h3>Standard cabin features include:</h3>\r\n<ul>\r\n<li>2-top stove</li>\r\n<li>Small refrigerator</li>\r\n<li>Microwave</li>\r\n<li>Queen size bed</li>\r\n<li>Dresser</li>\r\n<li>Dinning table/chairs</li>\r\n<li>Lounge chair</li>\r\n</ul>\r\n\r\n'),
(427, 81, '_cabin_description', 'field_56dcdaec50304');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=87 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-29 05:49:35', '2016-02-29 05:49:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2016-03-01 04:05:09', '2016-03-01 04:05:09', '', 0, 'http://wtillman.studio.mcad.edu/wtillman_sanctuary?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-29 05:49:35', '2016-02-29 05:49:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wtillman.studio.mcad.edu/wtillman_sanctuarywp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page', '', '', '2016-03-01 03:40:18', '2016-03-01 03:40:18', '', 0, 'http://wtillman.studio.mcad.edu/wtillman_sanctuary?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-03-01 02:35:55', '2016-03-01 02:35:55', '', 'Post List Options', '', 'publish', 'closed', 'closed', '', 'acf_post-list-options', '', '', '2016-03-01 02:42:21', '2016-03-01 02:42:21', '', 0, 'http://batestillman.com/mcad/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 1, '2016-03-01 03:01:13', '2016-03-01 03:01:13', '', 'Home Page Fields', '', 'publish', 'closed', 'closed', '', 'acf_home-page-fields', '', '', '2016-03-06 19:43:59', '2016-03-06 19:43:59', '', 0, 'http://batestillman.com/mcad/?post_type=acf&#038;p=6', 0, 'acf', '', 0),
(7, 1, '2016-03-01 03:07:31', '2016-03-01 03:07:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-03-06 18:54:19', '2016-03-06 18:54:19', '', 0, 'http://batestillman.com/mcad/?page_id=7', 0, 'page', '', 0),
(9, 1, '2016-03-01 03:07:31', '2016-03-01 03:07:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-01 03:07:31', '2016-03-01 03:07:31', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-03-01 03:26:14', '2016-03-01 03:26:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-01 03:26:14', '2016-03-01 03:26:14', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-03-01 03:27:04', '2016-03-01 03:27:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-01 03:27:04', '2016-03-01 03:27:04', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-03-01 03:39:31', '2016-03-01 03:39:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=13', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-03-01 03:40:18', '2016-03-01 03:40:18', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wtillman.studio.mcad.edu/wtillman_sanctuarywp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-03-01 03:40:18', '2016-03-01 03:40:18', '', 2, 'http://batestillman.com/mcad/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-03-01 03:40:35', '2016-03-01 03:40:35', '', 'Studio Cabins', '', 'publish', 'closed', 'closed', '', 'studio-cabins', '', '', '2016-03-01 03:40:35', '2016-03-01 03:40:35', '', 0, 'http://batestillman.com/mcad/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-03-01 03:40:35', '2016-03-01 03:40:35', '', 'Studio Cabins', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-03-01 03:40:35', '2016-03-01 03:40:35', '', 17, 'http://batestillman.com/mcad/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-03-01 03:40:44', '2016-03-01 03:40:44', '', 'Apply', '', 'publish', 'closed', 'closed', '', 'apply', '', '', '2016-03-01 03:40:44', '2016-03-01 03:40:44', '', 0, 'http://batestillman.com/mcad/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-03-01 03:40:44', '2016-03-01 03:40:44', '', 'Apply', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-03-01 03:40:44', '2016-03-01 03:40:44', '', 19, 'http://batestillman.com/mcad/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-03-01 03:41:28', '2016-03-01 03:41:28', '', 'Meals', '', 'publish', 'closed', 'closed', '', 'meals', '', '', '2016-03-01 03:41:28', '2016-03-01 03:41:28', '', 0, 'http://batestillman.com/mcad/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-03-01 03:41:28', '2016-03-01 03:41:28', '', 'Meals', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-03-01 03:41:28', '2016-03-01 03:41:28', '', 21, 'http://batestillman.com/mcad/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-03-01 03:41:37', '2016-03-01 03:41:37', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2016-03-01 03:41:37', '2016-03-01 03:41:37', '', 0, 'http://batestillman.com/mcad/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-03-01 03:41:37', '2016-03-01 03:41:37', '', 'Events', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-03-01 03:41:37', '2016-03-01 03:41:37', '', 23, 'http://batestillman.com/mcad/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-03-01 03:41:43', '2016-03-01 03:41:43', '', 'Location', '', 'publish', 'closed', 'closed', '', 'location', '', '', '2016-03-01 03:41:43', '2016-03-01 03:41:43', '', 0, 'http://batestillman.com/mcad/?page_id=25', 0, 'page', '', 0),
(26, 1, '2016-03-01 03:41:43', '2016-03-01 03:41:43', '', 'Location', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-03-01 03:41:43', '2016-03-01 03:41:43', '', 25, 'http://batestillman.com/mcad/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-03-01 03:41:49', '2016-03-01 03:41:49', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-03-01 03:41:49', '2016-03-01 03:41:49', '', 0, 'http://batestillman.com/mcad/?page_id=27', 0, 'page', '', 0),
(28, 1, '2016-03-01 03:41:49', '2016-03-01 03:41:49', '', 'About', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-03-01 03:41:49', '2016-03-01 03:41:49', '', 27, 'http://batestillman.com/mcad/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-03-01 03:43:10', '2016-03-01 03:43:10', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=29', 15, 'nav_menu_item', '', 0),
(30, 1, '2016-03-01 03:43:10', '2016-03-01 03:43:10', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=30', 14, 'nav_menu_item', '', 0),
(31, 1, '2016-03-01 03:43:10', '2016-03-01 03:43:10', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=31', 13, 'nav_menu_item', '', 0),
(32, 1, '2016-03-01 03:43:10', '2016-03-01 03:43:10', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=32', 12, 'nav_menu_item', '', 0),
(33, 1, '2016-03-01 03:43:10', '2016-03-01 03:43:10', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=33', 11, 'nav_menu_item', '', 0),
(34, 1, '2016-03-01 03:43:10', '2016-03-01 03:43:10', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2016-03-01 04:05:09', '2016-03-01 04:05:09', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-01 04:05:09', '2016-03-01 04:05:09', '', 1, 'http://batestillman.com/mcad/1-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-03-01 04:05:26', '2016-03-01 04:05:26', '', 'Hillside Painter''s Cabin', '', 'publish', 'open', 'open', '', 'hillside-painters-cabin', '', '', '2016-03-01 04:05:26', '2016-03-01 04:05:26', '', 0, 'http://batestillman.com/mcad/?p=36', 0, 'post', '', 0),
(37, 1, '2016-03-01 04:05:26', '2016-03-01 04:05:26', '', 'Hillside Painter''s Cabin', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-03-01 04:05:26', '2016-03-01 04:05:26', '', 36, 'http://batestillman.com/mcad/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-03-01 04:05:38', '2016-03-01 04:05:38', '', 'Orchard Painter''s Cabin', '', 'publish', 'open', 'open', '', 'orchard-painters-cabin', '', '', '2016-03-01 04:05:38', '2016-03-01 04:05:38', '', 0, 'http://batestillman.com/mcad/?p=38', 0, 'post', '', 0),
(39, 1, '2016-03-01 04:05:38', '2016-03-01 04:05:38', '', 'Orchard Painter''s Cabin', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-03-01 04:05:38', '2016-03-01 04:05:38', '', 38, 'http://batestillman.com/mcad/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-03-01 04:05:52', '2016-03-01 04:05:52', '', 'Prarie Ceramics Cabin', '', 'publish', 'open', 'open', '', 'prarie-ceramics-cabin', '', '', '2016-03-01 04:05:52', '2016-03-01 04:05:52', '', 0, 'http://batestillman.com/mcad/?p=40', 0, 'post', '', 0),
(41, 1, '2016-03-01 04:05:52', '2016-03-01 04:05:52', '', 'Prarie Ceramics Cabin', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2016-03-01 04:05:52', '2016-03-01 04:05:52', '', 40, 'http://batestillman.com/mcad/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-03-01 04:06:04', '2016-03-01 04:06:04', '', 'Woodland Ceramics Cabin', '', 'publish', 'open', 'open', '', 'woodland-ceramics-cabin', '', '', '2016-03-01 04:06:04', '2016-03-01 04:06:04', '', 0, 'http://batestillman.com/mcad/?p=42', 0, 'post', '', 0),
(43, 1, '2016-03-01 04:06:04', '2016-03-01 04:06:04', '', 'Woodland Ceramics Cabin', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2016-03-01 04:06:04', '2016-03-01 04:06:04', '', 42, 'http://batestillman.com/mcad/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-03-01 04:06:18', '2016-03-01 04:06:18', '', 'Woodworkers Cabin', '', 'publish', 'open', 'open', '', 'woodworkers-cabin', '', '', '2016-03-01 04:06:18', '2016-03-01 04:06:18', '', 0, 'http://batestillman.com/mcad/?p=44', 0, 'post', '', 0),
(45, 1, '2016-03-01 04:06:18', '2016-03-01 04:06:18', '', 'Woodworkers Cabin', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-03-01 04:06:18', '2016-03-01 04:06:18', '', 44, 'http://batestillman.com/mcad/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-03-01 04:06:35', '2016-03-01 04:06:35', '', 'Hillside Writers Cabin', '', 'publish', 'open', 'open', '', 'hillside-writers-cabin', '', '', '2016-03-01 04:06:35', '2016-03-01 04:06:35', '', 0, 'http://batestillman.com/mcad/?p=46', 0, 'post', '', 0),
(47, 1, '2016-03-01 04:06:35', '2016-03-01 04:06:35', '', 'Hillside Writers Cabin', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-03-01 04:06:35', '2016-03-01 04:06:35', '', 46, 'http://batestillman.com/mcad/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-03-01 04:06:46', '2016-03-01 04:06:46', '', 'Musician''s Cabin', '', 'publish', 'open', 'open', '', 'musicians-cabin', '', '', '2016-03-01 04:06:46', '2016-03-01 04:06:46', '', 0, 'http://batestillman.com/mcad/?p=48', 0, 'post', '', 0),
(49, 1, '2016-03-01 04:06:46', '2016-03-01 04:06:46', '', 'Musician''s Cabin', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2016-03-01 04:06:46', '2016-03-01 04:06:46', '', 48, 'http://batestillman.com/mcad/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-03-01 04:06:58', '2016-03-01 04:06:58', '', 'Valley Drawing Cabin', '', 'publish', 'open', 'open', '', 'valley-drawing-cabin', '', '', '2016-03-01 04:06:58', '2016-03-01 04:06:58', '', 0, 'http://batestillman.com/mcad/?p=50', 0, 'post', '', 0),
(51, 1, '2016-03-01 04:06:58', '2016-03-01 04:06:58', '', 'Valley Drawing Cabin', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2016-03-01 04:06:58', '2016-03-01 04:06:58', '', 50, 'http://batestillman.com/mcad/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 'Musician''s Cabin', '', 'publish', 'closed', 'closed', '', 'musicians-cabin', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=54', 5, 'nav_menu_item', '', 0),
(55, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=55', 6, 'nav_menu_item', '', 0),
(56, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=56', 7, 'nav_menu_item', '', 0),
(57, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=57', 8, 'nav_menu_item', '', 0),
(58, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 'Orchard Painter''s Cabin', '', 'publish', 'closed', 'closed', '', 'orchard-painters-cabin', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=58', 9, 'nav_menu_item', '', 0),
(59, 1, '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 'Hillside Painter''s Cabin', '', 'publish', 'closed', 'closed', '', 'hillside-painters-cabin', '', '', '2016-03-01 04:13:10', '2016-03-01 04:13:10', '', 0, 'http://batestillman.com/mcad/?p=59', 10, 'nav_menu_item', '', 0),
(60, 1, '2016-03-02 01:07:48', '2016-03-02 01:07:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-02 01:07:48', '2016-03-02 01:07:48', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-03-02 01:15:14', '2016-03-02 01:15:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-02 01:15:14', '2016-03-02 01:15:14', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-03-06 17:48:25', '2016-03-06 17:48:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-06 17:48:25', '2016-03-06 17:48:25', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2016-03-06 18:38:00', '2016-03-06 18:38:00', '', 'image_1', '', 'inherit', 'open', 'closed', '', 'image_1', '', '', '2016-03-06 18:38:00', '2016-03-06 18:38:00', '', 7, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/image_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-03-06 18:38:01', '2016-03-06 18:38:01', '', 'image_2', '', 'inherit', 'open', 'closed', '', 'image_2', '', '', '2016-03-06 18:38:01', '2016-03-06 18:38:01', '', 7, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/image_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-03-06 18:38:01', '2016-03-06 18:38:01', '', 'image_3', '', 'inherit', 'open', 'closed', '', 'image_3', '', '', '2016-03-06 18:38:01', '2016-03-06 18:38:01', '', 7, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/image_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2016-03-06 18:40:20', '2016-03-06 18:40:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-03-06 18:40:20', '2016-03-06 18:40:20', '', 7, 'http://batestillman.com/mcad/7-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-03-06 21:48:06', '2016-03-06 21:48:06', '', 'Bio', '', 'publish', 'closed', 'closed', '', 'acf_bio', '', '', '2016-03-06 21:48:06', '2016-03-06 21:48:06', '', 0, 'http://batestillman.com/mcad/?post_type=acf&#038;p=68', 0, 'acf', '', 0),
(69, 1, '2016-03-06 21:49:57', '2016-03-06 21:49:57', '', 'Chris', '', 'publish', 'closed', 'closed', '', 'chris', '', '', '2016-03-06 21:49:57', '2016-03-06 21:49:57', '', 0, 'http://batestillman.com/mcad/?post_type=team_member&#038;p=69', 0, 'team_member', '', 0),
(70, 1, '2016-03-06 22:24:35', '2016-03-06 22:24:35', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'acf_gallery', '', '', '2016-03-06 22:24:35', '2016-03-06 22:24:35', '', 0, 'http://batestillman.com/mcad/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2016-03-06 22:25:48', '2016-03-06 22:25:48', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2016-03-06 22:25:48', '2016-03-06 22:25:48', '', 0, 'http://batestillman.com/mcad/?page_id=71', 0, 'page', '', 0),
(72, 1, '2016-03-06 22:25:34', '2016-03-06 22:25:34', '', 'boundaryWaters', '', 'inherit', 'open', 'closed', '', 'boundarywaters', '', '', '2016-03-06 22:25:34', '2016-03-06 22:25:34', '', 71, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/boundaryWaters.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2016-03-06 22:25:35', '2016-03-06 22:25:35', '', 'fence_post_colorado', '', 'inherit', 'open', 'closed', '', 'fence_post_colorado', '', '', '2016-03-06 22:25:35', '2016-03-06 22:25:35', '', 71, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/fence_post_colorado.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2016-03-06 22:25:36', '2016-03-06 22:25:36', '', 'mount_hood', '', 'inherit', 'open', 'closed', '', 'mount_hood', '', '', '2016-03-06 22:25:36', '2016-03-06 22:25:36', '', 71, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/mount_hood.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2016-03-06 22:25:48', '2016-03-06 22:25:48', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-03-06 22:25:48', '2016-03-06 22:25:48', '', 71, 'http://batestillman.com/mcad/71-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-03-06 22:52:46', '2016-03-06 22:52:46', '', 'social_icons-16', '', 'inherit', 'open', 'closed', '', 'social_icons-16', '', '', '2016-03-06 22:52:46', '2016-03-06 22:52:46', '', 0, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/social_icons-16.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2016-03-06 22:52:47', '2016-03-06 22:52:47', '', 'social_icons-17', '', 'inherit', 'open', 'closed', '', 'social_icons-17', '', '', '2016-03-06 22:52:47', '2016-03-06 22:52:47', '', 0, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/social_icons-17.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2016-03-06 22:52:47', '2016-03-06 22:52:47', '', 'social_icons-19', '', 'inherit', 'open', 'closed', '', 'social_icons-19', '', '', '2016-03-06 22:52:47', '2016-03-06 22:52:47', '', 0, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/social_icons-19.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2016-03-06 22:52:48', '2016-03-06 22:52:48', '', 'social_icons-21', '', 'inherit', 'open', 'closed', '', 'social_icons-21', '', '', '2016-03-06 22:52:48', '2016-03-06 22:52:48', '', 0, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/social_icons-21.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2016-03-07 01:38:46', '2016-03-07 01:38:46', '', 'Cabins', '', 'publish', 'closed', 'closed', '', 'acf_cabins', '', '', '2016-03-07 01:38:46', '2016-03-07 01:38:46', '', 0, 'http://batestillman.com/mcad/?post_type=acf&#038;p=80', 0, 'acf', '', 0),
(81, 1, '2016-03-07 01:55:38', '2016-03-07 01:55:38', '', 'Orchard Painter''s Cabin', '', 'publish', 'closed', 'closed', '', 'orchard-painters-cabin', '', '', '2016-03-07 02:03:33', '2016-03-07 02:03:33', '', 0, 'http://batestillman.com/mcad/?post_type=cabins&#038;p=81', 0, 'cabins', '', 0),
(82, 1, '2016-03-07 01:39:47', '2016-03-07 01:39:47', '', 'painters_background', '', 'inherit', 'open', 'closed', '', 'painters_background', '', '', '2016-03-07 01:39:47', '2016-03-07 01:39:47', '', 81, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/painters_background.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2016-03-07 01:46:43', '2016-03-07 01:46:43', '', 'painters-cabin', '', 'inherit', 'open', 'closed', '', 'painters-cabin', '', '', '2016-03-07 01:46:43', '2016-03-07 01:46:43', '', 81, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/painters-cabin.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2016-03-07 01:47:04', '2016-03-07 01:47:04', '', 'image_3', '', 'inherit', 'open', 'closed', '', 'image_3-2', '', '', '2016-03-07 01:47:04', '2016-03-07 01:47:04', '', 81, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/image_31.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2016-03-07 01:47:05', '2016-03-07 01:47:05', '', 'painters_thumb-1', '', 'inherit', 'open', 'closed', '', 'painters_thumb-1', '', '', '2016-03-07 01:47:05', '2016-03-07 01:47:05', '', 81, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/painters_thumb-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2016-03-07 01:47:05', '2016-03-07 01:47:05', '', 'painters_thumb-2', '', 'inherit', 'open', 'closed', '', 'painters_thumb-2', '', '', '2016-03-07 01:47:05', '2016-03-07 01:47:05', '', 81, 'http://batestillman.com/mcad/wp-content/uploads/2016/03/painters_thumb-2.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(36, 1, 0),
(38, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0),
(46, 1, 0),
(48, 1, 0),
(50, 1, 0),
(52, 2, 0),
(53, 2, 0),
(54, 2, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(2, 2, 'nav_menu', '', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wtillman'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"bed9518346eed3ad9473a89a5f4f779e08f3f3e1355d2af3aaaa83025fd2e76b";a:4:{s:10:"expiration";i:1457738858;s:2:"ip";s:14:"68.168.182.236";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1457566058;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1456801647'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wtillman', '$P$BeYDXXQ1vijfmKZgx/t3daL4g4T5TY1', 'wtillman', 'wtillman@mcad.edu', '', '2016-02-29 05:49:34', '', 0, 'wtillman');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
