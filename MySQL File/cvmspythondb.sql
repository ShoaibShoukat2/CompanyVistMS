-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 06:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvmspythondb`
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
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add add visitor', 7, 'add_addvisitor'),
(26, 'Can change add visitor', 7, 'change_addvisitor'),
(27, 'Can delete add visitor', 7, 'delete_addvisitor'),
(28, 'Can view add visitor', 7, 'view_addvisitor');

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_addvisitor`
--

CREATE TABLE `cvmsapp_addvisitor` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `whomtomeet` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `reasontomeet` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `remark` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvmsapp_addvisitor`
--

INSERT INTO `cvmsapp_addvisitor` (`id`, `fullname`, `email`, `mobilenumber`, `address`, `whomtomeet`, `department`, `reasontomeet`, `created_at`, `updated_at`, `remark`, `status`) VALUES
(2, 'Ram', 'ram@gmail.com', '6544654564', 'O-908, GHU, Block-7', 'Mr. Gagan', 'IT', 'Personal', '2024-02-06 06:33:50.479658', '2024-02-06', 'Visitor Out', 'Out'),
(3, 'Test', 'test@gmail.com', '5567891236', 'O-908, GHU, Block-7', 'Yug Shrivastav', 'IT', 'Interview', '2024-02-07 06:39:32.331698', '2024-02-06', 'Visitor Out', 'Out'),
(4, 'Monika Chandra', 'monika@gmail.com', '6548797897', 'l-908, Laxmi Nagar, New Delhi', 'Renu Sharma', 'HR', 'Interview', '2024-02-07 06:40:26.887259', '2024-02-06', 'Visitor Out', 'Out'),
(5, 'Shergil Singh', 'ser@gmail.com', '8978779798', 'GBT Nagar Delhi', 'Yug Shrivastav', 'IT', 'Personal', '2024-02-07 06:41:42.215048', '2024-02-06', 'Visitor Out', 'Out'),
(6, 'Test', 'test@gmail.com', '1234567899', 'O-908, GHU, Block-7', 'Komal', 'IT', 'Interview', '2024-02-07 07:24:47.763147', '2024-02-06', '0', '0'),
(7, 'Garima Singh', 'garima@gmail.com', '9354478033', 'H no 18', 'Anuj', 'IT', 'NA', '2024-02-11 14:53:39.903901', '2024-02-11', 'Visitor out', 'Out'),
(9, 'Rahul', 'rahul@gmail.com', '7897897987', 'J-901 ,Laxmi Nagar', 'Saket Sinha', 'HR', 'Interview ', '2024-02-11 15:15:48.491347', '2024-02-11', 'Visitor out', 'Out'),
(10, 'John Doe', 'jhn@gmail.com', '14141425', 'A 123 New delhi india', 'Rahul Singh Manager', 'IT', 'Official', '2024-02-11 17:19:44.792412', '2024-02-11', 'Out ', 'Out');

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_customuser`
--

CREATE TABLE `cvmsapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvmsapp_customuser`
--

INSERT INTO `cvmsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$oqIBVUW4j7wtaVEsBYgSF1$k6w7h6hJ3iSxTUI/01NpkuqJHLxUeJ7JbswU5XroYPM=', '2024-02-13 14:53:42.986409', 1, 'admin', 'Admin', 'Admin', 'admin@gmail.com', 1, 1, '2024-02-07 05:46:40.325606', 'media/profile_pic/electronic-waste.png');

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_customuser_groups`
--

CREATE TABLE `cvmsapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_customuser_user_permissions`
--

CREATE TABLE `cvmsapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` bigint(20) NOT NULL
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
(7, 'cvmsapp', 'addvisitor'),
(6, 'cvmsapp', 'customuser'),
(5, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2024-02-07 05:45:29.060400'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-02-07 05:45:29.125542'),
(3, 'auth', '0001_initial', '2024-02-07 05:45:29.397674'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-02-07 05:45:29.456808'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-02-07 05:45:29.466782'),
(6, 'auth', '0004_alter_user_username_opts', '2024-02-07 05:45:29.474626'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-02-07 05:45:29.483612'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-02-07 05:45:29.486241'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-02-07 05:45:29.494326'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-02-07 05:45:29.502266'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-02-07 05:45:29.510555'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-02-07 05:45:29.521674'),
(13, 'auth', '0011_update_proxy_permissions', '2024-02-07 05:45:29.530674'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-02-07 05:45:29.540608'),
(15, 'cvmsapp', '0001_initial', '2024-02-07 05:45:29.874471'),
(16, 'admin', '0001_initial', '2024-02-07 05:45:29.972275'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-02-07 05:45:29.984244'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-07 05:45:29.995184'),
(19, 'cvmsapp', '0002_addvisitor', '2024-02-07 05:45:30.096098'),
(20, 'cvmsapp', '0003_remove_addvisitor_admin_and_more', '2024-02-07 05:45:34.422447'),
(21, 'cvmsapp', '0004_addvisitor_remark', '2024-02-07 05:45:34.437269'),
(22, 'cvmsapp', '0005_remove_addvisitor_remark', '2024-02-07 05:45:34.448917'),
(23, 'cvmsapp', '0006_addvisitor_remark', '2024-02-07 05:45:34.464257'),
(24, 'cvmsapp', '0007_alter_addvisitor_remark', '2024-02-07 05:45:34.471357'),
(25, 'cvmsapp', '0008_alter_addvisitor_remark', '2024-02-07 05:45:34.477361'),
(26, 'cvmsapp', '0009_addvisitor_status', '2024-02-07 05:45:34.495143'),
(27, 'cvmsapp', '0010_alter_addvisitor_status', '2024-02-07 05:45:34.542750'),
(28, 'sessions', '0001_initial', '2024-02-07 05:45:34.580416'),
(29, 'cvmsapp', '0011_alter_addvisitor_mobilenumber', '2024-02-07 06:33:07.653282');

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
('00plkl0aen2o8h77zp4kwifw7clqu39r', '.eJxVjEEOwiAQRe_C2hCYlgm4dO8ZCDNMpWogKe3KeHdt0oVu_3vvv1RM21ri1mWJc1ZnZdXpd6PED6k7yPdUb01zq-syk94VfdCury3L83K4fwcl9fKtUcgjOeOBPAuLAPjMGAiEwWCaEgm6ELKbDOdBBmOCt8GidzDCiOr9AQIhN9w:1rZuAI:z1X2FKeJsbMGQNTPhaC3MNLxmgIDrrM4I_ELDhalPuw', '2024-02-27 14:53:42.989400'),
('b25eb8odror2fdo0l6otbxtkgvlkvbmn', '.eJxVjEEOgjAQRe_StWko0E5x6Z4zNDOdqUVNSSisjHcXEha6_e-9_1YBtzWHrcoSJlZXZdTldyOMTykH4AeW-6zjXNZlIn0o-qRVjzPL63a6fwcZa95r6yQSkzhhAM8YjXVIxM4AYtPSsFMZkocUga034FvkPvUNcOxSR-rzBSrVOYo:1rXcC7:ZrArDwjtHxTrkiBwkjDpAw6Fh3TnhhmyV4qYJqRJWYs', '2024-02-21 07:18:07.045866'),
('qbbyxfxi5d00lxklljd84tqjs1xzcpfz', '.eJxVjDsOwjAQBe_iGln-rH-U9JzBWq8dHEC2FCcV4u4QKQW0b2bei0Xc1hq3UZY4Z3Zmkp1-t4T0KG0H-Y7t1jn1ti5z4rvCDzr4tefyvBzu30HFUb-1DZiK1sKCQQre6UCQCZIFIZQVsiQSMCnpSRMmowtKcAoy-uycmRR7fwDTtzeP:1rZBCa:owZkuP-G63B756uJJuVYlbdhBoDKwx9Y83rVZy8PgzE', '2024-02-25 14:53:04.181109');

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
-- Indexes for table `cvmsapp_addvisitor`
--
ALTER TABLE `cvmsapp_addvisitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cvmsapp_customuser`
--
ALTER TABLE `cvmsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cvmsapp_customuser_groups`
--
ALTER TABLE `cvmsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cvmsapp_customuser_groups_customuser_id_group_id_485b26e2_uniq` (`customuser_id`,`group_id`),
  ADD KEY `cvmsapp_customuser_groups_group_id_46299f4a_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `cvmsapp_customuser_user_permissions`
--
ALTER TABLE `cvmsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cvmsapp_customuser_user__customuser_id_permission_b235aef5_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `cvmsapp_customuser_u_permission_id_cf6e84ee_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_cvmsapp_customuser_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cvmsapp_addvisitor`
--
ALTER TABLE `cvmsapp_addvisitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cvmsapp_customuser`
--
ALTER TABLE `cvmsapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cvmsapp_customuser_groups`
--
ALTER TABLE `cvmsapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cvmsapp_customuser_user_permissions`
--
ALTER TABLE `cvmsapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- Constraints for table `cvmsapp_customuser_groups`
--
ALTER TABLE `cvmsapp_customuser_groups`
  ADD CONSTRAINT `cvmsapp_customuser_g_customuser_id_5a2fc176_fk_cvmsapp_c` FOREIGN KEY (`customuser_id`) REFERENCES `cvmsapp_customuser` (`id`),
  ADD CONSTRAINT `cvmsapp_customuser_groups_group_id_46299f4a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `cvmsapp_customuser_user_permissions`
--
ALTER TABLE `cvmsapp_customuser_user_permissions`
  ADD CONSTRAINT `cvmsapp_customuser_u_customuser_id_162f058f_fk_cvmsapp_c` FOREIGN KEY (`customuser_id`) REFERENCES `cvmsapp_customuser` (`id`),
  ADD CONSTRAINT `cvmsapp_customuser_u_permission_id_cf6e84ee_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_cvmsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `cvmsapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
