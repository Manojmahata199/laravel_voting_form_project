-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2021 at 04:31 PM
-- Server version: 10.2.40-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `cat_image`) VALUES
(1, NULL, 1, 'Academia & Education', 'academia-education', '2021-10-04 09:50:31', '2021-11-05 00:47:40', 'categories\\November2021\\fG9NmmrCLAGnz5s9NbSQ.jpg'),
(2, NULL, 1, 'Health & Wellness', 'health-wellness', '2021-10-04 09:50:31', '2021-11-05 01:00:25', 'categories\\November2021\\XuSCPxEeY35dmcsZubep.jpg'),
(3, NULL, 1, 'Enterprise', 'enterprise', '2021-10-04 10:26:50', '2021-11-05 01:01:22', 'categories\\November2021\\S77HgQRAuuzdtdgV9qHw.png'),
(4, NULL, 1, 'Csr & Social Service', 'social-service', '2021-10-04 10:27:07', '2021-11-05 01:04:29', 'categories\\November2021\\vsLsWcVHdYj6seNzJFTi.jpg'),
(5, NULL, 1, 'Sports', 'sports', '2021-10-04 10:27:16', '2021-11-05 01:04:16', 'categories\\November2021\\aKhkIz96tzp96J05FH3k.jpg'),
(6, NULL, 1, 'Creative Arts (Art & Photography)', 'creative-arts', '2021-10-04 10:27:49', '2021-11-05 01:04:04', 'categories\\November2021\\3LaD3JbLQYgsqkePEvK6.png'),
(7, NULL, 1, 'Performing Arts (Music, Dance & Theatre)', 'performing-arts', '2021-10-04 10:28:30', '2021-11-05 00:54:18', 'categories\\November2021\\hql7dcaY2Mpa5NL6Wk9g.jpg'),
(8, NULL, 1, 'Literary', 'literary', '2021-10-04 10:28:45', '2021-11-05 00:45:59', 'categories\\November2021\\FjFSM64FnrHtUEAckC2w.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name of the Participant', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'birthdate', 'date', 'Date of birth', 0, 0, 1, 1, 1, 1, '{}', 4),
(59, 7, 'mobile_number', 'text', 'Mobile Number', 0, 1, 1, 1, 1, 1, '{}', 5),
(60, 7, 'email', 'text', 'Email ID', 0, 1, 1, 1, 1, 1, '{}', 6),
(61, 7, 'address', 'text', 'Address', 0, 0, 0, 1, 1, 1, '{}', 7),
(62, 7, 'social_media', 'text', 'Social media (Digital presence including social media', 0, 0, 0, 1, 1, 1, '{}', 8),
(63, 7, 'family_background', 'text', 'Family Background', 0, 0, 0, 1, 1, 1, '{}', 9),
(64, 7, 'organization', 'text', 'Name of the organization', 0, 1, 1, 1, 1, 1, '{}', 10),
(65, 7, 'work_profile', 'text', 'Current work profile', 0, 0, 0, 1, 1, 1, '{}', 11),
(66, 7, 'experience', 'text', 'Years of experience as on June 30, 2021', 0, 0, 0, 1, 1, 1, '{}', 12),
(67, 7, 'experience_date', 'text', 'Years of experience as on June 30, 2021', 0, 0, 0, 1, 1, 1, '{}', 13),
(68, 7, 'org_address', 'text_area', 'Org Address', 0, 0, 0, 1, 1, 1, '{}', 14),
(69, 7, 'org_city', 'text', 'Org City', 0, 0, 0, 1, 1, 1, '{}', 15),
(70, 7, 'org_state', 'text', 'Org State', 0, 0, 1, 1, 1, 1, '{}', 16),
(71, 7, 'org_pincode', 'number', 'Org Pincode', 0, 0, 0, 1, 1, 1, '{}', 17),
(72, 7, 'org_contact_number', 'number', 'Org Contact Number', 0, 0, 0, 1, 1, 1, '{}', 19),
(73, 7, 'org_email', 'text', 'Org Email', 0, 0, 0, 1, 1, 1, '{}', 21),
(74, 7, 'website', 'text', 'Website URL (if any):', 0, 0, 0, 1, 1, 1, '{}', 23),
(75, 7, 'digital_presence', 'text', 'Digital presence (including social media)', 0, 0, 0, 1, 1, 1, '{}', 25),
(76, 7, 'file_photo', 'file', 'File Photo', 0, 0, 0, 1, 1, 1, '{}', 26),
(77, 7, 'file_video', 'file', 'File Video', 0, 0, 0, 1, 1, 1, '{}', 27),
(78, 7, 'file_awards', 'file', 'File Awards', 0, 0, 0, 1, 1, 1, '{}', 28),
(79, 7, 'file_social', 'file', 'File Social', 0, 0, 1, 1, 1, 1, '{}', 29),
(81, 7, 'file_support', 'file', 'File Support', 0, 0, 0, 1, 1, 1, '{}', 30),
(82, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 31),
(83, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 32),
(84, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 33),
(85, 7, 'category_1_id', 'text', 'Category 1 Id', 0, 0, 1, 1, 1, 1, '{}', 34),
(86, 7, 'category_1', 'text', 'Category 1', 0, 1, 1, 1, 1, 1, '{}', 35),
(87, 7, 'subcategory_1_id', 'text', 'Subcategory 1 Id', 0, 0, 1, 1, 1, 1, '{}', 36),
(88, 7, 'subcategory_1', 'text', 'Subcategory 1', 0, 1, 1, 1, 1, 1, '{}', 37),
(89, 7, 'category_2_id', 'text', 'Category 2 Id', 0, 0, 0, 1, 1, 1, '{}', 38),
(90, 7, 'category_2', 'text', 'Category 2', 0, 0, 0, 1, 1, 1, '{}', 39),
(91, 7, 'subcategory_2_id', 'text', 'Subcategory 2 Id', 0, 0, 0, 1, 1, 1, '{}', 40),
(92, 7, 'subcategory_2', 'text', 'Subcategory 2', 0, 0, 0, 1, 1, 1, '{}', 42),
(93, 7, 'response_1', 'text', 'Response 1', 0, 0, 0, 1, 1, 1, '{}', 43),
(94, 7, 'response_2', 'text', 'Response 2', 0, 0, 0, 1, 1, 1, '{}', 44),
(95, 7, 'response_3', 'text', 'Response 3', 0, 0, 0, 1, 1, 1, '{}', 45),
(96, 7, 'response_4', 'text', 'Response 4', 0, 0, 0, 1, 1, 1, '{}', 46),
(97, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(100, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(101, 4, 'cat_image', 'image', 'Cat Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(102, 7, 'facebook_link', 'text', 'Facebook Link', 0, 0, 0, 1, 1, 1, '{}', 18),
(103, 7, 'insta_link', 'text', 'Insta Link', 0, 0, 0, 1, 1, 1, '{}', 20),
(104, 7, 'org_fb_link', 'text', 'Org Fb Link', 0, 0, 0, 1, 1, 1, '{}', 22),
(105, 7, 'org_insta_link', 'text', 'Org Insta Link', 0, 0, 0, 1, 1, 1, '{}', 24),
(106, 7, 'response_5', 'text', 'Response 5', 0, 0, 0, 1, 1, 1, '{}', 41),
(107, 7, 'votes', 'text', 'Votes', 0, 1, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-10-04 09:49:33', '2021-10-04 09:49:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-10-04 09:49:33', '2021-10-04 09:49:33'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-10-04 09:49:33', '2021-10-04 09:49:33'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-04 09:50:31', '2021-11-04 23:54:31'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-10-04 09:50:31', '2021-10-04 09:50:31'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(7, 'participants', 'participants', 'Participant', 'Participants', 'voyager-people', 'App\\Participant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-04 10:17:40', '2021-11-08 09:55:45'),
(8, 'subcategories', 'subcategories', 'Subcategory', 'Subcategories', 'voyager-pie-chart', 'App\\Subcategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-05 09:37:43', '2021-10-05 09:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-10-04 09:49:34', '2021-10-04 09:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-10-04 09:49:34', '2021-10-04 09:49:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-10-04 09:49:34', '2021-10-04 09:49:34', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2021-10-04 09:49:34', '2021-10-04 10:23:21', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2021-10-04 09:49:34', '2021-10-04 10:23:21', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2021-10-04 09:49:34', '2021-10-05 09:38:07', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-10-04 09:49:34', '2021-10-04 10:23:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-10-04 09:49:34', '2021-10-04 10:23:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-10-04 09:49:34', '2021-10-04 10:23:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-10-04 09:49:34', '2021-10-04 10:23:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2021-10-04 09:49:34', '2021-10-05 09:38:07', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-10-04 09:50:31', '2021-10-05 09:38:09', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-10-04 09:50:32', '2021-10-04 09:50:32', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-10-04 09:50:33', '2021-10-04 09:50:33', 'voyager.pages.index', NULL),
(14, 1, 'Participants', '', '_self', 'voyager-people', '#000000', NULL, 2, '2021-10-04 10:17:41', '2021-10-04 10:23:21', 'voyager.participants.index', 'null'),
(15, 1, 'Subcategories', '', '_self', 'voyager-pie-chart', NULL, NULL, 9, '2021-10-05 09:37:43', '2021-10-05 09:38:09', 'voyager.subcategories.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2021_10_05_102732_create_db_aparajita_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-10-04 09:50:33', '2021-10-04 09:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_1_id` int(10) UNSIGNED DEFAULT NULL,
  `category_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory_1_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_2_id` int(10) UNSIGNED DEFAULT NULL,
  `category_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory_2_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `insta_link` text CHARACTER SET utf8 DEFAULT NULL,
  `org_fb_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_insta_link` text CHARACTER SET utf8 DEFAULT NULL,
  `family_background` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_profile` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience_date` date DEFAULT NULL,
  `org_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_city` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_pincode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital_presence` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_1` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_2` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_3` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_4` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_5` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_photo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_video` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_awards` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_social` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_support` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `votes` bigint(20) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `category_1_id`, `category_1`, `subcategory_1_id`, `subcategory_1`, `category_2_id`, `category_2`, `subcategory_2_id`, `subcategory_2`, `name`, `birthdate`, `mobile_number`, `email`, `address`, `social_media`, `facebook_link`, `insta_link`, `org_fb_link`, `org_insta_link`, `family_background`, `organization`, `work_profile`, `experience`, `experience_date`, `org_address`, `org_city`, `org_state`, `org_pincode`, `org_contact_number`, `org_email`, `website`, `digital_presence`, `response_1`, `response_2`, `response_3`, `response_4`, `response_5`, `file_photo`, `file_video`, `file_awards`, `file_social`, `file_support`, `created_at`, `updated_at`, `deleted_at`, `votes`) VALUES
(15, 1, 'Enterprise', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Kakrania Sarika', '1976-10-27', '9830160398', 'pinkcitykolkata@gmail.com', '6,queens park,Palacio building,flat 7a', 'http://www.pinkcitybysarika.com/', 'https://www.facebook.com/2014kolkata/', 'https://www.instagram.com/pinkcity2014', 'https://www.facebook.com/2014kolkata/', 'https://www.instagram.com/pinkcity2014', 'I started my brand 7 years back after being a full time house wife for 17 years.', 'Pinkcity', 'Entrepreneur', '7', '2021-06-30', '6,queens park', 'Kolkata', 'West bengal', '700019', '9830160397', 'pinkcitykolkata@gmail.com', 'http://www.pinkcitybysarika.com/', 'None', 'I am more confident,independent as of now.These 7 years made me realise my worth.I learnt how to be active on instagram,Facebook,website,bsnk transfers', 'Starting my career at the age of 38.Learning illustrator with 20 year old.Adapting this generations fashion', 'All my family is so proud of me.Younger sisters,daughter in laws of the house take my opinion what to do,how to grow.', 'I want to be a know name in the kind of pret traditional clothing i do', 'When there is a dream nothing can stop you', '[{\"download_link\":\"files/tD5zkgWGqsRtqegCY8pDzE25pqSxioe2yZcqfsRc.jpg\",\"original_name\":\"42BB3FB0-4A96-4CB2-972B-A15C103C4F5E.jpeg\"}]', NULL, NULL, NULL, NULL, '2021-10-22 18:23:09', '2021-10-22 18:23:09', NULL, NULL),
(16, 1, 'Academia & Education', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Khushi Kakrania', '2000-10-21', '9830160387', 'khushikakrania@gmail.com', '6 Queens Park, Palacio Building, Flat 7A', NULL, NULL, NULL, NULL, NULL, 'I\'m all about gratitude, goals, growing and glowing. I\'m a hardworking and motivated economics undergraduate at UCL, with a demonstrated history of problem solving and leadership skills through holding various positions of responsibility. I have conducted economics research on health economics, economics of education and competition policy. All my research has either been published or will be published within 6 months. My research interests lie in environmental economics and micro finance policy. Besides academia, I enjoy going for hikes, dancing and volunteering for charities that are empowering women. My LinkedIn profile shows details of the work I\'ve done till now.', 'Worldpay from FIS', 'https://www.linkedin.com/in/khushikakrania/', '5', '2021-06-30', '25 Walbrook', 'London', NULL, NULL, '3457616263', 'khushi.kakrania@fisglobal.com', NULL, NULL, 'Achievements \r\n-	Awarded Laidlaw Research and Leadership Scholarship because of my research an academic excellence and willingness to use economics for larger social good. \r\n-	Presented my research on degree evaluations in St Andrewâ€™s Research Conference and got special mention for my work\r\n-	Part of jury of Explore Econ 2021, UKâ€™s largest economics research conference\r\n-	My research on competition policy in digital markets will be published by CORE in Q1 2022\r\n-	Indian School Certificate Marks: 97.75% (All India Rank 10); Honoured by CM of West Bengal; Awarded 2 subject prizes in mathematics and economics in Class XII; Awarded general proficiency prize in class XI for excellence in economics, mathematics, commerce, accounts, and Hindi; Recipient of the most number of academic prizes\r\nLearnings\r\n-	Always have the curiosity of a child and experiment with projects. \r\n-	Always keep passion and love central reasons to do what youâ€™re doing\r\n-	The more you give into a project, the more youâ€™ll get out of it, both tangibly and intangible\r\n-	People and their perspectives matter a lot. Team working skills are most important to have.', 'I always felt that my opinions do not matter a lot, given my age, so I was a little uncomfortable sharing my ideas freely. I soon realized the importance of the youthâ€™s perspective, especially when it comes to research on gender and ethnicity, blockchain and environment policy. I made it a habit to write down my points/questions in advance and held myself accountable to speaking up in a meeting, even if it is for 2 minutes. It goes a long way in making your personal brand and showing your team that you actually care about the work.', 'My most impactful work is my research on competition policy in digital markets. The output was an article that explains the economics of harm in GAFAM companies and proposes potential solutions to foster innovation in tech market. This output will be taught to students in UCL, Oxford, Durham, Lancaster, etc. With a better understanding of the nature of competition in these markets, students will explore recent investigations into these markets, in the US, EU, and UK, and suggest approaches to regulation will be discussed. This topic is emerging, important and very important in this decade and will help young economists get a structured introduction to participate in conversations related to monopolies, data privacy, self-preferencing, two sided markets, etc.', 'Currently, Iâ€™m working on a comprehensive paper on menstrual leave policy in corporations to identify if the net benefit or cost. On the one hand, it increases employee wellbeing and attracts more women to the workforce but on the other hand it discourages employers to hire women and can further worsen gender pay gap. Economics of gender and ethnicity in the labor market really fascinates me. In Q1 and Q2 2022, I hope to start research on how microfinance can help ethnic minorities with financial empowerment in rural villages in India.', 'Besides my contribution to academia, I have previously offered pro bono economics consulting service to social enterprises. I analyzed financial and customer engagement data for Wheels for Wellbeing, a social enterprise promoting cycling for disable people. I also conducted market research for Thrive, a social enterprise upskilling women in the workforce.', '[{\"download_link\":\"files/nU6sVcp5PjH848XUlCWUacIdjbz5fknXiQU5Ffe4.jpg\",\"original_name\":\"WORKDAY PICTURE-01.jpg\"}]', NULL, '[{\"download_link\":\"files/B3rRlPO25JsxzJCA3MX6EMfN1YhuEBQlPgVqcDtS.jpg\",\"original_name\":\"Enactus Award 2021.jpeg\"}]', NULL, NULL, '2021-10-23 02:38:32', '2021-10-23 02:38:32', NULL, NULL),
(17, 1, 'Academia & Education', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Aditi Jhunjhunwala', '1990-11-17', '9007092748', 'aditijhunjhunwala@hotmail.com', '10/4, alipore park place. Kolkata 700027', NULL, 'https://www.facebook.com/aditijhunjhunwalaconsultancy', 'https://instagram.com/aditijhun17?utm_medium=copy_link', 'https://www.facebook.com/aditijhunjhunwalaconsultancy', 'https://instagram.com/aditijhun17?utm_medium=copy_link', 'From being taught to teaching over a thousand students to being the founder of Aditi Jhunjhunwala Consultancy, Aditiâ€™s is an interesting story.\r\n\r\n\r\n\r\nAditi was born in Kolkata, educated in Singapore and United Kingdom she slowly fell in love with Design Communication while studying in London, finally settling down in her home town Kolkata. With an infectious ability to see the power to excel through work her career has taken her through Singapore, Dubai, London and now India. Having been exposed to the diverse creative industries over the years she helmed the position of an art director and worked with the most incredible companies like Ogilvy and Mather, Grey Worldwide and Geometry Global. She has a distinguished track record, working with big brand accounts including : St. Regis - Abu Dhabi, Emirates NBD, 3M, Augur, ideliver, Coca Cola, Sentosa Resorts World Singapore, American Express, Lipton, Magnum, ABC Beer, Unilever, Diageo, HP and Mondelez where her role was instrumental in creatively developing a full suite of design communication deliverables. \r\n\r\n\r\n\r\nThe listing does not stop here, the very talented designer has been featured in number of magazines like Tulip Magazine, Wow Magazine, Desh Darpan Newspaper, LBB - Kolkata and St. Xavierâ€™s Magazine. Not to mention, this list is just the beginning of her career, thereâ€™s more to come from this multi-talented and immeasurably creative educationalist.', 'Aditi Jhunjhunwala consultancy', 'Design Educationalist', '7', '2021-06-30', '10/4, alipore park place. Kolkata - 700027', 'Kolkata', 'West Bengal', '700027', '9007092748', 'aditijhunjhunwala@hotmail.com', NULL, NULL, 'The key learning and achievement for me was in the pandemic. Delivering more than 50 webinarâ€™s on design across the globe.\r\n\r\n Conducted design webinars for the following organizations in the Pandemic :\r\n\r\nYFLO KOLKATA ( 24th April 2020 ) \r\nROTARY CLUB OF DELHI ( 28th April 2020 )\r\nJCI KOLKATA ( 30th April 2020 )\r\nFLO KOLKATA ( 1st May 2020 )\r\nBNI KOLKATA ( 3rd May 2020 )\r\nROUND TABLE KOLKATA ( 6th May 2020 )\r\nLADIES CIRCLE INDIA ( 13th May 2020 )\r\nNATIONAL ROUND TABLE ( 15th May 2020 )\r\nINNER WHEEL CLUB KOLKATA ( 16th May 2020 )\r\nFICCI FLO LUCKNOW  ( 21st May 2020 )\r\nRANCHI CLUB ( 24th May 2020 )\r\nAMERICAN EXPRESS ( 29th May 2020 )\r\nKANPUR LADIES CIRCLE ( 30th May 2020 )\r\nAMITY INTERNATIONAL INTERACT CLUB ( 1st June 2020 )\r\nLIONS CLUB OF KOLKATA ( 2nd June 2020 )\r\nLADIES CIRCLE CHENNAI ( 9th June 2020 )\r\nCONNECT FOR, MUMBAI ( 10th June 2020 )\r\nALLIANCE FRANCAISE KOLKATA ( 12th June 2020 )\r\nALKA JALAN FOUNDATION ( 15th June 2020 )\r\nFICCI FLO JAIPUR  ( 20th June 2020 ) \r\nFICCI FLO NORTH EAST  ( 4th July 2020 ) \r\nBENGAL ROWING CLUB, KOLKATA  ( 5th July 2020 ) \r\nINDUS VALLEY WORLD SCHOOL  ( 12th July 2020 ) \r\nDEEPSHIKA MAHILA HYDERABAD ( 15th July 2020 ) \r\nDELHI PUBLIC SCHOOL  ( 18th July 2020 ) \r\nLORETO HOUSE  ( 23rd July 2020 ) \r\nJITO Ahmedabad  ( 24th July 2020 ) \r\nFICCI FLO BANGALORE  ( 4th August 2020 ) \r\nFICCI FLO AMRITSAR ( 5th August 2020 ) \r\nSAMANVAY HYDERABAD  ( 18th August 2020 ) \r\nMADHUWAN KOLKATA  ( 21st August 2020 ) \r\nFICCI FLO AHMEDABAD  ( 21st August 2020 ) \r\nYPO PAN INDIA  ( 28th August 2020 ) \r\nCALCUTTA COSMOPOLITAN CLUB ( 10th September 2020 ) \r\nSVP INDIA  ( 11th September 2020 ) \r\nFICCI FLO INDORE  ( 17th October 2020 ) \r\nFICCI FLO JAIPUR  ( 20th June 2020 ) \r\nJAIPUR ROUND TABLE  ( 7th November 2020 ) \r\nPUNE ROUND TABLE  ( 13th November 2020 ) \r\nMCCI MLF ( 6th February 2021 )\r\nDELHI ROTARY HIGH ACHIEVERS ( 27th April 2021 )\r\nSHERRINGWOOD WORLD SCHOOL ( 16th May 2021 )', 'â€œIâ€™ve worked really hard to get here. Being recognised alongside other successful companies is a great indication of AJ Consultancyâ€™s growth,â€. â€œMy passion for teaching and love for design was the fuel that kept me going for the past seven years.â€ \r\n\r\nWhile establishing my company, I had to face numerous challenges, including advocating the importance of digital skills to staunch adherents of traditional curricula as well as changing peopleâ€™s perception of designâ€™s potential. Nonetheless for me, it was a journey well-worth travelling. One of the greatest proof points is the rise in clients from non-creative backgrounds approaching me for help.', 'Through Aditi Jhunjhunwala consultancy, I have taught them lifelong digital skills that have enabled them to successfully enroll in their university of choice.\r\n\r\nâ€œIncreasingly, more people are recognising that design isnâ€™t just about mastery of technical skills,â€. â€œIn fact, the design way of thinking teaches you a number of soft skills such as problem-solving, collaborating and communicating effectively.â€', 'I would like to branch out from my current Kolkata base to other cities in India, organise educational trips for my clients to explore other cultures, I have developed e-learning courses (a response to the COVID-19 pandemic). \r\n\r\nâ€œWe are in a globalised world and especially during these unstable times, technology is even more so a great resource. My aim for AJ Consultancy has always been to prepare young individuals to meet the challenges of the future,â€ she shared. â€œDigital skills and design thinking is thus a way for them to build sustainability into their careers.â€', 'Love my work and impart knowledge to the younger generation.', '[{\"download_link\":\"files/cDgjtibPAYZCxqerQAdqJkiGI4SDSpG7ewmzBtV0.jpg\",\"original_name\":\"21FC7576-4150-4F36-BC30-4C0D2DFF0EDF.jpeg\"}]', NULL, '[{\"download_link\":\"files/w17MSJjT3AcabP9B6gdnA8F0Y4aqIKW6t981N13Y.jpg\",\"original_name\":\"A430E912-DC9E-4DCE-82DB-9831DF3E565E.jpeg\"}]', '[{\"download_link\":\"files/N1iDbCzQwhXxFojvs0eE9icdzAzjtmnc9wU5K3br.jpg\",\"original_name\":\"4C72A2A1-822B-4EA6-B2FD-A24AF336AE1B.jpeg\"}]', NULL, '2021-10-26 21:10:25', '2021-10-26 21:10:25', NULL, NULL),
(19, 1, 'Health & Wellness', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Priyanka Goenka', '1991-03-31', '9831077873', 'priyankagoenka03@gmail.com', '15/1b Loudon Street, Samir Building, Kolkata 700017', 'www.hungrybums.in', 'https://www.facebook.com/hungrybumsbabyfood/', 'https://www.instagram.com/hungrybumsindia/', 'https://www.facebook.com/hungrybumsbabyfood/', 'https://www.instagram.com/hungrybumsindia/', 'I started working from home waiting for orders to come. I still remember when my first order and came in and how excited I was and today after years of hard work I still struggle but only to complete my order. You know you are doing well when mothers tell you how much they love and trust you with their kids. We have also launched a sister brand called Nutriwok for adults.', 'Food For Tot- Hungrybums & Nutriwok', 'Founder', '5', '2021-06-30', '9B Lord Sinha Road, Monica Building, 5th Floor, 5/3-4', 'Kolkata', 'West Bengal', '700071', '9903025222', 'infor@hungrybums.in', 'www.hungrybums.in', NULL, 'For me the biggest achievement is to see kids eating happily. Happy kids= happy mothers. I have successfully created a brand which is well known pan India and have a market place of its own. I have \r\nalso participated in multiple events pan India and made a mark in the food industry. I have co created an adult brand also where we do only healthy food. In the past 2 years I have also studied nutrition for babies and adults which has helped me understand food even more. We have also attained ISO certifications.', 'The biggest challenge faced was to make mothers trust on the brand. I overcame it with confidence and faith in myself which really got mothers to believe the brand.', 'We believe in eating healthy yet tasty. We try and deliver the healthiest of products by choosing the best ingredients possible. Hence, our initiative is to create a healthy future generation and our achievement is that people believe in our initiative.', 'We have a lot of future plans where we will be launching a lot more new products, we also have talks to export in swiss countries. A factory setup is also happening and should be ready in the next few months.', 'We are a brand which is growing slowly and organically. The response we have received from everyone is tremendous and we are only looking forward to a better tomorrow.', '[{\"download_link\":\"files/P1xPLAxHG0benhruKUX1wPvy0TDCE0dY0ghC4ZRC.jpg\",\"original_name\":\"Hungrybums Catalogue.JPG\"}]', NULL, '[{\"download_link\":\"files/1fPxgFPUWmSCPNY8P9aGsjjd83sBCrjdIRhMiv4P.pdf\",\"original_name\":\"food for tot 9001.pdf\"}]', '[{\"download_link\":\"files/8TuyhxWAwBmT0uuSL6kkfkrwggZHDP8bygGOajqK.png\",\"original_name\":\"IMG_2601.PNG\"}]', '[{\"download_link\":\"files/9RIdLLpKrMNlNIIZ3gj6z39JhwcQyaxkxoKjiQBu.pdf\",\"original_name\":\"food for tot 22000.pdf\"}]', '2021-10-28 16:50:34', '2021-10-28 16:50:34', NULL, NULL),
(20, 2, 'Academia & Education', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Sanchita Gupta', '1990-08-30', '9748021030', 'roys130896@gmail.com', 'Agarpara', NULL, NULL, NULL, NULL, NULL, NULL, 'XYZ ORG', 'Teaching', '15', '2021-06-30', 'Agarpara', 'Kolkata', 'West Bengal', '700058', '9748021030', 'roys130896@gmail.com', NULL, NULL, 'YES', 'Yes', NULL, NULL, NULL, '[{\"download_link\":\"files/4CoF7jAtb2Ay63Q670CmzqfbIlG054ea0NpL15d9.jpg\",\"original_name\":\"girl.jpg\"}]', NULL, NULL, NULL, NULL, '2021-10-30 11:21:21', '2021-10-30 11:21:21', NULL, NULL),
(21, 2, 'Enterprise', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Shaily Kataruka', '1982-03-29', '9830971823', 'shaily@lorencosmetics.com', '10 Lord Sinha road, Ankur building, Flat 6D, Kolkata 700071', 'https://theearthcollective.in/', 'https://www.facebook.com/shaily.agrawalkataruka', 'https://instagram.com/shailykataruka?utm_medium=copy_link', 'https://www.facebook.com/theearthcollectiveofficial/', 'https://www.instagram.com/theearthcollectiveofficial/', 'Well, I am a daughter, a sister, a wife, a mother of two beautiful kids and a budding entrepreneur, in that very order. The first 10 years of my life were in Nepal with my parents. Since the age of 10 till about 18 I was at Mussoorie International School where I led quite an independent life. After completing class 12, I completed a course in Fashion Design and Information Technology from NIFT, New Delhi. My first job after that was as a lead designer with an Ahmedabad-based firm that designed Christmas dÃ©cor. However, I let it go when I married into a business family from Kolkata. My family in Kolkata owns a cosmetic manufacturing company. With their help, I got the opportunity to not only take my familyâ€™s legacy forward, but turn it into my own. I launched my own line of premium hair care, THE EARTH COLLECTIVE in March, 2020. The Earth collective was incepted in 2018 and launched in 2020 after extensive research. Our USP is our specialization in Hair care as The Hair Specialist. We, The Earth Collective, have carved our niche with unparalleled Hair care products. When every beauty brand is trying to do everything, we have decided to focus and channelize our resources in one aspect and get to the root of it as The Hair Specialist. Our products are perfect amalgamations of nature and science. The Earth Collective is available PAN India through its website and major marketplaces like NYKAA, AMAZON, FLIPKART, VANITY WAGON, TATA CLIQ. I Have also started exporting The Earth Collective to a few countries. Me and my brand have been featured in a number of publications like Vogue, Grazia, Cosmopolitan, Femina, Business world etc. I have a vision to make it a global brand and am paving my path', 'Loren Beautifiers Private Limited - Brand- The Earth Collective', 'Founder, CEO - The Earth Collective', '6', '2021-06-30', 'Suite 404, 4 TH Floor, Vardaan Complex, 25A, Camac Street', 'Kolkata', 'West Bengal', '700016', '9830971823', 'shaily@lorencosmetics.com', 'https://theearthcollective.in/', 'https://theearthcollective.in', 'Ever since the inception of The Earth Collective, there has been no time to pause. Starting a new venture has been exhilarating and a very rewarding experience. Even though the year 2020 has been a year of turbulence, we have had a good take off. The Earth Collective is part of an organization with more than 40 years of experience in the cosmetic industry. Therefore, an efficient Research and Development team, a certified and a well-equipped Manufacturing Unit, manpower and various other teams were already in place. Nevertheless, the biggest challenge was to get the formulations to be result-oriented. Ever since inception, the idea was to make it a global brand, so the formulations, packaging aesthetics and marketing had to meet certain standards. Along the way, we were lucky to have come across people and companies who understood and shared my vision for the brand. I am grateful to my entire team at The Earth Collective who have been pivotal in overcoming this challenge seamlessly.', 'When I got married, my family became my priority at that time, I remained determined to follow through with my ambitions some day. I enjoy a relaxed balance between work & private life. I am at my happiest self when my loved ones are happy. So, for me the biggest challenge in my career was to step out of my comfort zone for my career. Initial years were like a tug of war and gradually I overcame the guilt and did manage to strike a good balance between my work and family life. I do not compromise on either of them.', 'The earth Collective fills in a prominent need gap in the Indian market. It offers a range of products which can match international standards whilst it is proudly Made in India. The team of The Earth Collective mainly consists of women at top levels. Also, the brand raises funds by using its platform whenever possible for social causes.', 'The Earth Collective is widely available through its website and major marketplaces like AMAZON, FLIPKART, NYKAA, TATA CLIQ, VANITY WAGON. We have started distribution in Middle East and Singapore and have a few in pipeline. We plan to expand globally through distribution channels. We have  a range of 35 products and have a lot more new launches in the pipeline. My plan is to make it THE hair care brand. We have carved our niche with unparalleled Hair care products.  When every beauty brand is trying to do everything, we have decided to focus and channelize our resources in one aspect and get to the root of it as your Hair Specialist.', 'â€œThe steps to get what you want out of life is to imagine, dream then decide what you want;â€ as it is your decision only which will make your dreams a possibility.', '[{\"download_link\":\"files/3xUMVNQKc5kTvBipxYTZ4FPUk5TshAOEcjM4eonl.jpg\",\"original_name\":\"Image-05211 (1).jpg\"}]', NULL, '[{\"download_link\":\"files/NlOWH2VZKbdvXvjVFVGJGYn1lmslyLa338MePZcf.jpg\",\"original_name\":\"22.jpg\"}]', '[{\"download_link\":\"files/BFjM9WnlFmZ0h1Z39vyZylMY84Ub9SBKn9s6kuOB.jpg\",\"original_name\":\"24.jpg\"}]', '[{\"download_link\":\"files/eUZLnsplVwbzA30WhF89jwrYyppJfcOrmaZhY7Xw.jpg\",\"original_name\":\"1.jpg\"}]', '2021-10-30 20:16:44', '2021-10-30 20:16:44', NULL, NULL),
(22, 2, 'Academia & Education', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'JAYA KISHORI', '1995-07-13', '9830007486', 'jayakishori21@gmail.com', '1/1E/6 RANI HARSHA MUKHI ROAD, SURYADEEP, 2ND FLOOR', 'https://youtube.com/channel/UCCR5eciEJIMvX2o1tiYOUKQ', 'http://facebook.com/iamjayakishori', 'http://instagram.com/Iamjayakishori', 'http://facebook.com/iamjayakishori', 'http://instagram.com/Iamjayakishori', 'Jaya Kishori started her journey at the tender age of seven. Ever since her childhood awakening, she developed a staunch belief in fate and believed that nothing is ever planned â€“ itâ€™s all destined. The primary focus of Jayaâ€™s discourse is to bestow faith and positivity among people who have a dearth of confidence in themselves and in the world around them. Her aim is to help people choose the right path in their lives. She has an incredible zest for motivating people. She gives out lessons of values and virtues that she believes is essential in shaping a beautiful life. Every note in her speeches is fine-tuned for guiding her audience towards a happy & peaceful life. Her mantra of success is in inspiring masses to lead an accomplished and more importantly, a peaceful life.', NULL, 'Motivational Speaker', '6', '2021-06-30', '1/1E/6 RANI HARSHA MUKHI ROAD, SURYADEEP, 2ND FLOOR', 'KOLKATA', 'WEST BENGAL', '700002', '9830007486', 'jayakishori21@gmail.com', 'https://www.iamjayakishori.com/', 'https://youtube.com/channel/UCCR5eciEJIMvX2o1tiYOUKQ', 'Jaya Kishori is the proud recipient of the â€œAdarsh Yuwa Adhyatmik Guru Puruskarâ€ which was awarded by Shri Mohan Bhagwat Chief of Hindu Nationalist Organization, Rashtriya Swayam Sewak Sangh(RSS) in 6th Bhartiya Chattra Sansad Award Ceremony held in Pune, Maharashtra in January 2016. She has also been awarded with the â€œSamaj Ratan Awardâ€ from Narayan Sewa Sansthan, Udaipur and has been bestowed with the â€œSanskar Artist of the Year 2013-2014â€ Sanskar Sandhya by Sanskar Channel, Mumbai. She has been celebrated as the â€˜Youth Spiritual Iconâ€™ by Fame India Magazine. Recently she has been the recipient of the Women Era award for her valuable contribution towards the nation and she also received an award from Pencil Dotcom as one of the inspiring women all over the world. Recently she has been awarded  with    \r\n  \" Iconic Gold Motivational of the year\" award in Mumbai also.', 'The biggest challenge that I have faced over the years and still trying to overcome from many in the society is acceptance of being a girl and having a higher position. Still there are many people in society who don\'t accept the fact that a girl can spread knowledge. With God\'s grace I have a very supportive family who has always encouraged me to be positive in every spare of life . That\'s how I have overcome the same. I always ask people to follow their passion and bring change in the society. I practice what I preach.', 'With my preaching I spread positivity, happiness, act of balancing, faith in God and peace in the society. I receive DM\'s, messages, emails and phone calls in which people write how my preaching has helped them to overcome their problems in life.', 'I want my talks to leave a powerful impact on people globally. I want more people to know about our Vedas, scriptures, and culture which has endless things to offer everyone.', 'I hope that I continue doing good work and my talks bring change in the society especially in youth as they are our future.', '[{\"download_link\":\"files/uGAJFAyJbOuwJQLDDQrQSlbDetb6i1r2ASIQEdmt.jpg\",\"original_name\":\"IMG_2422.JPG\"}]', '[{\"download_link\":\"files/lFYauO6mSyFLpRsGSn8GLnGviZI3ltRwmyavmcup.mp4\",\"original_name\":\"WhatsApp Video 2021-11-01 at 5.40.00 PM.mp4\"}]', '[{\"download_link\":\"files/BRqRXeO7ZfgFk8Cfru3yYJNF2MYgdNsOfECB4nLS.jpg\",\"original_name\":\"7a5ee7f4-8c03-456a-ab55-4966ec694274.jpg\"}]', '[{\"download_link\":\"files/Eb2EeR1emPRCHCdjANr6bTLQdVqPef5mmhWjHBw7.jpg\",\"original_name\":\"IMG_4084.JPG\"}]', '[{\"download_link\":\"files/bHzR5xlgHP8Z6FEJZwBORyLZCD3IM7E5f5d7iCOP.jpg\",\"original_name\":\"a5f427d9-dcd9-47db-a2d3-0886afedb94a.jpg\"}]', '2021-11-01 16:19:07', '2021-11-01 16:19:07', NULL, NULL),
(25, 2, 'Csr & Social Service', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 'Vayjayanti Pugalia', '1975-12-08', '9830845945', 'vpugalia31@gmail.com', '11A,Palm Avenue ,Ashok Towers Flat 7 B', 'https://www.linkedin.com/in/vayjayantipugalia/', 'www.facebook.com/vpugalia', '@vayjayantisahariapugalia', 'www.facebook.com/sonaliscubo', '@vayjayantisahariapugalia', 'Vayjayanti Pugalia Founder Sonalis Cubo is a multi award winning social entrepreneur,life skill architect,profound speaker,contemporary poet,and working extensively to influence the community for a positive mindset for change. Vayjayanti is also the Founder of â€œiCuboâ€ a platform mentoring and exhibiting the skills and creativity for children,where â€˜iâ€ stands for ink, innovation and information. Vayjayanti is the President of West Bengal Lfe Skills Council for Women Indian Chamber Of Commerce And Industry and also a core committee member of the very prestigious Jyotirmai Club. She is the Co-Chairperson at Merchant Chamber and Industry Kolkata,/CSR And Rural Development Committee and also a core committee member of the MLF Wing of MCCI. She has been awarded as The Times Power Woman by The Times of India and Exceptional Woman Of Excellence at the Women Economic Forum along with many other accolades and citations to her credit including Dr. Sarvepelli Radhakrishnan award and Dr.Sarojini Naidu International award for her contribution towards holistic teaching and her contribution towards the society. Vayjayanti has won the First Position in We-Pitch Womannovator Kolkata platform in social service sector supported by the MSME Ministry Government Of India. Vayjayanti has been acknowledged THE POWER WOMAN AWARD by Bengal Chamber of Commerce & Industry for her â€œinnovative approach to social issuesâ€. Vayjayanti is recognized amongst 100 Inspirational Woman of the year 2021 for outstanding example n advancing opportunities for women in leadership by â€œGWIAâ€. Citated with The Kolkata Entrepreneurs Award,Vayjayanti has been communicating strong messages to the society through her endeavors like Colours Of Innocence,The Kidopreneur Summit,The Third Eye Summit ,Think Local Cook Global which have become a brand by itself. Her strong footprint against body shaming has reached quite a flame by the campaign â€œMain Apni Favourite Hoonâ€ which talks about self- love and celebrating womanhood. Her drive towards impacting', 'Sonalis Cubo', 'Founder', '16', '2021-06-30', '17 Ballygunge Park Road 1 st Floor Pallavi Apartments', 'kolkata', 'west Bengal', '700019', '9831399798', 'sonaliscubo@gmail.com', NULL, 'https://www.linkedin.com/in/vayjayantipugalia/', 'My achievements are various projects that I have been able to iniate in my car3er.Each teaching me the importance of its discussion and awareness to have a more educated community and also a more included one. Project Mangoes @10 year 2015 and 2017 More than 10,000 Mangoes were collected each year, distributed by children to NGO and schools,in remote access areas.This project got young children involved as they could contribute through their pocket money which was a start to their thoughts towads GIVING BACK.\r\n Project Har Ghar Roshni 2016 During Diwali fire crackers food sweets were distributed to children by the funds collected by children of Sonalis Cubo benefitting more than 100 children.\r\n Project Roshni 2014 More than 75 children got together and made diyas for Diwali and sold them to raise funds for the deserved souls,Again a project to get youngsters involved and teaching them the art of bringing smiles.\r\n Project Yaarian 2015 Children treated children from NGO to MC Donald\'s bringing in inclusiveness of status and humanity. \r\nThe Kidopreneur Summit_Probably the firat pan India Sunnit on child entrepreneurship between the age of 10 and 17years.It included panel discussions pitching and seed funding for the winners.Participated as audience by 400 spectators from education houses parents and children. \r\nThe Third Eye Summit-A Pan India conference on highlighting the issues and entrepreneurial qualities of transgenders which was participated by many successful queer celebrities and common people celebrating queer community.Seed Funding through entrepreneurial pitching was the highlight.Audience demographic was in 100 who came together in support on the community. \r\nColours of Innocence Season 1,2 and 3 participated by More than 75 children each season painted and donated their paintings for charity.\r\nCurating Think Local Cook Global 2 seasons created opportunities for women to showcase talent and feel empowered through culinary art', 'The biggest challenge which i faced was to get business houses and people from the corporate world to take notice of my projects specially once my awareness projects started getting bigger starting from The Kidopreneur Summit.Not To prove to them that I had a vision to impact minds was very difficult as no one was feeling confident of me to endorse me.But i did not leave my grounds if they wanted me to bring a certain corporate house first to start the show i persisted on my journey by doing so.Geting Enst n Younfg to Techno India to Srei Finance i got all to get going on my first ever awareness conference to highlight the plight of education pressure on children which is letting entrepreneurship take a back seat.The outcome was fantastic and post which i never stopped dreaming my projects and making them into a reality \r\nThe third Eye Summit was yet another challenge where no one supported me to talk about the queer community in a big way.I self funded awareness project which i initiated and till today people talk about thte same.', 'I have involved young children into philanthrophy by initiating projects where they can participate fund and work hard fore there by embibing the art of giving in them at a very early age.As young as 4 years old.\r\nThrough project like the kidopreneur summit I have toughed on the subject of beyond studies and have been able to make many parents and children take notice of small potentials in their kids to start practicing along with their stidies.Selling slimes to designing mandalas and selling to toys and merchandise.\r\nThe community was very closed on the queer community not knowing about the difference between hijras and transgenders through my project The Third Eye I have been able to create a bridge between the so called normal and the.Ebquiries and opportunities coming to offer skill development jobs etc\r\nMy projects on women empowernment have enabelled many women to realise their potentials and start home businesses in return adding to revenue and growth for their families.', 'I am a torch bearer of issues which make the society strong and inclusive.To work more for the trans community and child entrepreneurship has always been my prime focus.\r\nIn the future I plan to create more awreness and opportunities for women who do not see their potentials and need platforms to find their motivation and support.', 'I initiate thought.I influence minds through my projects and thoughts.I become a bridge for ends to help each other.I believe through my dialogues i have been able to give philanthrophy a new meaning which to create awareness networks and opportunities.', '[{\"download_link\":\"files/aGbusg6sVLDv1dFJxHi5IyjHJvRt1wPoAWLX6jfD.jpg\",\"original_name\":\"RIM_4842.JPG\"}]', NULL, '[{\"download_link\":\"files/PVHd8rUvaMBFaqyfYL5N6KObNNiOkAr79PNweH7z.pdf\",\"original_name\":\"Awards Vayjayanti Pugalia .pdf\"}]', '[{\"download_link\":\"files/XBN9MmEsZt75MTbabN4dFLmDHJfYlJMkrQzIcgvA.pdf\",\"original_name\":\"Mentions.pdf\"}]', NULL, '2021-11-03 16:37:09', '2021-11-03 16:37:09', NULL, NULL),
(26, 3, 'Csr & Social Service', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(27, 3, 'Csr & Social Service', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson2', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(28, 3, 'Csr & Social Service', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson3', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(29, 3, 'Csr & Social Service', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson4', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(30, 4, 'Csr & Social Service', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson5', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(31, 4, 'Csr & Social Service', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson6', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(32, 4, 'Csr & Social Service', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson7', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL),
(33, 4, 'Csr & Social Service', 2, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 'Dora Nelson8', '1988-06-05', '9421234567', 'dugagyl@mailinator.com', 'Eum commodo quia vol', 'Soluta impedit est', 'Laborum laudantium', 'Obcaecati adipisicin', 'Fugiat maxime qui de', 'Maxime adipisci labo', 'Fugiat ipsum proid', 'Lane Zimmerman Plc', 'Culpa eos quod aliq', '11', '2021-06-30', 'Inventore perferendi', 'Enim nulla veniam v', 'Magni pariatur Atqu', '74', '1234567890', 'giruzekat@mailinator.com', 'https://www.saqidijojujypa.in', 'In non sit dolore do', NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/mVQh7tiDZEz92Uh36gVmHpRX6RmfUs6NtVtH7SS4.jpg\",\"original_name\":\"plan.jpg\"}]', '[{\"download_link\":\"files/v47Sf2tG13g8aYYrxf18dA5kTQ7bX895JwIHvGFQ.jpg\",\"original_name\":\"DSC_0124.JPG\"}]', NULL, NULL, NULL, '2021-11-05 02:22:12', '2021-11-05 02:22:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(2, 'browse_bread', NULL, '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(3, 'browse_database', NULL, '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(4, 'browse_media', NULL, '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(5, 'browse_compass', NULL, '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(6, 'browse_menus', 'menus', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(7, 'read_menus', 'menus', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(8, 'edit_menus', 'menus', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(9, 'add_menus', 'menus', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(10, 'delete_menus', 'menus', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(11, 'browse_roles', 'roles', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(12, 'read_roles', 'roles', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(13, 'edit_roles', 'roles', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(14, 'add_roles', 'roles', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(15, 'delete_roles', 'roles', '2021-10-04 09:49:34', '2021-10-04 09:49:34'),
(16, 'browse_users', 'users', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(17, 'read_users', 'users', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(18, 'edit_users', 'users', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(19, 'add_users', 'users', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(20, 'delete_users', 'users', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(21, 'browse_settings', 'settings', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(22, 'read_settings', 'settings', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(23, 'edit_settings', 'settings', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(24, 'add_settings', 'settings', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(25, 'delete_settings', 'settings', '2021-10-04 09:49:35', '2021-10-04 09:49:35'),
(26, 'browse_categories', 'categories', '2021-10-04 09:50:31', '2021-10-04 09:50:31'),
(27, 'read_categories', 'categories', '2021-10-04 09:50:31', '2021-10-04 09:50:31'),
(28, 'edit_categories', 'categories', '2021-10-04 09:50:31', '2021-10-04 09:50:31'),
(29, 'add_categories', 'categories', '2021-10-04 09:50:31', '2021-10-04 09:50:31'),
(30, 'delete_categories', 'categories', '2021-10-04 09:50:31', '2021-10-04 09:50:31'),
(31, 'browse_posts', 'posts', '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(32, 'read_posts', 'posts', '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(33, 'edit_posts', 'posts', '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(34, 'add_posts', 'posts', '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(35, 'delete_posts', 'posts', '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(36, 'browse_pages', 'pages', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(37, 'read_pages', 'pages', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(38, 'edit_pages', 'pages', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(39, 'add_pages', 'pages', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(40, 'delete_pages', 'pages', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(41, 'browse_participants', 'participants', '2021-10-04 10:17:41', '2021-10-04 10:17:41'),
(42, 'read_participants', 'participants', '2021-10-04 10:17:41', '2021-10-04 10:17:41'),
(43, 'edit_participants', 'participants', '2021-10-04 10:17:41', '2021-10-04 10:17:41'),
(44, 'add_participants', 'participants', '2021-10-04 10:17:41', '2021-10-04 10:17:41'),
(45, 'delete_participants', 'participants', '2021-10-04 10:17:41', '2021-10-04 10:17:41'),
(46, 'browse_subcategories', 'subcategories', '2021-10-05 09:37:43', '2021-10-05 09:37:43'),
(47, 'read_subcategories', 'subcategories', '2021-10-05 09:37:43', '2021-10-05 09:37:43'),
(48, 'edit_subcategories', 'subcategories', '2021-10-05 09:37:43', '2021-10-05 09:37:43'),
(49, 'add_subcategories', 'subcategories', '2021-10-05 09:37:43', '2021-10-05 09:37:43'),
(50, 'delete_subcategories', 'subcategories', '2021-10-05 09:37:43', '2021-10-05 09:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(44, 1),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 09:50:32', '2021-10-04 09:50:32'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 09:50:33', '2021-10-04 09:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'developer', 'Developer', '2021-10-04 09:49:34', '2021-10-04 09:52:09'),
(2, 'admin', 'Administrator', '2021-10-04 09:49:34', '2021-10-04 09:53:01'),
(3, 'site_user', 'Site User', '2021-11-05 03:11:00', '2021-11-05 03:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Aparajita', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'You Shine (5 to 10 years of experience)', '2021-10-05 09:38:51', '2021-10-05 09:38:51'),
(2, 'You Inspire (More than 10 years of experience)', '2021-10-05 09:39:03', '2021-10-05 09:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'PÃƒÆ’Ã‚Â¡gina', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'FunÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'PÃƒÆ’Ã‚Â¡ginas', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-10-04 09:50:33', '2021-10-04 09:50:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'FunÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Âµes', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(17, 'pages', 'title', 1, 'pt', 'OlÃƒÆ’Ã‚Â¡ Mundo', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(19, 'pages', 'body', 1, 'pt', '<p>OlÃƒÆ’Ã‚Â¡ Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(22, 'menu_items', 'title', 12, 'pt', 'PublicaÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Âµes', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(25, 'menu_items', 'title', 13, 'pt', 'PÃƒÆ’Ã‚Â¡ginas', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(26, 'menu_items', 'title', 4, 'pt', 'FunÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Âµes', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-10-04 09:50:34', '2021-10-04 09:50:34'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-10-04 09:50:35', '2021-10-04 09:50:35'),
(30, 'menu_items', 'title', 10, 'pt', 'ConfiguraÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Âµes', '2021-10-04 09:50:35', '2021-10-04 09:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gendar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `gendar`, `pincode`, `city`, `address`, `dob`, `email`, `mobile`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dev', '', '', '', '', NULL, 'dev@dev.com', NULL, 'users/default.png', NULL, '$2y$10$YM.vYl5Bo3cBiVPctZBZMermKIsDtVwCto8KWHIU2CvXYcpQkPfGy', 'gdCNLmz4w7xMNtQ82ZzAK9g9jYwsq5EryaVUtwA29mbliYDmsE3wJKG87ZzG', '{\"locale\":\"en\"}', '2021-10-04 09:50:31', '2021-10-04 09:53:42'),
(2, 2, 'Admin', '', '', '', '', NULL, 'admin@admin.com', NULL, 'users/default.png', NULL, '$2y$10$Sf5YhgXSrwzPCDgvNL4NK.NaZp.L6XdJuaci.UPw4gt9q4iTcrOnK', 'Mg5okDxWxJVqQoTXlz6lW3cJ066sw9LyOtaQqes1ysvYddtN5py3rgEOZ0Yu', '{\"locale\":\"en\"}', '2021-10-04 09:54:10', '2021-10-27 17:17:35'),
(3, 3, 'Tyler Schmidt', '', '', '', '', NULL, 'tuqygizar@mailinator.com', NULL, 'users\\November2021\\Biw30m54t799HRRUAHRB.png', NULL, '$2y$10$jRL7dZw.N6thzRBGCyFi9Ow8BD2cbvFIRES4XUNo.6XhS9uIrWdme', 'iVckA4nEPFPjNfAFboiBt17SmyHtaKcTnVredxUwtvnrnECTUsUPN5OrgDcN', '{\"locale\":\"en\"}', '2021-11-05 03:12:17', '2021-11-05 03:12:17'),
(4, 3, 'Rahul', '', '', '', '', NULL, 'rahul@gmail.com', '123123123', 'users/default.png', NULL, '$2y$10$XATizXOe6/n1ZFNAE2JHCe1PeV8liuk3qUyAHiifmEZm9L7iTe4TS', '6atME60MIXkaSNrQeecAxPqgsrlZMhXTqWOZ59S8Yrate4lsg2lqPDri9YMZ', NULL, '2021-11-08 03:55:22', '2021-11-08 03:55:22'),
(5, 3, 'das', '', '', '', '', NULL, 'das@g.c', '8759017826', 'users/default.png', NULL, '$2y$10$Hg5U6hs7oYQJ.UphJWbFOuzFAx6V3zoYyyzYgpj90ZI.aR6b2GjPe', 'D27nI0G0oWfPi1kfNJB4T1GBzpLJYTIhqaEExU5rNEIFBkVoTNP9jhW33A9C', NULL, '2021-11-08 04:24:16', '2021-11-08 04:24:16'),
(6, 3, 'r Das', 'male', '700001', 'kolkata', 'jkhguohkjk', '2021-11-08', 'rahh1@gmail.com', '09876543210', 'users/default.png', NULL, '$2y$10$4jRsJcFWpRHKFz6r2pMMOebJfnSCyqf0.moD65tpvXj4Dv0ZvpTbW', 'zhReA2YICDTuJHJ4T4VmTME7zDHsN1mVnyRGxwzKfkRed2ayoPck6nxBBeJT', NULL, '2021-11-08 09:49:46', '2021-11-08 09:49:46'),
(10, 3, 'R Strickland', 'other', '34', 'Culpa ipsam laborio', 'Eos id officia tempo', '1999-06-27', 'dowy@mailinator.com', '71', 'users/default.png', NULL, '$2y$10$v9dboq9y/0NBnAXQFL3kR.eAqnM7TWedAumDl0RTL4LmknPefhzpW', '7Hd4e7lWyufhVzurUZd5QheWGjeKnuPaZ8rvmiq4DpyY3smUTU40khn5hKPx', NULL, '2021-11-08 10:05:34', '2021-11-08 10:05:34'),
(11, 3, 'R Chatterjee', 'male', '700051', 'kolkata', 'Birati road', '1986-03-11', 'rahul@onesolution.co.in', '7003833749', 'users/default.png', NULL, '$2y$10$x1egGojfmwtTf2k7XojjseDDoj7Po0D.HiVVtmslxGZxFf4EbHzOG', '0CPiRbKRlin1D6vS3hApacQbJKNTYxWuN3o90Dfh2gk1eura7anD4BgzDO98', NULL, '2021-11-08 10:12:59', '2021-11-08 10:12:59'),
(12, 3, 'Partha Bhattacharyya', 'male', '700051', 'Kolkata', 'Kolkata', '1977-06-18', 'admin@onesolution.co.in', '9330845112', 'users/default.png', NULL, '$2y$10$DhR.SSNHGqoWmfHSuTnhFePZCuoJriCSgmja2Xqa0OtatXm9x3A.O', 'Not0G5fIv5tEYMwHzWLMmoqt2jkYubJuCEItdgN2MKyyjCigESatuyhRBk79', NULL, '2021-11-09 00:01:37', '2021-11-09 00:01:37'),
(13, 3, 's', 'male', '3', '3', '3', '0033-03-03', 's@s', '3', 'users/default.png', NULL, '$2y$10$8uvuIqOTd2nIXzzQaQ9ke.VELP3qEnQ4zDn2L0c0uKwya67dirOge', 'YIdlO75cnBwiFSalG4Y42ffAli5AvKdJBiLGJxOTKaKj5j40UeHQCz7rEvud', NULL, '2021-11-09 00:40:55', '2021-11-09 00:40:55'),
(14, 3, 'Roth Beard', 'other', '77', 'Tempore impedit qu', 'Voluptas at mollit a', '1970-06-05', 'catomisat@mailinator.com', '70', 'users/default.png', NULL, '$2y$10$1cAWSdBtTU/NeKbgANKKheCQz.hlS9ikrWbdtPWgY0AabU/qY4KlO', 'AoiJJsGUc2uViUzMdAoZljpEy5zxSwvkzjbtwxKMau3s7DOqRnzPtMk0aeeA', NULL, '2021-11-09 07:23:44', '2021-11-09 07:23:44'),
(15, 3, 'Husain', 'male', '700016', 'Kolkata', 'asdasdasd', '2021-11-10', 'husain@threefourth.in', '9007345252', 'users/default.png', NULL, '$2y$10$uHjGUNCr/ONlAWEBE7XFP.87ErBV2/Ipv3mfve6kOxSBo5jO0MPyi', 'N6TgLhH7RjwHrAOdNmTwzyyMijEITUYhGYrlz5zdRSGtnpHHfteqWWcFx8d2', NULL, '2021-11-09 07:28:18', '2021-11-09 07:28:18'),
(17, 3, 'Partha Bhattacharyya', 'male', '700051', 'Kolkata', 'Kolkata', '1977-06-18', 'admin@onesolutionindia.in', '9440845112', 'users/default.png', NULL, '$2y$10$HiOpem1.IMwukqKQ/peK4et9zqV3tan2y.OZqdK2aBIjmpr/mJn/u', 'uwqFFcDDP961Rs8XmzyUCFFRoBucXoucg9vhNMVvbgKyoBZlHaWirWQzSIZJ', NULL, '2021-11-12 07:42:34', '2021-11-12 07:42:34'),
(18, 3, 'Ra', 'male', '800', 'Gg see', 'Gg ch kb', '1986-11-13', 'r@t.yy', '3999', 'users/default.png', NULL, '$2y$10$TJ5XM5a75knvanuXi8bdBOHrkMn.jFaPwPpTwW/GMJvSMVaoZYCgu', 'j4KzMmGotHmsFSR52qxuV7CQlnsPfTk5M6Dvon754xEblaAH8a8bNU0BXBrG', NULL, '2021-11-12 20:48:13', '2021-11-12 20:48:13'),
(19, 3, 'Cassidy Donaldson', 'other', '93', 'Id quia mollitia et', 'Vel dolor nisi ea to', '2018-09-14', 'xygo@mailinator.com', '86', 'users/default.png', NULL, '$2y$10$SV8WW7lPeCjyQBqHA2gR1ev4VqynBC/6FHG1FucJ3x8bk8wxTOk6u', 'CJAFkFdm1Ji2AowItc8dtveeFXmik6MvdCHiAAiZHCn9HNWvHkTF3SQEdcV3', NULL, '2021-11-13 00:46:41', '2021-11-13 00:46:41'),
(20, 3, 'Lev Hanson', 'other', '44', 'Tempore ab sequi do', 'Dolor aut omnis culp', '1984-12-24', 'rahul@mail.com', '2222', 'users/default.png', NULL, '$2y$10$JmVyYxYUO3lE3aAnh3jmzuH8tIPgagiA3vYv/3zJmuiOarpVRvTYS', 'A787eNmaMXaNo9zLxN1ORjhfnth9JZgpPPp4EtdVfDPle2tM3p8Amyf5eBPd', NULL, '2021-11-13 21:45:13', '2021-11-13 21:45:13'),
(21, 3, 'Patience Crosby', 'male', '24', 'Quis ipsam facilis i', 'Est fugiat impedit', '1975-04-29', 'sejede@mailinator.com', '68', 'users/default.png', NULL, '$2y$10$W.x9VAy4NF//cfXrVJB8iOIrBk1ucVtMBykI39Sg3Sh2SSm2e7bpK', 'C7YqbOBkKJGOH0yhumVwXgUc4wQNsNfM6PwYNb3k3KkMbllwmtxOiQk9XBs3', NULL, '2021-11-14 12:37:43', '2021-11-14 12:37:43'),
(22, 3, 'Quintessa Poole', 'male', '15', 'Est debitis earum v', 'Tempora voluptatem', '2015-10-09', 'tasefaly@mailinator.com', '21', 'users/default.png', NULL, '$2y$10$UVep8MQQJJLRm0abAeQuxuEA68f8N8mlITG3u14Gcn./D3vz.LRXq', 'daJPXBPAeS3X8FEnGPb5nYMONXrVBPKqfJCLy1jABPDKUOshX7fdocVY8SUV', NULL, '2021-11-16 00:56:57', '2021-11-16 00:56:57'),
(24, 3, 'Calista Caldwell', 'other', '98', 'Eius et nisi sint is', 'Harum dolorem incidu', '1995-09-15', 'zavoma@mailinator.com', '67', 'users/default.png', NULL, '$2y$10$XRN/nd.x38B5bD4udO3T7.3.ySOJJKWMot2gyYp0TwAQFoVaswZa2', '8zLLyGEf2gacE5VvEWoSFhtZLqt6Hl9wPkziM9wimEfaDe9lJEWeSGN6WRII', NULL, '2021-11-17 04:09:27', '2021-11-17 04:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_votes`
--

CREATE TABLE `user_votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_votes`
--

INSERT INTO `user_votes` (`id`, `user_id`, `category_id`, `subcategory_id`, `participant_id`, `created_at`, `updated_at`) VALUES
(26, 3, 1, 1, 16, '2021-11-07 17:45:12', NULL),
(27, 3, 1, 2, 17, '2021-11-07 17:45:12', NULL),
(28, 3, 1, 1, 21, '2021-11-07 17:45:12', NULL),
(29, 3, 1, 2, 25, '2021-11-07 17:45:12', NULL),
(30, 5, 1, 1, 16, '2021-11-08 09:55:41', NULL),
(31, 5, 1, 2, 19, '2021-11-08 09:55:41', NULL),
(32, 5, 1, 1, 20, '2021-11-08 09:55:41', NULL),
(33, 5, 1, 2, 22, '2021-11-08 09:55:41', NULL),
(34, 5, 1, 1, 27, '2021-11-08 09:55:41', NULL),
(35, 5, 1, 2, 28, '2021-11-08 09:55:41', NULL),
(36, 5, 1, 1, 30, '2021-11-08 09:55:41', NULL),
(37, 5, 1, 2, 32, '2021-11-08 09:55:41', NULL),
(38, 1, 1, 1, 27, '2021-11-08 13:17:52', NULL),
(39, 1, 1, 2, 29, '2021-11-08 13:17:52', NULL),
(40, 10, 1, 1, 15, '2021-11-08 15:37:56', NULL),
(41, 10, 1, 2, 19, '2021-11-08 15:37:56', NULL),
(42, 10, 4, 1, 30, '2021-11-08 15:37:56', NULL),
(43, 10, 4, 2, 32, '2021-11-08 15:37:56', NULL),
(44, 6, 2, 1, 20, '2021-11-08 15:38:40', NULL),
(45, 6, 2, 2, 22, '2021-11-08 15:38:40', NULL),
(46, 11, 1, 1, 15, '2021-11-08 15:44:39', NULL),
(47, 11, 1, 2, 17, '2021-11-08 15:44:39', NULL),
(48, 11, 2, 1, 20, '2021-11-08 15:44:39', NULL),
(49, 11, 2, 2, 25, '2021-11-08 15:44:39', NULL),
(50, 11, 3, 1, 27, '2021-11-08 15:44:39', NULL),
(51, 11, 3, 2, 29, '2021-11-08 15:44:39', NULL),
(52, 12, 3, 1, 26, '2021-11-09 05:36:42', NULL),
(53, 12, 3, 2, 29, '2021-11-09 05:36:42', NULL),
(54, 12, 4, 1, 31, '2021-11-09 05:36:42', NULL),
(55, 12, 4, 2, 33, '2021-11-09 05:36:42', NULL),
(56, 13, 1, 1, 15, '2021-11-09 06:11:11', NULL),
(57, 13, 1, 2, 19, '2021-11-09 06:11:11', NULL),
(58, 13, 1, 1, 15, '2021-11-09 06:11:27', NULL),
(59, 13, 1, 2, 19, '2021-11-09 06:11:27', NULL),
(60, 15, 4, 1, 31, '2021-11-09 12:59:47', NULL),
(61, 15, 4, 2, 32, '2021-11-09 12:59:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `user_votes`
--
ALTER TABLE `user_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_votes_participants` (`participant_id`),
  ADD KEY `FK_user_votes_subcategories` (`subcategory_id`),
  ADD KEY `FK_user_votes_categories` (`category_id`),
  ADD KEY `FK_user_votes_users` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_votes`
--
ALTER TABLE `user_votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_votes`
--
ALTER TABLE `user_votes`
  ADD CONSTRAINT `FK_user_votes_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_votes_participants` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_votes_subcategories` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_votes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
