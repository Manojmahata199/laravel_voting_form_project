-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2024 at 11:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanmatob_aparajita_vote_2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `status`, `name`, `slug`, `created_at`, `updated_at`, `cat_image`) VALUES
(1, NULL, 1, 'Y', 'AESTHETICS', 'academia-education', '2021-10-04 18:50:31', '2021-11-05 09:47:40', 'categories\\November2021\\fG9NmmrCLAGnz5s9NbSQ.jpg'),
(2, NULL, 1, 'Y', 'COMMUNITY SERVICE\n', 'health-wellness', '2021-10-04 18:50:31', '2021-11-05 10:00:25', 'categories\\November2021\\XuSCPxEeY35dmcsZubep.jpg'),
(3, NULL, 1, 'Y', 'HOLISTIC WELLNESS\n', 'enterprise', '2021-10-04 19:26:50', '2021-11-05 10:01:22', 'categories\\November2021\\S77HgQRAuuzdtdgV9qHw.png'),
(4, NULL, 1, 'Y', 'HOME & LIFESTYLE\n', 'social-service', '2021-10-04 19:27:07', '2021-11-27 02:18:56', 'categories\\November2021\\vsLsWcVHdYj6seNzJFTi.jpg'),
(5, NULL, 1, 'N', 'Sports', 'sports', '2021-10-04 19:27:16', '2021-11-05 10:04:16', 'categories\\November2021\\aKhkIz96tzp96J05FH3k.jpg'),
(6, NULL, 1, 'Y', 'MANAGEMENT PROFESSIONAL \n', 'creative-arts', '2021-10-04 19:27:49', '2021-11-05 10:04:04', 'categories\\November2021\\3LaD3JbLQYgsqkePEvK6.png'),
(7, NULL, 1, 'Y', 'VISUAL ARTS\n', 'performing-arts', '2021-10-04 19:28:30', '2021-11-05 09:54:18', 'categories\\November2021\\hql7dcaY2Mpa5NL6Wk9g.jpg'),
(8, NULL, 1, 'N', 'Literary', 'literary', '2021-10-04 19:28:45', '2021-11-05 09:45:59', 'categories\\November2021\\FjFSM64FnrHtUEAckC2w.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
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
(57, 7, 'name', 'text', 'Name of the Participant', 0, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'birthdate', 'date', 'Date of birth', 0, 1, 1, 1, 1, 1, '{}', 8),
(59, 7, 'mobile_number', 'text', 'Mobile Number', 0, 1, 1, 1, 1, 1, '{}', 9),
(60, 7, 'email', 'text', 'Email ID', 0, 1, 1, 1, 1, 1, '{}', 10),
(61, 7, 'address', 'text', 'Address', 0, 0, 0, 1, 1, 1, '{}', 11),
(62, 7, 'social_media', 'text', 'Social media (Digital presence including social media', 0, 0, 0, 1, 1, 1, '{}', 12),
(63, 7, 'family_background', 'text', 'Family Background', 0, 0, 0, 1, 1, 1, '{}', 13),
(64, 7, 'organization', 'text', 'Name of the organization', 0, 1, 1, 1, 1, 1, '{}', 14),
(65, 7, 'work_profile', 'text', 'Current work profile', 0, 0, 0, 1, 1, 1, '{}', 15),
(66, 7, 'experience', 'text', 'Years of experience as on June 30, 2021', 0, 0, 0, 1, 1, 1, '{}', 16),
(67, 7, 'experience_date', 'text', 'Years of experience as on June 30, 2021', 0, 0, 0, 1, 1, 1, '{}', 17),
(68, 7, 'org_address', 'text_area', 'Org Address', 0, 0, 0, 1, 1, 1, '{}', 18),
(69, 7, 'org_city', 'text', 'Org City', 0, 0, 0, 1, 1, 1, '{}', 19),
(70, 7, 'org_state', 'text', 'Org State', 0, 0, 1, 1, 1, 1, '{}', 20),
(71, 7, 'org_pincode', 'number', 'Org Pincode', 0, 0, 0, 1, 1, 1, '{}', 21),
(72, 7, 'org_contact_number', 'number', 'Org Contact Number', 0, 0, 0, 1, 1, 1, '{}', 23),
(73, 7, 'org_email', 'text', 'Org Email', 0, 0, 0, 1, 1, 1, '{}', 25),
(74, 7, 'website', 'text', 'Website URL (if any):', 0, 0, 0, 1, 1, 1, '{}', 27),
(75, 7, 'digital_presence', 'text', 'Digital presence (including social media)', 0, 0, 0, 1, 1, 1, '{}', 29),
(76, 7, 'file_photo', 'file', 'File Photo', 0, 0, 0, 1, 1, 1, '{}', 30),
(77, 7, 'file_video', 'file', 'File Video', 0, 0, 0, 1, 1, 1, '{}', 31),
(78, 7, 'file_awards', 'file', 'File Awards', 0, 0, 0, 1, 1, 1, '{}', 32),
(79, 7, 'file_social', 'file', 'File Social', 0, 0, 1, 1, 1, 1, '{}', 33),
(81, 7, 'file_support', 'file', 'File Support', 0, 0, 0, 1, 1, 1, '{}', 34),
(82, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 35),
(83, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 36),
(84, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 37),
(85, 7, 'category_1_id', 'text', 'Category 1 Id', 0, 0, 1, 1, 1, 1, '{}', 38),
(86, 7, 'category_1', 'text', 'Category 1', 0, 1, 1, 1, 1, 1, '{}', 39),
(87, 7, 'subcategory_1_id', 'text', 'Subcategory 1 Id', 0, 0, 1, 1, 1, 1, '{}', 40),
(88, 7, 'subcategory_1', 'text', 'Subcategory 1', 0, 1, 1, 1, 1, 1, '{}', 41),
(89, 7, 'category_2_id', 'text', 'Category 2 Id', 0, 0, 0, 1, 1, 1, '{}', 42),
(90, 7, 'category_2', 'text', 'Category 2', 0, 0, 0, 1, 1, 1, '{}', 43),
(91, 7, 'subcategory_2_id', 'text', 'Subcategory 2 Id', 0, 0, 0, 1, 1, 1, '{}', 44),
(92, 7, 'subcategory_2', 'text', 'Subcategory 2', 0, 0, 0, 1, 1, 1, '{}', 46),
(93, 7, 'response_1', 'text', 'Response 1', 0, 0, 0, 1, 1, 1, '{}', 47),
(94, 7, 'response_2', 'text', 'Response 2', 0, 0, 0, 1, 1, 1, '{}', 48),
(95, 7, 'response_3', 'text', 'Response 3', 0, 0, 0, 1, 1, 1, '{}', 49),
(96, 7, 'response_4', 'text', 'Response 4', 0, 0, 0, 1, 1, 1, '{}', 50),
(97, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(100, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(101, 4, 'cat_image', 'image', 'Cat Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(102, 7, 'facebook_link', 'text', 'Facebook Link', 0, 0, 0, 1, 1, 1, '{}', 22),
(103, 7, 'insta_link', 'text', 'Insta Link', 0, 0, 0, 1, 1, 1, '{}', 24),
(104, 7, 'org_fb_link', 'text', 'Org Fb Link', 0, 0, 0, 1, 1, 1, '{}', 26),
(105, 7, 'org_insta_link', 'text', 'Org Insta Link', 0, 0, 0, 1, 1, 1, '{}', 28),
(106, 7, 'response_5', 'text', 'Response 5', 0, 0, 0, 1, 1, 1, '{}', 45),
(107, 7, 'votes', 'text', 'Votes', 0, 1, 1, 1, 1, 1, '{}', 6),
(108, 7, 'status', 'text', 'Status', 0, 0, 0, 1, 1, 1, '{}', 7),
(109, 7, 'display_profile_pic', 'image', 'Display Profile Pic', 0, 1, 1, 1, 1, 1, '{}', 2),
(111, 7, 'name_hindi', 'text', 'Name Hindi', 0, 0, 0, 0, 0, 0, '{}', 51),
(112, 7, 'position_english', 'text', 'Position English', 0, 1, 1, 1, 1, 1, '{}', 52),
(113, 7, 'position_hindi', 'text', 'Position Hindi', 0, 0, 0, 1, 1, 1, '{}', 4),
(114, 7, 'Profile_text_english', 'text_area', 'Profile Text English', 0, 0, 0, 1, 1, 1, '{}', 53),
(115, 7, 'profile_text_hindi', 'text_area', 'Profile Text Hindi', 0, 0, 0, 1, 1, 1, '{}', 54),
(116, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 12, 'user_id', 'text', 'Voter Id', 0, 1, 1, 0, 0, 0, '{}', 2),
(118, 12, 'category_id', 'text', 'Category Id', 0, 0, 0, 0, 0, 0, '{}', 5),
(119, 12, 'subcategory_id', 'text', 'Subcategory Id', 0, 0, 0, 0, 0, 0, '{}', 6),
(120, 12, 'participant_id', 'text', 'Participant Id', 0, 0, 0, 0, 0, 0, '{}', 7),
(121, 12, 'user_vote_hasone_user_relationship', 'relationship', 'Voter Name', 0, 1, 1, 0, 0, 0, '{\"model\":\"\\\\App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(122, 12, 'user_vote_hasone_participant_relationship', 'relationship', 'Participants Mobile', 0, 1, 1, 0, 0, 0, '{\"model\":\"\\\\App\\\\Participant\",\"table\":\"participants\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"participant_id\",\"label\":\"mobile_number\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(123, 12, 'user_vote_hasone_participant_relationship_1', 'relationship', 'Participants Name', 0, 1, 1, 0, 0, 0, '{\"model\":\"\\\\App\\\\Participant\",\"table\":\"participants\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"participant_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(124, 12, 'user_vote_hasone_category_relationship', 'relationship', 'Categories', 0, 1, 1, 0, 0, 0, '{\"model\":\"\\\\TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"category_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(125, 12, 'user_vote_hasone_user_relationship_1', 'relationship', 'Voter Mobile', 0, 1, 1, 1, 1, 1, '{\"model\":\"\\\\App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"mobile\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(126, 7, 'participants_order', 'text', 'Participants Order', 0, 0, 0, 1, 1, 1, '{}', 5),
(127, 7, 'final_submit_status', 'text', 'Final Submit Status', 0, 1, 1, 1, 1, 1, '{}', 55),
(128, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(129, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-10-04 18:49:33', '2021-10-04 18:49:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-10-04 18:49:33', '2021-10-04 18:49:33'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-10-04 18:49:33', '2021-10-04 18:49:33'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-04 18:50:31', '2021-11-05 08:54:31'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-10-04 18:50:31', '2021-10-04 18:50:31'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(7, 'participants', 'participants', 'Participant', 'Participants', 'voyager-people', 'App\\Participant', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"participants_order\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-04 19:17:40', '2022-08-01 17:36:03'),
(8, 'subcategories', 'subcategories', 'Subcategory', 'Subcategories', 'voyager-pie-chart', 'App\\Subcategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-05 18:37:43', '2021-10-05 18:37:43'),
(12, 'user_votes', 'user-votes', 'User Vote', 'User Votes', NULL, 'App\\UserVote', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-28 01:13:48', '2023-08-29 06:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-10-04 18:49:34', '2021-10-04 18:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-10-04 18:49:34', '2021-10-04 18:49:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-10-04 18:49:34', '2021-10-04 18:49:34', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2021-10-04 18:49:34', '2021-10-04 19:23:21', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2021-10-04 18:49:34', '2021-10-04 19:23:21', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2021-10-04 18:49:34', '2021-10-05 18:38:07', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-10-04 18:49:34', '2021-10-04 19:23:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-10-04 18:49:34', '2021-10-04 19:23:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-10-04 18:49:34', '2021-10-04 19:23:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-10-04 18:49:34', '2021-10-04 19:23:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2021-10-04 18:49:34', '2021-10-05 18:38:07', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-10-04 18:50:31', '2021-10-05 18:38:09', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-10-04 18:50:32', '2021-10-04 18:50:32', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-10-04 18:50:33', '2021-10-04 18:50:33', 'voyager.pages.index', NULL),
(14, 1, 'Participants', '', '_self', 'voyager-people', '#000000', NULL, 2, '2021-10-04 19:17:41', '2021-10-04 19:23:21', 'voyager.participants.index', 'null'),
(15, 1, 'Subcategories', '', '_self', 'voyager-pie-chart', NULL, NULL, 9, '2021-10-05 18:37:43', '2021-10-05 18:38:09', 'voyager.subcategories.index', NULL),
(16, 1, 'User Votes', '', '_self', 'voyager-certificate', '#000000', NULL, 12, '2021-11-28 01:13:48', '2021-11-28 01:18:06', 'voyager.user-votes.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-10-04 18:50:33', '2021-10-04 18:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_1_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'Y',
  `category_1` varchar(255) DEFAULT NULL,
  `subcategory_1_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_1` varchar(255) DEFAULT NULL,
  `category_2_id` int(10) UNSIGNED DEFAULT NULL,
  `category_2` varchar(255) DEFAULT NULL,
  `subcategory_2_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_2` varchar(255) DEFAULT NULL,
  `participants_order` int(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `social_media` text DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `insta_link` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_fb_link` text DEFAULT NULL,
  `org_insta_link` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `family_background` text DEFAULT NULL,
  `organization` text DEFAULT NULL,
  `work_profile` text DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `experience_date` date DEFAULT NULL,
  `org_address` text DEFAULT NULL,
  `org_city` text DEFAULT NULL,
  `org_state` text DEFAULT NULL,
  `org_pincode` varchar(255) DEFAULT NULL,
  `org_contact_number` varchar(255) DEFAULT NULL,
  `org_email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `digital_presence` text DEFAULT NULL,
  `response_1` mediumtext DEFAULT NULL,
  `response_2` mediumtext DEFAULT NULL,
  `response_3` mediumtext DEFAULT NULL,
  `response_4` mediumtext DEFAULT NULL,
  `response_5` mediumtext DEFAULT NULL,
  `file_photo` text DEFAULT NULL,
  `file_video` text DEFAULT NULL,
  `file_awards` text DEFAULT NULL,
  `file_social` text DEFAULT NULL,
  `file_support` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `votes` bigint(20) UNSIGNED DEFAULT 0,
  `display_profile_pic` varchar(255) DEFAULT NULL,
  `name_hindi` varchar(255) DEFAULT NULL,
  `position_english` varchar(255) DEFAULT NULL,
  `position_hindi` varchar(255) DEFAULT NULL,
  `Profile_text_english` longtext DEFAULT NULL,
  `profile_text_hindi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `final_submit_status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `mobile_number`, `name`, `category_1_id`, `status`, `category_1`, `subcategory_1_id`, `subcategory_1`, `category_2_id`, `category_2`, `subcategory_2_id`, `subcategory_2`, `participants_order`, `birthdate`, `email`, `address`, `social_media`, `facebook_link`, `insta_link`, `org_fb_link`, `org_insta_link`, `family_background`, `organization`, `work_profile`, `experience`, `experience_date`, `org_address`, `org_city`, `org_state`, `org_pincode`, `org_contact_number`, `org_email`, `website`, `digital_presence`, `response_1`, `response_2`, `response_3`, `response_4`, `response_5`, `file_photo`, `file_video`, `file_awards`, `file_social`, `file_support`, `created_at`, `updated_at`, `deleted_at`, `votes`, `display_profile_pic`, `name_hindi`, `position_english`, `position_hindi`, `Profile_text_english`, `profile_text_hindi`, `final_submit_status`) VALUES
(1, NULL, 'user1', 3, 'Y', 'HOLISTIC WELLNESS\n', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 8, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director ', '8', '2021-06-30', NULL, 'Kolkata', 'West Bengal', '700055', '9811111111', 'dummy@gmail.com', 'https://adityagroupindia.org/', NULL, 'She is an integral part of the Managing Committee of Bhaskar Aditya Foundation (BAF) and the Dum Dum Aditya Educational Society. As such, she contributes to the overall quality of the units by developing efficient teams and reviewing, employing and recommending improved procedures and policies. Her inspiring, passionate and forward-thinking leadership skills allow her to develop and execute business strategies to attain long- and short-term goals. She is responsible for overseeing the day-to-day business operations as well as financial performance and ensuring all of the legal guidelines and company policies are clearly communicated and adhered to. Under the umbrella of BAF, she carries out various CSR activities while developing strategic operating plans. She also directs and supervises the activities of the principals and management staff of the School Board and liaisons with the board to ensure all of the efforts are in alignment with strategies for attaining goals.', NULL, 'Under the umbrella of Bhaskar Aditya Foundation, she carries out various CSR activities while developing strategic operating plans. She also directs and supervises the activities of the principals and management staff of the School Board and liaisons with the board to ensure all of the efforts are in alignment with strategies for attaining goals. Various scholarships are given out to school and sports students under this Foundation to help nurture grassroot talent.', 'A leader and strategist, she is able to steer the company in the most profitable direction while ensuring the companyÃ¢â‚¬â„¢s mission, vision and long-term goals are met. Additionally, she is responsible for analysing problematic situations and offer solutions for company growth and survival. She has successfully built and managed a diverse group of employees and works towards achieving company growth targets and projections in a competitive and dynamic environment. Our future plans include the expansion of all our hospitality outlets to various parts of the city along with nurturing the concept of Amar Paray Amar School wherein Aditya Academy is planning to tie-up with pre-schools to be their Authorised Pre-Schooling Partner, wherein kids after completion of pre-schooling can join Aditya Academy for Junior & high school experience. It will come up with 100 preschools, covering every nook & corner of the city.', NULL, '[{\"download_link\":\"files/JSoYNXMiLOPQ8tsj1RKkL8kmplWsxGhWB4NSZKWU.jpg\",\"original_name\":\"WhatsApp Image 2021-11-09 at 19.42.10.jpeg\"}]', NULL, NULL, NULL, '[{\"download_link\":\"files/klaLhbWxeYjjoGRQy2iZNw7EMZMbaroVPk1UjSQP.pdf\",\"original_name\":\"Roshni Mam Profile.pdf\"}]', '2023-08-15 00:42:30', '2022-07-29 02:40:32', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Devaleena Ghosh, a seasoned Clinical Psychologist, pioneers Kornash The Lifestyle Management School. With 20+ years\' experience, she specializes in Couple Counselling and Family Therapy, empowering urban women to navigate relationships and self-connection. Through workshops, counseling, and training courses, Devaleena fosters optimal mental health. She champions kindness as a learnable skill and advocates for emotional literacy. Founder of Kolkata\'s sole Preventive Mental Health care center for women, she\'s impacted 10,000+ lives in two decades. Devaleena\'s commitment to nurturing clients and professionals alike reflects her holistic approach to mental well-being and her mission to empower women for stronger families and communities.\n', NULL, 'N'),
(2, NULL, 'user2', 2, 'Y', 'COMMUNITY SERVICE\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 5, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director ', '35', '2021-06-30', NULL, 'Kolkata', 'West Bengal', '700160', '9811111111', 'dummy@gmail.com', NULL, NULL, 'I have trained in Medical Oncology and specialize in the treatment of Lymphomas and Leukemias. Working in the Government Hospital and not for profi Institutes taught me to look after the marginalized section of the population with empathy. I learnt to use resources judiciously and rose to the challenge of making curative treatments available to patients at any cost.I have been able to inspire my patients to give back to the society that helped them in the time of their needs. My patients donate generously through their NGOs towards treatment completion of new patients, making the standard of care treatment available for the marginalized patients and providing support in the form of counselling new patients go through the treatment. We disseminate information to patients on therapy as well as those who have completed therapy through Patient Survivor day programs. I have been a teacher, mentor and guide to many Medical Oncologists across the country. Many of them are now in key positions in the Government as well as the private hospitals.I have collaborated and paricipated in research in Oncology for over 30 years and have over 150 papers published in Peer reviewed journals and in text books.', 'I was fortunate to be born in a progressive thinking family, where my education was given the first priority. I was taught by the convent nuns and dedicated teachers of Carmel Convent School in Durgapur to focus on building myself into a good citizen, with compassion for my fellow country men and women. I trained under the best minds in the field of Oncology in my formative years at the Tata Memorial Hospital in Mumbai. I was encouraged to work beyond my duty towards patient care and was initiated into clinical research and trials. I married a friend and colleague and received all the encouragement to achieve the best in my carrier.So honestly I have not faced any challenges in achieving my goals.', 'Working with cancer patients with empathy, and finding solutions to many of their logistic and financial problems helped save lives of treatable/ curable cancer patients. I have encouraged my patient survivors and their care givers to initiate counselling groups, and fund raising for new patients with Lymphoma. This has enabled large number of otherwise unaffording patients receive the standard of care treatment for their disease. My patients run charities that enable new patients complete their treatment through the Lymphoma foundation I set up at the Tata Memorial Hospital, Mumbai; Akanksha Medical Trust, Pune; and Ashray, Kolkata.These NGOs also take up counselling new Lymphoma patients in their initial difficult days of dealing with the diagnosis and understanding the inticacies of treatment.I have been instrumental in encouraging my younger colleagues train in clinical research methodologies. I have been a faculty and the Steering as well as the Executive Comittee member of the Australia and Asia Pacific Clinical Oncology Training Workshop for over a decade. This group has conducted a large number of workshops in different parts of the country over the last few years in order to bring awareness in the younger oncology community regarding the most scientific methods to evaluate new treatments, understand their true impact and use them judiciously.', 'Iam working with the new technologies, specially digital in order to make infromation available to patients. One such experiment is the Lymphomap platform recently launched. Not only will it provide information but also expertise to patients and their doctors in remote areas. Making treatments uniform across the country through well written guidelines as well as  making treatment available close to the patients residence is my goal.With the help of Machine learning and Artificial Intelligence, my recent work involves trying to understand treatment strategies that may make a difference in the long term outcomes of patients with a high risk of recurrence of their lymphoma/ cancer.', 'I was born in Durgapur, West Bengal to parents from North India, whose families had settled in New Delhi during partition. I trained and worked in Goa and Mumbai during my formative years, and married a friend and colleague from Kerala in South India. I am a complete Indian.', '[{\"download_link\":\"files/OwxtdItx1obMBygalm08v5XjGUZpY8xiaqMu075a.jpg\",\"original_name\":\"image001.jpg\"}]', NULL, NULL, NULL, NULL, '2023-08-15 04:44:53', '2022-07-29 01:57:57', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Jyotirmai Club, ignited by the vision of four remarkable women Prabhaji Shridhar, Late Draupadiji Khaitan, Late Kumudiniji Khaitan and Late Krishnaji Khaitan, has kindled women empowerment and sisterhood. With 509 active members, the club\'s diverse departments, from crafting household items to fostering education and healthcare, create a haven for growth. Women, driven by determination, find solace and courage within this nurturing environment. Beneath the Garcha Road roof, the club\'s selfless service blooms, extending education to 200 underprivileged children, healthcare through Jeevan Jyoti, and spiritual fulfillment via Gyan Jyoti. Their creed is simple but profound: in giving, they receive. Jyotirmai is not just a club; it\'s an empowering beacon for women and their communities.\n', NULL, 'N'),
(3, NULL, 'user3', 2, 'Y', 'COMMUNITY SERVICE\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 6, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director ', '18', '2021-06-30', NULL, 'Kolkata', 'West Bengal', NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, 'I started as a Pulmonologist in India who trained further in UK to return to Kolkata with new skills  to make it a world class destination in the field of Interventional Pulmonology. Covid times tested our mettle to the limits and my biggest achievement apart from looking after complicated respiratory patients has been to be able to serve the people of my city during a devastating pandemic of our life times. Each patient that went back to their family from hospital was the very reason I chose tbis profession and am proud to be a part of .', 'Challenges are a part of parcel in my profession and we overcome them with grit and hope . There have been too many to name one but the interesting one to recount will be when I chose Pulmonology as my specialisation, I was asked why I wouldn\'t want to be a gynaecologist . I had to convince and prove my passion for the subject inorder to persue it.', 'I have tried to do my best at work and help as many patients as I could. I have tried to instill the love of the subject in many juniors and am happy to see so many of them opting to be a Pulmonologist.', 'I hope to be able to be part of initiatives for upliftment of medical care in our part of the country .', 'No', '[{\"download_link\":\"files/3rexelvD4S0kyUJxu21npEtvaIxeQJUiJIHf2EOs.jpg\",\"original_name\":\"Screenshot_20211114-001253_Gallery.jpg\"}]', NULL, NULL, NULL, NULL, '2023-11-15 17:31:58', '2022-07-29 01:59:12', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Nishtha was born from the determination of a small group of women - a force that now encompasses more than 1000 tireless volunteers. United by unwavering ideals, Nishtha strives for equality through education, empowering girls to lead and uplift their communities. Through platforms for young minds, they nurture passions, creating future changemakers. Women are offered self-reliance via business opportunities. Amidst adversity, Nishtha\'s secretary, Ms. Mina Das, witnessed young survivors emerge as leaders during the pandemic, tending to medical needs, combating child marriage, and trafficking. Nishtha believes in women\'s transformative power, echoing the words of Ms. Das: \"Women are catalysts for change.\"\n', NULL, 'N'),
(4, NULL, 'user4', 7, 'Y', 'VISUAL ARTS\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 17, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'actor', '26', '2021-06-30', NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/GMDcVFip4gJElSFgk7RCdJLdauft7sjk2ELifgxj.jpg\",\"original_name\":\"anubha fatehpuria 2019.jpg\"}]', NULL, NULL, NULL, NULL, '2023-08-15 04:03:10', '2022-07-29 02:01:27', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Radhika Agarwala, an accomplished visual artist with global recognition, seamlessly weaves nature\'s essence into her art. A Goldsmiths, London and School Of The Art Institute,Chicago alumna, her work resonates with intricate sculptures and installations that mirror the delicate balance between urban life and nature. Radhika\'s mentorship empowers young women as artists and entrepreneurs. A beacon of creative brilliance, she advocates environmental consciousness and women\'s aspirations. Her profound interplay of artistry, kindness, and ecological awareness inspires generations to treasure and protect our world. Radhika believes that it is impossible to ignore mankind’s role as a major geological force, one whose impact we have not yet fully fathomed.\n', NULL, 'N'),
(5, NULL, 'user5', 1, 'Y', 'AESTHETICS', 1, 'You Shine', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Faculty', '15', '2021-06-30', NULL, 'Kolkata', 'West Bengal', '700135', '9811111111', 'dummy@gmail.com', 'https://www.amity.edu/kolkata/', NULL, 'I have contributed archaeological studies which has been always a patriarchal domain. From conducting field work in most inaccessible areas to working with the communities which are under abject poverty, my academic career has not only helped me in developing my knowledge skills but also shaped me as a true human. I have contributed on International platforms by presenting case studies from eastern India (Bihar, Orissa and Bengal) and also published my in recognized journals. I have participated in International Projects with Universities, both in India and abroad. I have also bagged International Fellowships from the Queens University, Belfast, Nehru Trust and CWIT, UK. I have developed communication with the rural communities through the CRM practices which have helped them in knowing about education and heritage of India.', 'Biggest challenge was working in the most inhospitable areas of Bihar and the western uplands of Bengal. I have been stuck in areas with dense forests, remote villages for hours without food and communication. This was a part of my PhD field project and I could only overcome this through the presence of mind, perseverance and above all through God\'s grace. Having lost my mother at a tender age was equally difficult. She left me when I needed her the most. But I believe she has been there to guide me throughout and realize my dreams and aspirations.', 'I have connected with both top-down and bottom-up approaches and tried to impart education on cultural heritage and awareness amongst the rural people of Bengal and Bihar. I have communicated with the local masses wherefrom I have learnt their problems, their approaches and these have been published in the international and national journals. These have been put forward to the policy makers and the concerned authorities for both poverty alleviation and creating awareness for heritage conservation and participation.', 'I am planning to work particularly for the women in the rural domains and in this regard have planned to pen down their problems in the form of a book titled as \" landscape and Gender: Evaluating gender roles and genderscapes in eastern India\". Work with the marginalized sections , particularly women should start from the ground level and I am trying my level best to be one of the facilitators in bringing women to where they belong.', 'I would like to \'Thank\' and express my gratitude to platforms like Sanmarg Aparajita which has allowed women like us to share their views and in the long run this is surely allowing women of every section to emerge from darkness and marginalization towards the indispensable and ineffable light of glory and vigor.', '[{\"download_link\":\"files/6Jnx08sPvff4ym77mZJwhVL1BQCKguJilspd8co9.jpg\",\"original_name\":\"Sharmistha Chatterjee.jpg\"}]', NULL, '[{\"download_link\":\"files/PkseGcs5xv2QzK8kCnsPEyZBnQLt4ZXGua1yYXaS.pdf\",\"original_name\":\"Documents.pdf\"}]', NULL, NULL, '2023-08-14 20:20:40', '2022-07-29 01:53:59', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Anisha Saraf, the Chief Innovations Officer and Co-Founder of Dot & Key Skincare, stands as a pioneering figure in the beauty realm. Fueled by her desire to bridge the gap between global skincare trends and local preferences, Anisha embarked on a journey to introduce innovative experiences to the Indian market. Collaborating with her husband, she established Dot & Key, committed to blending international standards with Indian needs. With a track record spanning five years, each product Anisha introduces reflects her unwavering dedication to delivering both delight and effectiveness. Her journey showcases her determination to challenge societal norms, serving as a successful entrepreneur, wife, and mother. Anisha\'s devotion to championing women\'s empowerment resonates through Dot & Key\'s predominantly women-led team and initiatives that promote gender equality. Her embodiment of kindness shapes a workplace and world that thrives on upliftment, support, and transformative change.', NULL, 'N'),
(6, NULL, 'user6', 1, 'Y', 'AESTHETICS', 1, 'You Shine', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director ', NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"download_link\":\"files/BRJJ9l12ugfyMeLBEUfxNMXPcpPKrgIELrvoJGEW.jpg\",\"original_name\":\"IMG_20180717_003605.JPG\"}]', NULL, '[{\"download_link\":\"files/h2A3c1qMBknAyJ4bClPniv2DuO5g3bkASxy4BxIT.pdf\",\"original_name\":\"SG-certificates.pdf\"}]', '[{\"download_link\":\"files/wEzokfiri1xLDUe0ctOqQb2I6zVdSuGLU8Y4LyOv.pdf\",\"original_name\":\"07 CR MA CERTI.pdf\"}]', '[{\"download_link\":\"files/XJKQzzBCN43Q6Sgut0x9b822ZdNlGaeyIdx8QHQp.jpg\",\"original_name\":\"certificate image.jpg\"}]', '2023-08-15 03:55:57', '2022-07-29 14:43:04', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, ' Aishwarya Biswas, Founder of Auli Active Ayurveda, embarked on her entrepreneurial journey from home. With a team of passionate individuals, she\'s reshaping wellness and skincare, leaving an indelible mark through Auli products\' efficacy and experiences. Empathy, her driving force, stems from being a privileged single child. A champion of kindness, often criticized for being excessively kind, Aishwarya believes it\'s her greatest strength, inherited from her mother. Auli\'s core team comprises 70% smart, independent women, embodying her commitment to women\'s empowerment. She empowers women in Sundarbans, mentors startups, and conducts workshops on skincare, embracing the spirit of supporting women in various spheres.', NULL, 'N'),
(7, NULL, 'user7', 1, 'Y', 'AESTHETICS', 1, 'You Shine', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trustee', '33', '2021-06-30', NULL, 'Kolkata', 'West Bengal', '700027', '9811111111', 'dummy@gmail.com', 'www.aksharschool.org', NULL, 'Key Learnings - Ã¢â‚¬Â¢ Acquiring knowledge, not just knowing. Education is unlocking a world of potentialÃ¢â‚¬Â¢ Teaching should be relevant, authentic and valuable to each childÃ¢â‚¬Â¢ Keeping abreast with the developing world and therefore equipping each child with those skills which will help them in the near futureÃ¢â‚¬Â¢ To be part of the solution, not add to the problemÃ¢â‚¬Â¢ Learning to deal with failure as much as successKey Achievements - Ã¢â‚¬Â¢ Akshar being a pioneer in the field of inclusion and also being a successful inclusive modelÃ¢â‚¬Â¢ The Telegraph School Awards, for the School that DaresÃ¢â‚¬Â¢ The Telegraph School Awards, for The School of the Year, 2018Ã¢â‚¬Â¢ THE EARLY CHILDHOOD ASSOCIATION AWARD - 2018Ã¢â‚¬Â¢ PATTON AWARD FOR Ã¢â‚¬ËœA SCHOOL THAT CARESÃ¢â‚¬â„¢ - 2009  Presented by The Telegraph School Awards for ExcellenceÃ¢â‚¬Â¢ BRITISH COUNCIL INTERNATIONAL SCHOOL AWARD - 2009Ã¢â‚¬Â¢ ADAMAS INTERNATIONAL SCHOOL AWARD FOR \'A SCHOOL THAT LOOKS BEYOND Ã¢â‚¬â€œ 2005 Presented by The Telegraph School Awards for Excellence', 'When Akshar was started, the challenge was whether parents of mainstream students would admit their child into an inclusive school and merge the so far Ã¢â‚¬Å“divorcedÃ¢â‚¬Â worlds of the special and mainstream children. This, however, did not daunt us. I knew that we at Akshar were doing the correct thing. I knew that the recipients of the benefit of an inclusive school would not only be confined to those children with special needs, but also for mainstream children. Children would learn from the lesser-abled, and observe how they strive to achieve their goals despite limitations. They would grow up to be sensitive young children with sound humane values. The challenge for Akshar at the outset was getting parents of the Mainstream children to admit their child. Some questioned the concept and wondered whether their child\'s education would be compromised. We started with a total of 70 children till class II. Today we are a full grown I.S.C school with cent percent achievers. The victory today is that a lot more parents of mainstream children would like to admit their children to Akshar because of the values inculcated in their children in an inclusive environment. Akshar conducts workshops on Inclusion and Education for All, at the outset of every academic year, for parents. We must praise our teachers. It is their sheer motivation to learn more that keeps them closely affiliated with Akshar and its success. Workshops like Quality Circle Time conducted by Jenny Mosley, Global Trends and Best Practices in Education by Scholastic India, Workshop on Theatre Education in School conducted by The American Centre, Dyslexia - D.A.R.E to Win, a conference organised by Breaking through Dyslexia, to name a few, have worked extremely well in skill upgradation for our teachers.', 'The first step towards bringing about significant change in society is by building awareness. This can only be done by leading by example. Akshar, by virtue of being a pioneer in the field of Inclusive Education, has caused parents and students alike to accept, include and be sensitive to those that are differently-abled. At the outset, it not only ignited a dialogue, but the model in itself was a living representation of the movement.', 'Ã¢â‚¬Â¢ Developing a Life Skills Unit for identifying skills in young adults with additional needs and help facilitate employmentÃ¢â‚¬Â¢ To make Akshar an environmentally conscious and sustainable hub with an aim to minimise waste. The idea of switching to sustainability and finding alternatives is a prerequisite in the current times and it is a necessity for us to drive this sense of environmental responsibilities in students, parents, teachers and staff members. Our mantra at Akshar is to \"Reimagine. Recreate. Restore.\"To make Akshar truly follow Rudolf Steiner theory that a students moral, spiritual and creative sides need as much attention as their intellect. Each student that steps out of Akshar must stand apart to take on the world embodying the facets of a holistic human being. Happy and confident in his own skin!', NULL, '[{\"download_link\":\"files/dtPqLjpyllfjgGH5UCm2Z4iMOvtC49TIDwihFsW3.jpg\",\"original_name\":\"Kavneet Khullar.jpeg\"}]', NULL, NULL, NULL, NULL, '2023-08-15 02:23:55', '2022-07-29 01:55:16', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Shivani Dalmia, Co-Founder & Chief Marketing Officer of Cubii, embarked on a mission to democratize fitness through accessible solutions. Cubii\'s innovative compact seated elliptical makes exercise achievable for all, regardless of age, ability, or lifestyle. With over a million users globally, the impact on lives is profound. As a co-founder, Shivani led brand building, marketing, and direct-to-consumer sales, guided by the ethos of \"doing good while doing well.\" Empathy is a core value, reflected in initiatives like Cubii Cares, where ellipticals were gifted to those in need. Committed to women\'s empowerment, Shivani fosters an environment where vulnerability and strength coexist, fostering confidence and mentorship. Her influence extends to mentoring women in tech programs and investing in women-founded startups.', NULL, 'N'),
(8, NULL, 'user8', 7, 'Y', 'VISUAL ARTS\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 18, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'actor', '22', '2021-06-30', NULL, 'Kolkata', 'West Bengal', '700096', '9811111111', 'dummy@gmail.com', NULL, NULL, 'I have always been impressed, influenced, and intrigued by my guru Sharmila Biswas\' vast body of work. From her I learnt the importance of methodical research, and a deliberate approach to creating original work.I was privileged to receive special training from dance stalwarts like Guru Kelucharan Mohapatra, Smt. Kalanidhi Narayanan, Smt. Sonal Mansingh, Smt. Malavika Sarukkai, and Guru Durgacharan Ranbir. That association was priceless, and I gained critical strength and confidence helping me every step of my professional career.My training with fitness expert Dr. Kannan Pugazhendi completely changed my perspective towards staying fit as a dancer. That learning helped me create my own dance fitness regime that I\'ve incorporated in my training method.Achievements:1. First recipient of Guru Kelucharan Mohapatra Yuva Pratibha Samman2. Ustad Bismillah Khan Yuva Puraskar3. Kalavahini Senior Fellowship4. Sanskriti Madhobi Chatterjee Memorial Fellowship5. National Scholarship, Ministry of Culture, Government of India.', 'Managing my solo career while also running my own dance institute, has been an ongoing challenge. I learn and overcome many hurdles everydayÃ¢â‚¬Â¦ It is a constant process.', 'As a performer and teacher of a classical dance form I believe I bear the responsibility of preserving and passing on a very rich cultural artefact. With my life\'s work I have strived to achieve that. In the process, I hope to leave my own footprints of artistic thoughts and ideas in the sand of time.', 'I would like to continue to create original work as a choreographer, and contribute further to my pedagogical repertoire.', NULL, '[{\"download_link\":\"files/S1Ck5htowNnmJBlGMrHxfX7nBiOVwEXpdY6eAmjw.jpg\",\"original_name\":\"Sgg.jpg\"}]', '[{\"download_link\":\"files/RtEiL7escOV8p5WhR7NFp6ZklejS7NJkKiTz2L49.mp4\",\"original_name\":\"sgg video clip.mp4\"}]', '[{\"download_link\":\"files/5PCmcGFz2MDimq4SQaStrcG7RUME5Y3fqPHIN6C4.jpg\",\"original_name\":\"Bismillah Khan Award.jpg\"}]', '[{\"download_link\":\"files/0xKQ6AGzQhCgXG1j3adqRke4TpczmCh1iXEp94n0.jpg\",\"original_name\":\"Review.jpg\"}]', '[{\"download_link\":\"files/8ojpCMQIuoIMsEvo2yjsROYMF36trSFfxzTTq8gX.jpg\",\"original_name\":\"Sgg.jpeg\"}]', '2023-08-15 16:57:12', '2022-07-29 02:00:22', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Shweta Mansingka, a ceramic artist, crafts her masterpieces through an intimate dialogue with nature and clay. Her journey, nurtured by the vibrant heritage of Calcutta, resonates in every stroke of her creations. Shweta\'s sculptures reflect the acute relationship between nature and introspection, inviting viewers to contemplate the unspoken. As the founder of Studio Shweta LLP, her artistic sanctuary, she seamlessly marries spirituality with creativity, nurturing both her work and the community around her. Her dedication to empowering women extends through her support for causes like Akshay Pratishthan, Om Creations Trust, and Seekho Sikhao. Shweta\'s journey exemplifies kindness, interconnectedness, and the transformative power of art.\n', NULL, 'N'),
(9, NULL, 'user9', 7, 'Y', 'VISUAL ARTS\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 16, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:20:37', '2022-07-29 02:02:11', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Falguni Bhatt, a visionary sculptor, ceramist, and installation artist, celebrates the fusion of thought and practice in her creations. As the Founder of Aorang Studio, she pioneers the transformation of ceramics into an artistic language. Her journey, nurtured by her profound bond with nature and her surroundings, resonates in her distinct ceramic sculptures. Falguni\'s devotion extends to co-founding the \"Indian Ceramic Art Foundation,\" fostering contemporary ceramics. With solo exhibitions worldwide, including Jingdezhen International Studio and Taoxichuan Art Avenue Museum, her art becomes a profound language of transformation and introspection.\n', NULL, 'N'),
(10, NULL, 'user10', 2, 'Y', 'COMMUNITY SERVICE\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 4, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:39:50', '2022-07-29 01:56:54', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Dakshini Prayash uplifts and enables Madurdaha\'s (a community in Madurdaha Anandpur area of South Kolkata). Their school Madhurdaha Satyavridhi Vidyalaya nurtures over 400 students in academics, arts, sports, values, and responsibility. Wholesome meals from their kitchen foster vitality, enabling performances. Regular health check-ups ensure ongoing care. Having started off as a teacher 3 decades ago, Anubhuti Prakash, now the president feels Dakshini Prayas gave her a purpose and vision. She takes pride in the fact that she has trained the mothers of these students bolstering them as independent backbones of society. \n', NULL, 'N'),
(11, NULL, 'user11', 6, 'Y', 'MANAGEMENT PROFESSIONAL \n', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 15, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:44:00', '2022-07-29 02:46:13', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Sujata Guin, an epitome of empowered leadership, has carved her niche as Senior Vice President & Chief Human Resources Officer at Apeejay Surrendra Park Hotels Ltd. With a distinguished career spanning 24 years, she spearheads HR for The Park Hotels, Zone by the Park, Flurys and Apeejay Institute of Hospitality. Guiding a team of 3000 women and men, she champions diversity, equity, inclusion and empowerment along with remarkable initiatives like ASPHL\'s robust Diversity Program. Sujata is also Vice Chair of CII-IWN WB Chapter, relentlessly empowering women across industries. Her dedication has led to national recognition and awards and reinforces her commitment to shaping extraordinary workplaces.\n', NULL, 'N'),
(12, NULL, 'user12', 6, 'Y', 'MANAGEMENT PROFESSIONAL \n', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 13, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:46:10', '2022-07-29 02:47:46', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Anju Madeka, a distinguished leader with over three decades of diverse experience, currently serves as the President & Chief Financial Officer at Bengal Aerotropolis Projects Limited. With an illustrious career spanning various sectors, from consumer goods to infrastructure, she\'s excelled in roles like mergers & acquisitions, project implementation, and resource mobilization. An accomplished chartered accountant, Anju\'s dynamic skills extend beyond her qualification. Her dedication to pioneering initiatives, such as transforming greenfield airports and cities, showcases her commitment to innovation. A strong advocate for women empowerment, she\'s supported education and job training for the underprivileged, creating lasting impact through compassion and kindness.\n', NULL, 'N'),
(13, NULL, 'user13', 6, 'Y', 'MANAGEMENT PROFESSIONAL \n', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 14, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:48:28', '2022-07-29 02:46:55', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Pallavi Paul - Technical Director at BSR & Co LLP, thrives in leading and shaping the Transfer Pricing landscape. Pioneering the East market, she introduced ESG Tax in her organisation, delivering the multiple Tax Transparency Reports in India. As tax liaison of one of the most diversified and oldest Indian conglomerate, she transforms client concerns into solutions. Pallavi\'s ardor extends beyond transactions, creating growth paths for juniors and fostering a humane workplace. A mentor and advocate, she champions women\'s potential within her firm\'s Network of Women. As an empathetic leader, Pallavi believes in creating opportunities for others, embodying her belief in equitable growth. Her unwavering support for education of girl child, sustainability for marginalized women, and being there for anyone in need paints a compassionate canvas of empowerment. With a heart for learning and giving, her 24 year long journey radiates warmth and impact.\n', NULL, 'N'),
(14, NULL, 'user14', 3, 'Y', 'HOLISTIC WELLNESS\n', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 7, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:56:19', '2022-07-29 02:40:00', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Archana Lakhotia, a beacon of compassion and empowerment, embodies the spirit of Prithvi - Temple of Inner Journey. With more than two decades of experience, she has fostered a haven for seekers, promoting self-worth and womanhood. Through holistic studies and mentorship, Archana uplifts women, guiding them towards leading respectful and empowered lives. Prithvi, a spiritual space, stands as a tribute to her unwavering commitment. Her efforts extend to supporting elderly women and trafficking survivors. She organizes spiritual trips for women which help them delve deeper within. Her journey encapsulates the essence of supporting women in their quest for identity and significance. Today Prithvi is known and promulgated through word of mouth only.\n', NULL, 'N'),
(15, NULL, 'user15', 3, 'Y', 'HOLISTIC WELLNESS\n', 1, 'You Shine (5 to 10 years of experience)', NULL, NULL, NULL, NULL, 9, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 19:59:46', '2022-07-29 02:41:10', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Neerja Poddar, a dedicated practitioner of complementary healing sciences for over two decades, is on a mission to empower lives. Her passion for teaching tools and techniques that can transform lives led her to create a niche in the realm of holistic wellness. With a rich past that includes associations with the California Hypnosis Institute of India and impactful roles at Heritage School and Espee Enterprises, Neerja is a beacon of resilience and empowerment. Her wisdom reflects the belief that choosing to be greater than life\'s challenges is the ultimate act of kindness towards oneself. Neerja\'s journey is marked by her commitment to uplifting women, sharing her arsenal of tools to help them overcome cultural and societal barriers, while drawing strength from her own experiences and the legacy of strong women.\n', NULL, 'N'),
(16, NULL, 'user16', 4, 'Y', 'HOME & LIFESTYLE\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 12, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 20:45:11', '2022-07-29 02:44:44', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Vinita and Vaidehi Kedia, the driving forces behind Mudrika, have crafted a 34-year legacy. Stemming from a single mother\'s determination, Mudrika transcended silver\'s traditional role, becoming a pinnacle of contemporary art. Their journey revitalized age-old crafts, reshaping silver from mere possession into true artistic expression. The fusion of Vaidehi\'s design acumen and Vinita\'s production expertise harmoniously shaped Mudrika\'s evolution. Guided by authenticity, they reinvigorated fading crafts, transforming them into treasured heirlooms. Through unwavering passion and innovative thinking, they navigated challenges and turned them into triumphant successes. As they step into the future, Mudrika stands as a testament to their unwavering dedication, embodying a blend of heritage and modernity that resonates within each and every creation.', NULL, 'N'),
(17, NULL, 'user17', 4, 'Y', 'HOME & LIFESTYLE\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 10, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 20:46:27', '2022-07-29 02:43:09', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Madhulika Periwal and Rajshree Bhartiya, founders of BAROQUE Fine Silver, infuse their passion into each creation. Their involvement from design to artisan collaboration reflects dedication and innovation. Their adherence to the mantra \"Always be kinder than necessary\" shapes genuine connections with artisans, collaborators, and clients. Women\'s empowerment is a core value, seen in fair wages and skill development, fostering a network of empowered women. BAROQUE\'s commitment to uplifting others is evident in outreach programs and workshops. Their journey embodies artistic fervor, kindness, and a fervent commitment to women\'s growth, promising a future of shared empowerment.', NULL, 'N'),
(18, NULL, 'user18', 4, 'Y', 'HOME & LIFESTYLE\n', 2, 'You Inspire (More than 10 years of experience)', NULL, NULL, NULL, NULL, 11, NULL, NULL, 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9811111111', 'dummy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 21:13:12', '2022-07-29 02:44:10', NULL, 0, 'participants/November2021/profile_img.png', NULL, 'position in company', NULL, 'Ritika Kejariwal, an accomplished entrepreneur, heads Kejriwal Gold & Silver (SKV Collection Pvt Ltd). With 30 years of experience in Home & Lifestyle, she founded a silver shop driven by inclusivity and empowerment. As Director, Ritika not only manages the business but also mentors her team, fueling her enthusiasm. Her ethos of surpassing kindness resonates in her shop, embracing customers with warmth. She champions women\'s support, offering equal opportunities, mentorship, and advocacy, creating an environment where talent thrives. Ritika\'s journey exemplifies determination, compassion, and the transformative power of empowerment, inspiring those around her.', NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(2, 'browse_bread', NULL, '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(3, 'browse_database', NULL, '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(4, 'browse_media', NULL, '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(5, 'browse_compass', NULL, '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(6, 'browse_menus', 'menus', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(7, 'read_menus', 'menus', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(8, 'edit_menus', 'menus', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(9, 'add_menus', 'menus', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(10, 'delete_menus', 'menus', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(11, 'browse_roles', 'roles', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(12, 'read_roles', 'roles', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(13, 'edit_roles', 'roles', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(14, 'add_roles', 'roles', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(15, 'delete_roles', 'roles', '2021-10-04 18:49:34', '2021-10-04 18:49:34'),
(16, 'browse_users', 'users', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(17, 'read_users', 'users', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(18, 'edit_users', 'users', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(19, 'add_users', 'users', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(20, 'delete_users', 'users', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(21, 'browse_settings', 'settings', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(22, 'read_settings', 'settings', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(23, 'edit_settings', 'settings', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(24, 'add_settings', 'settings', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(25, 'delete_settings', 'settings', '2021-10-04 18:49:35', '2021-10-04 18:49:35'),
(26, 'browse_categories', 'categories', '2021-10-04 18:50:31', '2021-10-04 18:50:31'),
(27, 'read_categories', 'categories', '2021-10-04 18:50:31', '2021-10-04 18:50:31'),
(28, 'edit_categories', 'categories', '2021-10-04 18:50:31', '2021-10-04 18:50:31'),
(29, 'add_categories', 'categories', '2021-10-04 18:50:31', '2021-10-04 18:50:31'),
(30, 'delete_categories', 'categories', '2021-10-04 18:50:31', '2021-10-04 18:50:31'),
(31, 'browse_posts', 'posts', '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(32, 'read_posts', 'posts', '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(33, 'edit_posts', 'posts', '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(34, 'add_posts', 'posts', '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(35, 'delete_posts', 'posts', '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(36, 'browse_pages', 'pages', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(37, 'read_pages', 'pages', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(38, 'edit_pages', 'pages', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(39, 'add_pages', 'pages', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(40, 'delete_pages', 'pages', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(41, 'browse_participants', 'participants', '2021-10-04 19:17:41', '2021-10-04 19:17:41'),
(42, 'read_participants', 'participants', '2021-10-04 19:17:41', '2021-10-04 19:17:41'),
(43, 'edit_participants', 'participants', '2021-10-04 19:17:41', '2021-10-04 19:17:41'),
(44, 'add_participants', 'participants', '2021-10-04 19:17:41', '2021-10-04 19:17:41'),
(45, 'delete_participants', 'participants', '2021-10-04 19:17:41', '2021-10-04 19:17:41'),
(46, 'browse_subcategories', 'subcategories', '2021-10-05 18:37:43', '2021-10-05 18:37:43'),
(47, 'read_subcategories', 'subcategories', '2021-10-05 18:37:43', '2021-10-05 18:37:43'),
(48, 'edit_subcategories', 'subcategories', '2021-10-05 18:37:43', '2021-10-05 18:37:43'),
(49, 'add_subcategories', 'subcategories', '2021-10-05 18:37:43', '2021-10-05 18:37:43'),
(50, 'delete_subcategories', 'subcategories', '2021-10-05 18:37:43', '2021-10-05 18:37:43'),
(51, 'browse_user_votes', 'user_votes', '2021-11-28 01:13:48', '2021-11-28 01:13:48'),
(52, 'read_user_votes', 'user_votes', '2021-11-28 01:13:48', '2021-11-28 01:13:48'),
(53, 'edit_user_votes', 'user_votes', '2021-11-28 01:13:48', '2021-11-28 01:13:48'),
(54, 'add_user_votes', 'user_votes', '2021-11-28 01:13:48', '2021-11-28 01:13:48'),
(55, 'delete_user_votes', 'user_votes', '2021-11-28 01:13:48', '2021-11-28 01:13:48');

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
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 2),
(52, 1),
(53, 1),
(54, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 18:50:32', '2021-10-04 18:50:32'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-04 18:50:33', '2021-10-04 18:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'developer', 'Developer', '2021-10-04 18:49:34', '2021-10-04 18:52:09'),
(2, 'admin', 'Administrator', '2021-10-04 18:49:34', '2021-10-04 18:53:01'),
(3, 'site_user', 'Site User', '2021-11-05 12:11:00', '2021-11-05 12:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Aparajita aage kaun 2021', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/November2021/OesyBA2eIFRuOGum77LG.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/November2021/qUttA8iUnAarW99xBIWx.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Aparajita', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/November2021/sGjQ1Q5WppNhk2LHwPh2.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/November2021/cVpddsjEGskyEHEG9ch8.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `step_1`
--

CREATE TABLE `step_1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `category_1_id` int(10) UNSIGNED DEFAULT NULL,
  `category_1` varchar(255) DEFAULT NULL,
  `subcategory_1_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `step_2`
--

CREATE TABLE `step_2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `social_media` mediumtext DEFAULT NULL,
  `facebook_link` mediumtext DEFAULT NULL,
  `insta_link` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `family_background` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `step_2`
--

INSERT INTO `step_2` (`id`, `p_id`, `name`, `birthdate`, `mobile_number`, `email`, `address`, `social_media`, `facebook_link`, `insta_link`, `family_background`) VALUES
(1, 75, 'Rahul Das', '2022-01-06', '8759017826', 'dasrrrrr8759@gmail.com', 'kolkata', 'Temporibus consequat', 'ddd', 'ddddd', 'ddd'),
(2, 75, 'Rahul Das', '2022-01-06', '8759017826', 'dasrrrrr8759@gmail.com', 'kolkata', 'Temporibus consequat', 'ddd', 'ddddd', 'ddd'),
(3, 78, 'egst tg et', '2022-01-20', '8759017826', 'dasrrrrr8759@gmail.com', 'kolkata', 'Reprehenderit ullam', 'ddd', 'ddddd', 'rg3rgf3g53fg35tf35f'),
(4, 78, 'Nathan Delacruz', '1978-05-14', '6724321234', 'roce@mailinator.com', 'Enim ex dicta ex rer', 'Pariatur Aute assum', 'Velit vel irure repr', 'Duis vero iure conse', 'Non veritatis eligen'),
(5, 75, 'Abigail Sweeney', '1974-10-05', '5043333333', 'noqula@mailinator.com', 'Perspiciatis minim', 'Eius consequat Nam', 'Enim autem laborum a', 'Quos voluptate est', 'Rerum quis id repreh'),
(6, 81, 'Samson Best', '1974-03-14', '9051507383', 'xucywixus@mailinator.com', 'Tempor vitae illo es', 'Quod perferendis qui', 'Nulla earum lorem in', 'Quis id et in archi', NULL),
(7, 81, 'Rahul Test 123', '1974-03-31', '9051507355', 'xucywixu88@mailinator.com', 'Tempor vitae illo es', 'Quod perferendis qui', 'Nulla earum lorem in', 'Quis id et in archi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `step_3`
--

CREATE TABLE `step_3` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `org_fb_link` mediumtext DEFAULT NULL,
  `org_insta_link` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `organization` mediumtext DEFAULT NULL,
  `work_profile` mediumtext DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `org_address` mediumtext DEFAULT NULL,
  `org_city` mediumtext DEFAULT NULL,
  `org_state` mediumtext DEFAULT NULL,
  `org_pincode` varchar(255) DEFAULT NULL,
  `org_contact_number` varchar(255) DEFAULT NULL,
  `org_email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `digital_presence` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `step_4`
--

CREATE TABLE `step_4` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `response_1` mediumtext DEFAULT NULL,
  `response_2` mediumtext DEFAULT NULL,
  `response_3` mediumtext DEFAULT NULL,
  `response_4` mediumtext DEFAULT NULL,
  `response_5` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `step_5`
--

CREATE TABLE `step_5` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `file_photo` mediumtext DEFAULT NULL,
  `file_video` mediumtext DEFAULT NULL,
  `file_awards` mediumtext DEFAULT NULL,
  `file_social` mediumtext DEFAULT NULL,
  `file_support` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `display_name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'You Shine (5 to 10 years of experience)', 'You Shine', '2021-10-05 18:38:51', '2021-10-05 18:38:51'),
(2, 'You Inspire (More than 10 years of experience)', 'You Inspire', '2021-10-05 18:39:03', '2021-10-05 18:39:03');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_vote_count`
-- (See below for the actual view)
--
CREATE TABLE `total_vote_count` (
`id` bigint(20) unsigned
,`category` varchar(255)
,`segment` varchar(250)
,`nominee` varchar(255)
,`vote` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'PÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡gina', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'FunÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'PÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ginas', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-10-04 18:50:33', '2021-10-04 18:50:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'FunÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âµes', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(17, 'pages', 'title', 1, 'pt', 'OlÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ Mundo', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(19, 'pages', 'body', 1, 'pt', '<p>OlÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(22, 'menu_items', 'title', 12, 'pt', 'PublicaÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âµes', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(25, 'menu_items', 'title', 13, 'pt', 'PÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ginas', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(26, 'menu_items', 'title', 4, 'pt', 'FunÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âµes', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-10-04 18:50:34', '2021-10-04 18:50:34'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-10-04 18:50:35', '2021-10-04 18:50:35'),
(30, 'menu_items', 'title', 10, 'pt', 'ConfiguraÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âµes', '2021-10-04 18:50:35', '2021-10-04 18:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` text DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `ip`, `gender`, `pincode`, `state`, `city`, `address`, `dob`, `email`, `mobile`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dev', NULL, '', '', NULL, '', '', NULL, 'dev@dev.com', NULL, 'users/default.png', NULL, '$2y$10$ZJ4Z39BtMSgu5hCq.InU4uWVX/kBWe/Z3TcIjDiZC6KSpbWh0orau', 'kFAmquuGzWMEk1C3n2EhRQdurjJ2n43qzDfGqqj5qy0nQASQ7AVYbfpg90yt', '{\"locale\":\"en\"}', '2021-10-04 18:50:31', '2021-10-04 18:53:42'),
(2, 2, 'Admin', NULL, '', '', NULL, '', '', NULL, 'admin@admin.com', NULL, 'users/default.png', NULL, '$2y$10$jHDmLfNlJQRJdVVLM2WeveZSy0i2sYZQujfysPZYRCvA8/2Me2td.', 'Cv0QbKin73xhXzBXmHWGNMj4rXZkGcu9jVHivBkXVBs7h8OmnSXqUfeyd6ou', '{\"locale\":\"en\"}', '2021-10-04 18:54:10', '2021-11-29 17:38:59');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `total_vote_count`
--
DROP TABLE IF EXISTS `total_vote_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_vote_count`  AS SELECT `uv`.`id` AS `id`, `c`.`name` AS `category`, `s`.`display_name` AS `segment`, `p`.`name` AS `nominee`, count(`uv`.`participant_id`) AS `vote` FROM ((((`user_votes` `uv` left join `categories` `c` on(`uv`.`category_id` = `c`.`id`)) left join `participants` `p` on(`uv`.`participant_id` = `p`.`id`)) left join `users` `u` on(`uv`.`user_id` = `u`.`id`)) left join `subcategories` `s` on(`uv`.`subcategory_id` = `s`.`id`)) GROUP BY `uv`.`participant_id` ;

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
-- Indexes for table `step_1`
--
ALTER TABLE `step_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_2`
--
ALTER TABLE `step_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_3`
--
ALTER TABLE `step_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_4`
--
ALTER TABLE `step_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_5`
--
ALTER TABLE `step_5`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `users_role_id_foreign` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
