-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 10:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_librarian'),
(22, 'Can change user', 6, 'change_librarian'),
(23, 'Can delete user', 6, 'delete_librarian'),
(24, 'Can view user', 6, 'view_librarian'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add member', 8, 'add_member'),
(30, 'Can change member', 8, 'change_member'),
(31, 'Can delete member', 8, 'delete_member'),
(32, 'Can view member', 8, 'view_member'),
(33, 'Can add borrowed book', 9, 'add_borrowedbook'),
(34, 'Can change borrowed book', 9, 'change_borrowedbook'),
(35, 'Can delete borrowed book', 9, 'delete_borrowedbook'),
(36, 'Can view borrowed book', 9, 'view_borrowedbook'),
(37, 'Can add transaction', 10, 'add_transaction'),
(38, 'Can change transaction', 10, 'change_transaction'),
(39, 'Can delete transaction', 10, 'delete_transaction'),
(40, 'Can view transaction', 10, 'view_transaction');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'library', 'book'),
(9, 'library', 'borrowedbook'),
(8, 'library', 'member'),
(10, 'library', 'transaction'),
(5, 'sessions', 'session'),
(6, 'users', 'librarian');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-21 15:03:50.809525'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-11-21 15:03:50.857241'),
(3, 'auth', '0001_initial', '2024-11-21 15:03:51.070777'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-11-21 15:03:51.116197'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-11-21 15:03:51.121909'),
(6, 'auth', '0004_alter_user_username_opts', '2024-11-21 15:03:51.130911'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-11-21 15:03:51.137891'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-11-21 15:03:51.139266'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-11-21 15:03:51.146658'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-11-21 15:03:51.156060'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-11-21 15:03:51.163588'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-11-21 15:03:51.175247'),
(13, 'auth', '0011_update_proxy_permissions', '2024-11-21 15:03:51.184600'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-11-21 15:03:51.191613'),
(15, 'users', '0001_initial', '2024-11-21 15:03:51.431440'),
(16, 'admin', '0001_initial', '2024-11-21 15:03:51.534789'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-11-21 15:03:51.538779'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-21 15:03:51.550460'),
(19, 'library', '0001_initial', '2024-11-21 15:03:51.722193'),
(20, 'library', '0002_alter_book_borrowing_fee', '2024-11-21 15:03:51.726184'),
(21, 'library', '0003_alter_book_status', '2024-11-21 15:03:51.734507'),
(22, 'library', '0004_alter_member_amount_due', '2024-11-21 15:03:51.741975'),
(23, 'sessions', '0001_initial', '2024-11-21 15:03:51.769182');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e4fhjg4xvytbk9eny39jjje95a1jcccb', '.eJxVjEsOwiAQQO_CWgh1ymdcuvcMzcCARRua0HZlvLs26ULX7_MSA23rOGxLakNhcRFTCY1aoSop9zkAZNkRoeyj8RKtddJHZ3wiRtYsTr-DQPGZ6n7hB9X7rOJc11aC2hV10EXdZk7T9XD_BiMt47c-x2BD5xgMUQA6u2ytTUyIDqMx2pNFD9qASZCN1R4dYKc90F54J94fazREjg:1tELMY:nBlQV1U_J-e0sI2wO2tlmCkcDJ8tppNO9I7iKzUCbRw', '2024-12-06 10:03:46.514033'),
('rexxgk907y5y8jwkk6ck9bcs3fp1l5fy', '.eJxVjEsOwiAQQO_CWgh1ymdcuvcMzcCARRua0HZlvLs26ULX7_MSA23rOGxLakNhcRFTCY1aoSop9zkAZNkRoeyj8RKtddJHZ3wiRtYsTr-DQPGZ6n7hB9X7rOJc11aC2hV10EXdZk7T9XD_BiMt47c-x2BD5xgMUQA6u2ytTUyIDqMx2pNFD9qASZCN1R4dYKc90F54J94fazREjg:1tE5kB:qLWy6jfnau96AY5345n_zDtQMYznKD-zWejqVZ0ZkoI', '2024-12-05 17:23:07.259260');

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE `library_book` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `borrowing_fee` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`id`, `created_at`, `updated_at`, `title`, `author`, `category`, `quantity`, `borrowing_fee`, `status`) VALUES
('book-213de155-1d4f-496f-bf22-903c3f07924f', '2024-11-21 17:22:11.658156', '2024-11-22 09:42:32.646544', 'Book 1', 'Author Name', 'religion', 100, 450.00, 'available'),
('book-864a2bf7-c208-4bc6-b03b-a024d47c0cdc', '2024-11-22 09:44:13.794514', '2024-11-22 09:44:55.323204', 'economic', 'Author Name', 'religion', 799, 600.00, 'available'),
('book-c28e814b-91d5-4465-a409-97ec77a1d030', '2024-11-21 15:06:05.245115', '2024-11-22 09:42:08.986604', 'Book 1', 'Author', 'history', 0, 450.00, 'not-available'),
('book-e5b1a3d6-2fc9-4a71-a0cf-33a49759d27e', '2024-11-22 10:05:36.933507', '2024-11-22 10:08:11.933376', 'computer organnisation', 'deekap prakation', 'other', 19, 200.00, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `library_borrowedbook`
--

CREATE TABLE `library_borrowedbook` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `return_date` date NOT NULL,
  `returned` tinyint(1) NOT NULL,
  `fine` decimal(10,2) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `member_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_borrowedbook`
--

INSERT INTO `library_borrowedbook` (`id`, `created_at`, `updated_at`, `return_date`, `returned`, `fine`, `book_id`, `member_id`) VALUES
('borrowedbook-4b714b4e-9fb3-4ef9-a9cc-83c989e7cf8c', '2024-11-21 17:14:34.602697', '2024-11-21 17:22:46.151577', '2024-11-23', 1, 100.00, 'book-c28e814b-91d5-4465-a409-97ec77a1d030', 'member-f40ef350-ae96-47a4-a379-ae927996ea32'),
('borrowedbook-5555d817-f4d7-48e8-9962-2cee716f02a6', '2024-11-22 09:44:55.306887', '2024-11-22 09:44:55.306887', '2024-11-23', 0, 50.00, 'book-864a2bf7-c208-4bc6-b03b-a024d47c0cdc', 'member-aad595c4-7503-4b5b-bf77-5061684c12df'),
('borrowedbook-7f3c3367-841f-46fa-bd4f-8b36dcb8401f', '2024-11-21 17:22:28.215404', '2024-11-21 17:22:47.629278', '2024-11-23', 1, 120.00, 'book-213de155-1d4f-496f-bf22-903c3f07924f', 'member-a137eb7c-c957-4253-b59e-4ada483a28b5'),
('borrowedbook-9a172719-50a2-48ae-9401-2ce60c710eaa', '2024-11-22 10:08:11.918067', '2024-11-22 10:08:11.918067', '2024-11-25', 0, 50.00, 'book-e5b1a3d6-2fc9-4a71-a0cf-33a49759d27e', 'member-c98cce60-e755-4093-a397-57ae10cd125d'),
('borrowedbook-b835dba3-aa3b-40de-a948-a2732546c878', '2024-11-22 09:42:08.983588', '2024-11-22 09:42:08.983588', '2024-11-23', 0, 1600.00, 'book-c28e814b-91d5-4465-a409-97ec77a1d030', 'member-aad595c4-7503-4b5b-bf77-5061684c12df'),
('borrowedbook-f4fd0ab6-39d5-4c7e-af4a-b13d491b77fb', '2024-11-22 09:42:08.970223', '2024-11-22 09:42:32.643154', '2024-11-23', 1, 1600.00, 'book-213de155-1d4f-496f-bf22-903c3f07924f', 'member-aad595c4-7503-4b5b-bf77-5061684c12df');

-- --------------------------------------------------------

--
-- Table structure for table `library_member`
--

CREATE TABLE `library_member` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_member`
--

INSERT INTO `library_member` (`id`, `created_at`, `updated_at`, `name`, `email`, `amount_due`) VALUES
('member-a137eb7c-c957-4253-b59e-4ada483a28b5', '2024-11-21 17:21:36.969060', '2024-11-21 17:21:36.969060', 'Member One', 'member@gmail.com', 0.00),
('member-aad595c4-7503-4b5b-bf77-5061684c12df', '2024-11-22 09:41:08.500331', '2024-11-22 09:41:08.500331', 'dev shukla', 'dev12@gmail.com', 0.00),
('member-c98cce60-e755-4093-a397-57ae10cd125d', '2024-11-22 10:07:36.567278', '2024-11-22 10:07:36.567278', 'deepak sir', 'deepak12@gmail.com', 0.00),
('member-f40ef350-ae96-47a4-a379-ae927996ea32', '2024-11-21 17:11:58.048949', '2024-11-21 17:11:58.048949', 'Student 2', 'student2@gmail.com', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `library_transaction`
--

CREATE TABLE `library_transaction` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `member_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_transaction`
--

INSERT INTO `library_transaction` (`id`, `created_at`, `updated_at`, `amount`, `payment_method`, `member_id`) VALUES
('transaction-5db6015d-c6dd-45a7-ac6f-b93be25ba509', '2024-11-21 17:22:28.224212', '2024-11-21 17:22:28.224212', 450.00, 'card', 'member-a137eb7c-c957-4253-b59e-4ada483a28b5'),
('transaction-a5992816-4ce7-416b-bdcf-d243e1c0c6ad', '2024-11-22 09:42:08.991947', '2024-11-22 09:42:08.991947', 900.00, 'cash', 'member-aad595c4-7503-4b5b-bf77-5061684c12df'),
('transaction-b42f9434-46b8-41ab-a40d-72a195e30965', '2024-11-22 09:44:55.328224', '2024-11-22 09:44:55.328224', 600.00, 'cash', 'member-aad595c4-7503-4b5b-bf77-5061684c12df'),
('transaction-dbd24a68-c5bc-4e4f-8d44-60be02652bd2', '2024-11-22 10:08:11.937249', '2024-11-22 10:08:11.937249', 200.00, 'cash', 'member-c98cce60-e755-4093-a397-57ae10cd125d'),
('transaction-f0b73a96-680b-4e45-9bbf-3273898ea84a', '2024-11-21 17:14:34.610248', '2024-11-21 17:14:34.610248', 450.00, 'cash', 'member-f40ef350-ae96-47a4-a379-ae927996ea32');

-- --------------------------------------------------------

--
-- Table structure for table `users_librarian`
--

CREATE TABLE `users_librarian` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_librarian`
--

INSERT INTO `users_librarian` (`password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `id`, `created_at`, `updated_at`, `email`, `username`) VALUES
('pbkdf2_sha256$720000$3dZI10MESMSL4P5xJzDFcG$8UdBgDd6P+hl+439wK1/qxtUtMAti5lGdQNGl5cYYs0=', '2024-11-22 10:03:46.509225', 0, 'admin', 'user', 0, 1, '2024-11-21 17:11:29.557878', 'librarian-af4fb33f-1aa9-4c58-9667-8c758ead9d0d', '2024-11-21 17:11:30.711602', '2024-11-21 17:11:30.711602', 'admin@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_librarian_groups`
--

CREATE TABLE `users_librarian_groups` (
  `id` bigint(20) NOT NULL,
  `librarian_id` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_librarian_user_permissions`
--

CREATE TABLE `users_librarian_user_permissions` (
  `id` bigint(20) NOT NULL,
  `librarian_id` varchar(255) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_librarian_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_borrowedbook`
--
ALTER TABLE `library_borrowedbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_borrowedbook_book_id_f7b52ca9_fk_library_book_id` (`book_id`),
  ADD KEY `library_borrowedbook_member_id_8a7a7860_fk_library_member_id` (`member_id`);

--
-- Indexes for table `library_member`
--
ALTER TABLE `library_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_transaction`
--
ALTER TABLE `library_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_transaction_member_id_f5cbf058_fk_library_member_id` (`member_id`);

--
-- Indexes for table `users_librarian`
--
ALTER TABLE `users_librarian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_librarian_groups`
--
ALTER TABLE `users_librarian_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_librarian_groups_librarian_id_group_id_ee18cdf3_uniq` (`librarian_id`,`group_id`),
  ADD KEY `users_librarian_groups_group_id_77db4053_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_librarian_user_permissions`
--
ALTER TABLE `users_librarian_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_librarian_user_per_librarian_id_permission__ea69ff6d_uniq` (`librarian_id`,`permission_id`),
  ADD KEY `users_librarian_user_permission_id_2c2649d7_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_librarian_groups`
--
ALTER TABLE `users_librarian_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_librarian_user_permissions`
--
ALTER TABLE `users_librarian_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_librarian_id` FOREIGN KEY (`user_id`) REFERENCES `users_librarian` (`id`);

--
-- Constraints for table `library_borrowedbook`
--
ALTER TABLE `library_borrowedbook`
  ADD CONSTRAINT `library_borrowedbook_book_id_f7b52ca9_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_borrowedbook_member_id_8a7a7860_fk_library_member_id` FOREIGN KEY (`member_id`) REFERENCES `library_member` (`id`);

--
-- Constraints for table `library_transaction`
--
ALTER TABLE `library_transaction`
  ADD CONSTRAINT `library_transaction_member_id_f5cbf058_fk_library_member_id` FOREIGN KEY (`member_id`) REFERENCES `library_member` (`id`);

--
-- Constraints for table `users_librarian_groups`
--
ALTER TABLE `users_librarian_groups`
  ADD CONSTRAINT `users_librarian_grou_librarian_id_75fc3ace_fk_users_lib` FOREIGN KEY (`librarian_id`) REFERENCES `users_librarian` (`id`),
  ADD CONSTRAINT `users_librarian_groups_group_id_77db4053_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `users_librarian_user_permissions`
--
ALTER TABLE `users_librarian_user_permissions`
  ADD CONSTRAINT `users_librarian_user_librarian_id_e525c6d3_fk_users_lib` FOREIGN KEY (`librarian_id`) REFERENCES `users_librarian` (`id`),
  ADD CONSTRAINT `users_librarian_user_permission_id_2c2649d7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
