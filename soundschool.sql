-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 08:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schollsound`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `initial_balance` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `account_no`, `bank_name`, `initial_balance`, `note`, `created_at`) VALUES
(1, '656565656566565', 'mezan', '898989', 'iayiaiaiyahh', '2022-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `account_statement`
--

CREATE TABLE `account_statement` (
  `id` int(255) NOT NULL,
  `date` text NOT NULL,
  `reference` text NOT NULL,
  `credit` text NOT NULL,
  `debit` text NOT NULL,
  `created_by` text NOT NULL,
  `updated_by` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_statement`
--

INSERT INTO `account_statement` (`id`, `date`, `reference`, `credit`, `debit`, `created_by`, `updated_by`, `created_at`) VALUES
(1, '2022-08-05', 'loss', '123', '21', 'hg', 'kkjhkjh', '2022-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE `alumni_events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int(11) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_students`
--

CREATE TABLE `alumni_students` (
  `id` int(11) NOT NULL,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-23 18:11:37', '0000-00-00'),
(2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'no', '2018-05-29 08:19:48', '0000-00-00'),
(3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-23 18:12:28', '0000-00-00'),
(4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 11:35:40', '0000-00-00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 11:35:01', '0000-00-00'),
(6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2016-06-23 18:12:28', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT 0,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'hamza', '2022-09-22 09:58:34', '2022-09-22 09:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'userlogin', 0, '2021-01-19 08:10:29'),
(2, 'login', 0, '2021-01-19 08:10:31'),
(3, 'admission', 0, '2021-01-19 04:48:11'),
(4, 'complain', 0, '2021-01-19 04:48:13'),
(5, 'contact_us', 0, '2021-01-19 04:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_at`, `updated_at`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`) VALUES
(1, 'Sample Transfer Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', '2019-12-21 15:14:34', '0000-00-00', 2, 1, 360, 400, 480, 810, 1, 230),
(2, 'School Leaving Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'School Leaving Certificate', 'Date: _10__/_10__/__2022__', '.................................<br>Class Teacher ', '.................................<br>principal', '', '678.jpeg', '2022-09-18 06:14:29', NULL, 2, 1, 360, 400, 480, 810, 1, 230);

-- --------------------------------------------------------

--
-- Table structure for table `chat_connections`
--

CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT 0,
  `is_read` int(1) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_student_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(20, 'Nursery', 'no', '2022-09-19 06:30:20', NULL),
(21, 'Prep', 'no', '2022-09-19 06:30:32', NULL),
(22, 'One', 'no', '2022-09-19 06:30:56', NULL),
(23, 'Language', 'no', '2022-09-19 06:32:29', NULL),
(24, 'Computer ', 'no', '2022-09-19 06:32:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(27, 20, 9, 'no', '2022-09-19 06:30:20', NULL),
(28, 21, 9, 'no', '2022-09-19 06:30:32', NULL),
(29, 22, 9, 'no', '2022-09-19 06:30:56', NULL),
(30, 23, 9, 'no', '2022-09-19 06:32:29', NULL),
(31, 24, 9, 'no', '2022-09-19 06:32:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`id`, `class_id`, `staff_id`, `section_id`, `session_id`) VALUES
(1, 1, 4, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaint_type`
--

INSERT INTO `complaint_type` (`id`, `complaint_type`, `description`, `created_at`) VALUES
(1, 'Admission', '', '2022-09-16 14:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` text DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CPF', '2021-06-04 04:16:40', '2021-06-04 04:16:40'),
(2, 'INCOME TAX', '2021-06-04 04:16:51', '2021-06-04 04:16:51'),
(3, 'EOBI', '2021-06-04 04:16:58', '2021-06-04 04:16:58'),
(4, 'CA', '2021-06-04 04:17:06', '2021-06-04 04:17:06'),
(5, 'ADVANCE', '2021-06-04 04:17:28', '2021-06-04 04:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES
(1, 'school', 'yes'),
(2, 'academy', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `disable_reason`
--

CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disable_reason`
--

INSERT INTO `disable_reason` (`id`, `reason`, `created_at`) VALUES
(1, 'Transfer to lahore', '2022-08-24 13:29:15'),
(2, 'Completed His Course', '2022-09-02 06:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `is_active`, `created_at`) VALUES
(1, 'sendmail', NULL, NULL, NULL, NULL, NULL, '', '', '2020-02-28 13:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exams`
--

CREATE TABLE `exam_group_class_batch_exams` (
  `id` int(11) NOT NULL,
  `exam` varchar(250) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `use_exam_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_publish` int(1) DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_students`
--

CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `roll_no` int(6) NOT NULL DEFAULT 0,
  `teacher_remark` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_subjects`
--

CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `subject_id` int(10) NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT 0.00,
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_connections`
--

CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT 0.00,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_results`
--

CREATE TABLE `exam_group_exam_results` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_student_id` int(11) NOT NULL,
  `exam_group_class_batch_exam_subject_id` int(11) DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_students`
--

CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(10) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feecategory`
--

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_discounts`
--

INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES
(1, 18, 'siblinh', '56', '100.00', '', 'no', '2022-08-03 01:23:36'),
(2, 18, 'Student Disc', '032', '500.00', '', 'no', '2022-08-26 11:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `fees_reminder`
--

CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_reminder`
--

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'before', 2, 0, '2020-02-28 13:38:32', NULL),
(2, 'before', 5, 0, '2020-02-28 13:38:36', NULL),
(3, 'after', 2, 0, '2020-02-28 13:38:40', NULL),
(4, 'after', 5, 0, '2020-02-28 13:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(19, 0, NULL, 'Registration', '01', 'no', '2022-09-19 06:40:44', NULL, 'Registration'),
(20, 0, NULL, 'Course ', '02', 'no', '2022-09-19 06:41:12', NULL, 'Course '),
(21, 0, NULL, 'Jan', '03', 'no', '2022-09-19 06:41:34', NULL, 'Jan'),
(22, 0, NULL, 'feb', '04', 'no', '2022-09-19 06:41:46', NULL, 'feb'),
(23, 0, NULL, 'March', '05', 'no', '2022-09-19 06:42:00', NULL, ''),
(24, 0, NULL, 'April', '06', 'no', '2022-09-19 06:42:11', NULL, ''),
(25, 0, NULL, 'May', '07', 'no', '2022-09-19 06:42:21', NULL, ''),
(26, 0, NULL, 'June', '08', 'no', '2022-09-19 06:42:29', NULL, ''),
(27, 0, NULL, 'July ', '09', 'no', '2022-09-19 06:42:39', NULL, ''),
(28, 0, NULL, 'aug', '10', 'no', '2022-09-19 06:42:48', NULL, ''),
(29, 0, NULL, 'sep', '11', 'no', '2022-09-19 06:42:56', NULL, ''),
(30, 0, NULL, 'Oct', '12', 'no', '2022-09-19 06:43:05', NULL, ''),
(31, 0, NULL, 'Nov', '13', 'no', '2022-09-19 06:43:13', NULL, ''),
(32, 0, NULL, 'Dec', '14', 'no', '2022-09-19 06:43:23', NULL, ''),
(33, 0, NULL, 'Form ', '15', 'no', '2022-09-19 06:43:35', NULL, ''),
(34, 0, NULL, 'Admission', '16', 'no', '2022-09-19 06:44:17', NULL, ''),
(35, 0, NULL, 'kainat', '01', 'no', '2022-09-19 10:34:15', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES
(12, 'monthly fee', 0, '', 'no', '2022-09-15 15:00:32'),
(13, 'Registration', 0, 'Registration', 'no', '2022-09-16 13:37:33'),
(14, 'Admission Fee', 0, 'Admission ', 'no', '2022-09-16 13:38:00'),
(15, 'Tuition Fee ', 0, 'Tuition', 'no', '2022-09-16 13:38:25'),
(16, 'course', 0, '', 'no', '2022-09-19 07:10:47'),
(17, 'form fee', 0, '', 'no', '2022-09-19 07:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_amount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `is_active`, `created_at`) VALUES
(12, 6, 12, 21, 18, '3500.00', 'percentage', '2022-10-05', 0.00, 0.00, 'no', '2022-09-19 07:02:43'),
(13, 7, 14, 26, 18, '10000.00', 'percentage', '2022-03-01', 0.00, 0.00, 'no', '2022-09-19 07:06:57'),
(14, 9, 16, 20, 18, '2500.00', 'percentage', '2022-03-01', 0.00, 0.00, 'no', '2022-09-19 07:10:01'),
(15, 10, 17, 33, 18, '1000.00', 'percentage', '2022-03-01', 0.00, 0.00, 'no', '2022-09-19 07:14:04'),
(16, 8, 13, 28, 18, '100.00', 'none', '2022-08-20', 0.00, 0.00, 'no', '2022-09-28 11:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES
(6, 12, 18, 'no', '2022-09-16 13:42:30'),
(7, 14, 18, 'no', '2022-09-16 14:27:29'),
(8, 13, 18, 'no', '2022-09-16 14:49:35'),
(9, 16, 18, 'no', '2022-09-19 07:10:01'),
(10, 17, 18, 'no', '2022-09-19 07:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `fee_vouchers`
--

CREATE TABLE `fee_vouchers` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(256) NOT NULL,
  `student_id` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `due_date` date NOT NULL,
  `validity_date` date NOT NULL,
  `issue_date` date NOT NULL,
  `student_name` varchar(256) NOT NULL,
  `father_name` varchar(256) NOT NULL,
  `class` varchar(50) NOT NULL,
  `fees` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `filetypes`
--

CREATE TABLE `filetypes` (
  `id` int(11) NOT NULL,
  `file_extension` text DEFAULT NULL,
  `file_mime` text DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `image_extension` text DEFAULT NULL,
  `image_mime` text DEFAULT NULL,
  `image_size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filetypes`
--

INSERT INTO `filetypes` (`id`, `file_extension`, `file_mime`, `file_size`, `image_extension`, `image_mime`, `image_size`, `created_at`) VALUES
(1, 'pdf, zip, jpg, jpeg, png, txt, 7z, gif, csv, docx, mp3, mp4, accdb, odt, ods, ppt, pptx, xlsx, wmv, jfif, apk, ppt, bmp, jpe, mdb, rar, xls, svg', 'application/pdf, image/zip, image/jpg, image/png, image/jpeg, text/plain, application/x-zip-compressed, application/zip, image/gif, text/csv, application/vnd.openxmlformats-officedocument.wordprocessingml.document, audio/mpeg, application/msaccess, application/vnd.oasis.opendocument.text, application/vnd.oasis.opendocument.spreadsheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, video/x-ms-wmv, video/mp4, image/jpeg, application/vnd.android.package-archive, application/x-msdownload, application/vnd.ms-powerpoint, image/bmp, image/jpeg, application/msaccess, application/vnd.ms-excel, image/svg+xml', 100048576, 'jfif, png, jpe, jpeg, jpg, bmp, gif, svg', 'image/jpeg, image/png, image/jpeg, image/jpeg, image/bmp, image/gif, image/x-ms-bmp, image/svg+xml', 10048576, '2021-01-30 13:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:49'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` text DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` text DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES
(1, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', 1, 0, NULL, 'no', '2019-12-02 22:11:50'),
(2, 1, 'Contact Us', 76, 0, NULL, NULL, NULL, 'contact-us', 4, 0, NULL, 'no', '2019-12-02 22:11:52'),
(3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'complain', 3, 0, NULL, 'no', '2019-12-02 22:11:52'),
(4, 1, 'Online Admission', 0, 0, '1', NULL, 'http://yourschoolurl.com/online_admission', 'online-admission', 2, 0, NULL, 'no', '2022-09-06 07:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2019-12-02 15:23:47'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 10:16:36'),
(3, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 14:46:04'),
(4, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>', '0000-00-00', 0, NULL, 'no', '2019-05-04 15:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(1) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `whatsapp_url` varchar(255) NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `cookie_consent` varchar(255) NOT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `whatsapp_url`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `cookie_consent`, `fav_icon`, `created_at`) VALUES
(1, 'material_pink', NULL, 1, 1, NULL, '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '', '', '2022-09-06 06:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(10) NOT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `create_date` date NOT NULL,
  `evaluation_date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homework_evaluation`
--

CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `id_card`
--

CREATE TABLE `id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `id_card`
--

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `enable_vertical_card`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES
(4, 'student card', 'sound foundation', '(A)Branch\r\nAirport Road, Kill Gull M.Quetta', 'background4.png', 'logo4.png', '', 0, '#000000', 0, 0, 0, 0, 0, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Uniform', '', 'yes', 'no', '2022-08-24 13:31:41', NULL),
(2, 'Fees', '', 'yes', 'no', '2022-08-24 13:31:47', NULL),
(3, 'tuition', '', 'yes', 'no', '2022-09-16 15:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 'no', 'no', '2019-11-20 11:23:12', '0000-00-00'),
(2, 'Albanian', 'sq', 'al', 'no', 'no', '2019-11-20 11:42:42', '0000-00-00'),
(3, 'Amharic', 'am', 'am', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(4, 'English', 'en', 'us', 'no', 'no', '2019-11-20 11:38:50', '0000-00-00'),
(5, 'Arabic', 'ar', 'sa', 'no', 'no', '2019-11-20 11:47:28', '0000-00-00'),
(7, 'Afrikaans', 'af', 'af', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(8, 'Basque', 'eu', 'es', 'no', 'no', '2019-11-20 11:54:10', '0000-00-00'),
(11, 'Bengali', 'bn', 'in', 'no', 'no', '2019-11-20 11:41:53', '0000-00-00'),
(13, 'Bosnian', 'bs', 'bs', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(14, 'Welsh', 'cy', 'cy', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(15, 'Hungarian', 'hu', 'hu', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(16, 'Vietnamese', 'vi', 'vi', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(17, 'Haitian', 'ht', 'ht', 'no', 'no', '2021-01-23 07:09:32', '0000-00-00'),
(18, 'Galician', 'gl', 'gl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(19, 'Dutch', 'nl', 'nl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(21, 'Greek', 'el', 'gr', 'no', 'no', '2019-11-20 12:12:08', '0000-00-00'),
(22, 'Georgian', 'ka', 'ge', 'no', 'no', '2019-11-20 12:11:40', '0000-00-00'),
(23, 'Gujarati', 'gu', 'in', 'no', 'no', '2019-11-20 11:39:16', '0000-00-00'),
(24, 'Danish', 'da', 'dk', 'no', 'no', '2019-11-20 12:03:25', '0000-00-00'),
(25, 'Hebrew', 'he', 'il', 'no', 'no', '2019-11-20 12:13:50', '0000-00-00'),
(26, 'Yiddish', 'yi', 'il', 'no', 'no', '2019-11-20 12:25:33', '0000-00-00'),
(27, 'Indonesian', 'id', 'id', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(28, 'Irish', 'ga', 'ga', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(29, 'Italian', 'it', 'it', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(30, 'Icelandic', 'is', 'is', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(31, 'Spanish', 'es', 'es', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(33, 'Kannada', 'kn', 'kn', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(34, 'Catalan', 'ca', 'ca', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(36, 'Chinese', 'zh', 'cn', 'no', 'no', '2019-11-20 12:01:48', '0000-00-00'),
(37, 'Korean', 'ko', 'kr', 'no', 'no', '2019-11-20 12:19:09', '0000-00-00'),
(38, 'Xhosa', 'xh', 'ls', 'no', 'no', '2019-11-20 12:24:39', '0000-00-00'),
(39, 'Latin', 'la', 'it', 'no', 'no', '2021-01-23 07:09:32', '0000-00-00'),
(40, 'Latvian', 'lv', 'lv', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(41, 'Lithuanian', 'lt', 'lt', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(43, 'Malagasy', 'mg', 'mg', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(44, 'Malay', 'ms', 'ms', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(45, 'Malayalam', 'ml', 'ml', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(46, 'Maltese', 'mt', 'mt', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(47, 'Macedonian', 'mk', 'mk', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(48, 'Maori', 'mi', 'nz', 'no', 'no', '2019-11-20 12:20:27', '0000-00-00'),
(49, 'Marathi', 'mr', 'in', 'no', 'no', '2019-11-20 11:39:51', '0000-00-00'),
(51, 'Mongolian', 'mn', 'mn', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(52, 'German', 'de', 'de', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(53, 'Nepali', 'ne', 'ne', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(54, 'Norwegian', 'no', 'no', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(55, 'Punjabi', 'pa', 'in', 'no', 'no', '2019-11-20 11:40:16', '0000-00-00'),
(57, 'Persian', 'fa', 'ir', 'no', 'no', '2019-11-20 12:21:17', '0000-00-00'),
(59, 'Portuguese', 'pt', 'pt', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(60, 'Romanian', 'ro', 'ro', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(61, 'Russian', 'ru', 'ru', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(62, 'Cebuano', 'ceb', 'ph', 'no', 'no', '2019-11-20 11:59:12', '0000-00-00'),
(64, 'Sinhala', 'si', 'lk ', 'no', 'no', '2021-01-23 07:09:32', '0000-00-00'),
(65, 'Slovakian', 'sk', 'sk', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(66, 'Slovenian', 'sl', 'sl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(67, 'Swahili', 'sw', 'ke', 'no', 'no', '2019-11-20 12:21:57', '0000-00-00'),
(68, 'Sundanese', 'su', 'sd', 'no', 'no', '2019-12-03 11:06:57', '0000-00-00'),
(70, 'Thai', 'th', 'th', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(71, 'Tagalog', 'tl', 'tl', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(72, 'Tamil', 'ta', 'in', 'no', 'no', '2019-11-20 11:40:53', '0000-00-00'),
(74, 'Telugu', 'te', 'in', 'no', 'no', '2019-11-20 11:41:15', '0000-00-00'),
(75, 'Turkish', 'tr', 'tr', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(77, 'Uzbek', 'uz', 'uz', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(79, 'Urdu', 'ur', 'pk', 'no', 'no', '2019-11-20 12:23:57', '0000-00-00'),
(80, 'Finnish', 'fi', 'fi', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(81, 'French', 'fr', 'fr', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(82, 'Hindi', 'hi', 'in', 'no', 'no', '2019-11-20 11:36:34', '0000-00-00'),
(84, 'Czech', 'cs', 'cz', 'no', 'no', '2019-11-20 12:02:36', '0000-00-00'),
(85, 'Swedish', 'sv', 'sv', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(86, 'Scottish', 'gd', 'gd', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(87, 'Estonian', 'et', 'et', 'no', 'no', '2019-11-20 11:24:23', '0000-00-00'),
(88, 'Esperanto', 'eo', 'br', 'no', 'no', '2019-11-21 04:49:18', '0000-00-00'),
(89, 'Javanese', 'jv', 'id', 'no', 'no', '2019-11-20 12:18:29', '0000-00-00'),
(90, 'Japanese', 'ja', 'jp', 'no', 'no', '2019-11-20 12:14:39', '0000-00-00'),
(91, 'Polish', 'pl', 'pl', 'no', 'no', '2020-06-15 03:25:27', '0000-00-00'),
(92, 'Kurdish', 'ku', 'iq', 'no', 'no', '2020-12-21 00:15:31', '0000-00-00'),
(93, 'Lao', 'lo', 'la', 'no', 'no', '2020-12-21 00:15:36', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `subject_group_class_sections_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `record_id` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:38:49', NULL),
(2, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:41:11', NULL),
(3, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:42:09', NULL),
(4, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:45:19', NULL),
(5, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:46:24', NULL),
(6, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:47:07', NULL),
(7, 'New Record inserted On sections id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:48:16', NULL),
(8, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:48:37', NULL),
(9, 'New Record inserted On subject groups id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:48:57', NULL),
(10, 'New Record inserted On students id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:49:57', NULL),
(11, 'New Record inserted On  student session id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:49:58', NULL),
(12, 'New Record inserted On users id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:49:58', NULL),
(13, 'New Record inserted On users id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:49:58', NULL),
(14, 'Record updated On students id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-27 20:49:58', NULL),
(15, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:23:59', NULL),
(16, 'Record updated On  id card id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:28:02', NULL),
(17, 'Record updated On  id card id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:29:57', NULL),
(18, 'New Record inserted On id card id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:32:55', NULL),
(19, 'Record updated On  id card id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:32:55', NULL),
(20, 'Record updated On  id card id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:33:48', NULL),
(21, 'Record updated On  id card id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:35:58', NULL),
(22, 'Record updated On  id card id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 13:36:28', NULL),
(23, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.59.117', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:00:31', NULL),
(24, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.59.117', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:00:49', NULL),
(25, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.59.117', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:01:12', NULL),
(26, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.59.117', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:02:47', NULL),
(27, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.59.117', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:03:22', NULL),
(28, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.59.117', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:03:42', NULL),
(29, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:32:32', NULL),
(30, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:36:50', NULL),
(31, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:37:41', NULL),
(32, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:38:12', NULL),
(33, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:38:46', NULL),
(34, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:39:01', NULL),
(35, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 14:39:28', NULL),
(36, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:00:42', NULL),
(37, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:00:57', NULL),
(38, 'New Record inserted On students id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:51:41', NULL),
(39, 'New Record inserted On  student session id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:51:41', NULL),
(40, 'New Record inserted On users id 3', '3', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:51:41', NULL),
(41, 'New Record inserted On users id 4', '4', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:51:41', NULL),
(42, 'Record updated On students id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:51:41', NULL),
(43, 'New Record inserted On  fee group id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:53:00', NULL),
(44, 'New Record inserted On  fee type id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:53:15', NULL),
(45, 'New Record inserted On  fee type id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:53:23', NULL),
(46, 'New Record inserted On  fee groups feetype id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-28 15:53:48', NULL),
(47, 'New Record inserted On subject groups id 3', '3', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:46:53', NULL),
(48, 'New Record inserted On subject groups id 4', '4', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:47:20', NULL),
(49, 'Record updated On sections id 1', '1', 1, 'Update', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:47:54', NULL),
(50, 'New Record inserted On sections id 2', '2', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:48:09', NULL),
(51, 'New Record inserted On subject groups id 5', '5', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:52:25', NULL),
(52, 'New Record inserted On subject groups id 6', '6', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:52:46', NULL),
(53, 'New Record inserted On subject groups id 7', '7', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:53:04', NULL),
(54, 'New Record inserted On subject groups id 8', '8', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:54:45', NULL),
(55, 'New Record inserted On subject groups id 9', '9', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:55:03', NULL),
(56, 'New Record inserted On subject groups id 10', '10', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:55:17', NULL),
(57, 'New Record inserted On subject groups id 11', '11', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:55:58', NULL),
(58, 'Record updated On classes id 2', '2', 1, 'Update', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:57:54', NULL),
(59, 'Record updated On classes id 1', '1', 1, 'Update', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:58:15', NULL),
(60, 'New Record inserted On subject groups id 12', '12', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:58:26', NULL),
(61, 'New Record inserted On subject groups id 13', '13', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 17:58:42', NULL),
(62, 'New Record inserted On subjects id 1', '1', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:01:13', NULL),
(63, 'New Record inserted On subjects id 2', '2', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:01:25', NULL),
(64, 'New Record inserted On subjects id 3', '3', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:01:43', NULL),
(65, 'New Record inserted On subjects id 4', '4', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:01:58', NULL),
(66, 'New Record inserted On subjects id 5', '5', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:02:18', NULL),
(67, 'New Record inserted On subjects id 6', '6', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:02:43', NULL),
(68, 'New Record inserted On subjects id 7', '7', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:03:05', NULL),
(69, 'New Record inserted On subjects id 8', '8', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:03:52', NULL),
(70, 'New Record inserted On subjects id 9', '9', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:04:14', NULL),
(71, 'New Record inserted On subjects id 10', '10', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:04:36', NULL),
(72, 'New Record inserted On subjects id 11', '11', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:04:55', NULL),
(73, 'New Record inserted On subjects id 12', '12', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:06:25', NULL),
(74, 'New Record inserted On subjects id 13', '13', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:06:46', NULL),
(75, 'New Record inserted On subjects id 14', '14', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:07:07', NULL),
(76, 'New Record inserted On subjects id 15', '15', 1, 'Insert', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:07:44', NULL),
(77, 'Record updated On subjects id 3', '3', 1, 'Update', '119.160.58.242', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:08:44', NULL),
(78, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:22:33', NULL),
(79, 'Record updated On staff id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:23:31', NULL),
(80, 'New Record inserted On subject groups id 2', '2', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:26:57', NULL),
(81, 'New Record inserted On subject groups id 3', '3', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:27:55', NULL),
(82, 'New Record inserted On subject groups id 4', '4', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:29:04', NULL),
(83, 'New Record inserted On subject groups id 5', '5', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:29:32', NULL),
(84, 'New Record inserted On subject groups id 6', '6', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:30:45', NULL),
(85, 'New Record inserted On subject groups id 7', '7', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:31:17', NULL),
(86, 'New Record inserted On subject groups id 8', '8', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:31:48', NULL),
(87, 'New Record inserted On subject groups id 9', '9', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:33:25', NULL),
(88, 'New Record inserted On subjects id 16', '16', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:34:56', NULL),
(89, 'New Record inserted On subject groups id 10', '10', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:36:03', NULL),
(90, 'New Record inserted On subject groups id 11', '11', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:36:43', NULL),
(91, 'New Record inserted On subject groups id 12', '12', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:38:04', NULL),
(92, 'New Record inserted On subject groups id 13', '13', 1, 'Insert', '119.160.59.191', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:38:43', NULL),
(93, 'Record updated On staff id 3', '3', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 103.0.0.0', '2022-07-29 18:45:59', NULL),
(94, 'New Record inserted On  fee group id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:06:22', NULL),
(95, 'New Record inserted On  fee groups feetype id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:07:00', NULL),
(96, 'New Record inserted On visitors purpose id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:08:50', NULL),
(97, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:10:27', NULL),
(98, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:28', NULL),
(99, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:35', NULL),
(100, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:38', NULL),
(101, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:40', NULL),
(102, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:43', NULL),
(104, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:48', NULL),
(105, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:12:51', NULL),
(106, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:13:18', NULL),
(107, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:17:13', NULL),
(108, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:17:24', NULL),
(109, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:17:52', NULL),
(110, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:17:59', NULL),
(111, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:18:03', NULL),
(112, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:18:07', NULL),
(113, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:18:11', NULL),
(115, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:18:16', NULL),
(116, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:18:18', NULL),
(117, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:18:32', NULL),
(118, 'New Record inserted On students id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:20:39', NULL),
(119, 'New Record inserted On  student session id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:20:39', NULL),
(120, 'New Record inserted On users id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:20:39', NULL),
(121, 'New Record inserted On users id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:20:39', NULL),
(122, 'Record updated On students id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:20:39', NULL),
(123, 'New Record inserted On  fee group id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:21:00', NULL),
(124, 'Record updated On  fee group id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:21:08', NULL),
(125, 'New Record inserted On visitors purpose id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:32:18', NULL),
(126, 'New Record inserted On visitors purpose id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:33:14', NULL),
(127, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:33:44', NULL),
(128, 'New Record inserted On visitors purpose id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:35:55', NULL),
(129, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:41:58', NULL),
(130, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:43:30', NULL),
(131, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:47:57', NULL),
(132, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:48:47', NULL),
(133, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:49:01', NULL),
(134, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:49:19', NULL),
(135, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:49:25', NULL),
(136, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:49:27', NULL),
(137, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:49:29', NULL),
(139, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 02:51:56', NULL),
(141, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 03:36:04', NULL),
(142, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:18:10', NULL),
(143, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:18:31', NULL),
(144, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:38:54', NULL),
(145, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:40:09', NULL),
(146, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:51:08', NULL),
(147, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:51:18', NULL),
(148, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:51:26', NULL),
(149, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:51:29', NULL),
(151, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:51:33', NULL),
(152, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:51:35', NULL),
(153, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:53:37', NULL),
(154, 'Record updated On voucher settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:53:48', NULL),
(155, 'Record updated On  fee groups fee type id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 04:55:22', NULL),
(156, 'Record deleted On  student fees master 2', '2', 1, 'Delete', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 08:17:08', NULL),
(157, 'Record deleted On  student fees master 1', '1', 1, 'Delete', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 08:18:38', NULL),
(158, 'New Record inserted On  fees discounts id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 74.0.3729.108', '2022-08-03 08:23:36', NULL),
(159, 'Record updated On  account id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-04 03:39:10', NULL),
(160, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-04 05:59:12', NULL),
(162, 'New Record inserted On payslip allowance id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 01:56:03', NULL),
(163, 'New Record inserted On payslip allowance id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 01:56:03', NULL),
(164, 'Record updated On staff id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:02:17', NULL),
(165, 'Record updated On staff id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:02:17', NULL),
(167, 'New Record inserted On payslip allowance id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(168, 'New Record inserted On payslip allowance id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(169, 'New Record inserted On payslip allowance id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(170, 'New Record inserted On payslip allowance id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(171, 'New Record inserted On payslip allowance id 7', '7', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(172, 'New Record inserted On payslip allowance id 8', '8', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(173, 'New Record inserted On payslip allowance id 9', '9', 1, 'Insert', '::1', 'Windows 10', 'Chrome 103.0.0.0', '2022-08-06 02:49:45', NULL),
(175, 'New Record inserted On payslip allowance id 10', '10', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:37:19', NULL),
(176, 'New Record inserted On payslip allowance id 11', '11', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:37:19', NULL),
(178, 'New Record inserted On payslip allowance id 12', '12', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:37:46', NULL),
(179, 'New Record inserted On payslip allowance id 13', '13', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:37:46', NULL),
(180, 'New Record inserted On staff payslip id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:47:17', NULL),
(181, 'New Record inserted On payslip allowance id 14', '14', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:47:17', NULL),
(182, 'New Record inserted On payslip allowance id 15', '15', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:47:17', NULL),
(183, 'Record updated On staff payslip id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:52:02', NULL),
(184, 'Record updated On staff payslip id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 13:53:35', NULL),
(185, 'Record updated On staff id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:00:01', NULL),
(186, 'New Record inserted On staff payslip id 2', '2', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:06:17', NULL),
(187, 'New Record inserted On payslip allowance id 16', '16', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:06:17', NULL),
(188, 'New Record inserted On payslip allowance id 17', '17', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:06:17', NULL),
(189, 'New Record inserted On staff payslip id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(190, 'New Record inserted On payslip allowance id 18', '18', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(191, 'New Record inserted On payslip allowance id 19', '19', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(192, 'New Record inserted On payslip allowance id 20', '20', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(193, 'New Record inserted On payslip allowance id 21', '21', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(194, 'New Record inserted On payslip allowance id 22', '22', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(195, 'New Record inserted On payslip allowance id 23', '23', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(196, 'New Record inserted On payslip allowance id 24', '24', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:08', NULL),
(197, 'Record updated On staff payslip id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-11 14:09:26', NULL),
(198, 'New Record inserted On staff payslip id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(199, 'New Record inserted On payslip allowance id 25', '25', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(200, 'New Record inserted On payslip allowance id 26', '26', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(201, 'New Record inserted On payslip allowance id 27', '27', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(202, 'New Record inserted On payslip allowance id 28', '28', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(203, 'New Record inserted On payslip allowance id 29', '29', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(204, 'New Record inserted On payslip allowance id 30', '30', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:41', NULL),
(205, 'Record updated On staff payslip id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-15 15:34:56', NULL),
(206, 'New Record inserted On staff payslip id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-17 20:54:04', NULL),
(207, 'New Record inserted On payslip allowance id 31', '31', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-17 20:54:04', NULL),
(208, 'New Record inserted On payslip allowance id 32', '32', 1, 'Insert', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-17 20:54:04', NULL),
(209, 'Record updated On staff payslip id 5', '5', 1, 'Update', '::1', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-17 20:54:37', NULL),
(210, 'New Record inserted On students id 4', '4', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:07:09', NULL),
(211, 'New Record inserted On  student session id 4', '4', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:07:09', NULL),
(212, 'New Record inserted On users id 7', '7', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:07:09', NULL),
(213, 'Record updated On students id 4', '4', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:07:09', NULL),
(214, 'Record deleted On  student fees master 1', '1', 1, 'Delete', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:08:11', NULL),
(215, 'Record deleted On  student fees master 1', '1', 1, 'Delete', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:08:44', NULL),
(216, 'New Record inserted On  fee groups feetype id 3', '3', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:17:07', NULL),
(217, 'New Record inserted On disable reason id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:29:15', NULL),
(218, 'Record updated On students id 3', '3', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:29:51', NULL),
(219, 'New Record inserted On  income head   id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:31:41', NULL),
(220, 'New Record inserted On  income head   id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:31:47', NULL),
(221, 'New Record inserted On  Income   id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:32:18', NULL),
(222, 'New Record inserted On  student attendences id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:35:44', NULL),
(223, 'New Record inserted On  student attendences id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:35:44', NULL),
(224, 'New Record inserted On exam groups id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:38:47', NULL),
(225, 'New Record inserted On exam group exams name id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:39:11', NULL),
(226, 'New Record inserted On staff payslip id 6', '6', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:49:43', NULL),
(227, 'New Record inserted On payslip allowance id 33', '33', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:49:43', NULL),
(228, 'New Record inserted On payslip allowance id 34', '34', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:49:43', NULL),
(229, 'New Record inserted On payslip allowance id 35', '35', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:49:43', NULL),
(230, 'Record updated On staff payslip id 6', '6', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-24 18:50:09', NULL),
(231, 'Record updated On staff id 3', '3', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 11:53:39', NULL),
(232, 'Record updated On staff id 3', '3', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 11:53:39', NULL),
(233, 'Record updated On staff id 3', '3', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 11:54:04', NULL),
(234, 'Record updated On staff id 3', '3', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 11:54:04', NULL),
(235, 'New Record inserted On  fee groups feetype id 4', '4', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:18:00', NULL),
(236, 'Record deleted On  student fees master 3', '3', 1, 'Delete', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:18:58', NULL),
(237, 'New Record inserted On  fee groups feetype id 5', '5', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:22:08', NULL),
(238, 'New Record inserted On  fees discounts id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:24:40', NULL),
(239, 'New Record inserted On students id 5', '5', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:29:38', NULL),
(240, 'New Record inserted On  student session id 5', '5', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:29:38', NULL),
(241, 'New Record inserted On users id 8', '8', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:29:38', NULL),
(242, 'New Record inserted On users id 9', '9', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:29:38', NULL),
(243, 'Record updated On students id 5', '5', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:29:38', NULL),
(244, 'New Record inserted On students id 6', '6', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:31:03', NULL),
(245, 'New Record inserted On  student session id 6', '6', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:31:03', NULL),
(246, 'New Record inserted On users id 10', '10', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:31:03', NULL),
(247, 'New Record inserted On users id 11', '11', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:31:03', NULL),
(248, 'Record updated On students id 6', '6', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:31:03', NULL),
(249, 'New Record inserted On  fee group id 4', '4', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:32:02', NULL),
(250, 'New Record inserted On  fee group id 5', '5', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:34:39', NULL),
(251, 'Record updated On  fee group id 5', '5', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:35:20', NULL),
(252, 'New Record inserted On  fee groups feetype id 6', '6', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:35:56', NULL),
(253, 'New Record inserted On  fee groups feetype id 7', '7', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:38:39', NULL),
(254, 'New Record inserted On  student session id 7', '7', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:51:49', NULL),
(255, 'New Record inserted On  student session id 8', '8', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 16:51:49', NULL),
(256, 'New Record inserted On exam groups id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 17:04:55', NULL),
(257, 'New Record inserted On exam group exams name id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 17:05:18', NULL),
(258, 'Record updated On  exam groups id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-08-26 17:07:37', NULL),
(259, 'Record updated On  fee groups fee type id 7', '7', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:09:45', NULL),
(260, 'New Record inserted On class teacher id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:26:42', NULL),
(261, 'New Record inserted On staff payslip id 7', '7', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:29:26', NULL),
(262, 'New Record inserted On payslip allowance id 36', '36', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:29:26', NULL),
(263, 'New Record inserted On payslip allowance id 37', '37', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:29:26', NULL),
(264, 'New Record inserted On staff payslip id 8', '8', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:29:47', NULL),
(265, 'New Record inserted On payslip allowance id 38', '38', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:29:47', NULL),
(266, 'New Record inserted On payslip allowance id 39', '39', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:29:47', NULL),
(267, 'Record updated On staff payslip id 7', '7', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:32:50', NULL),
(268, 'Record updated On staff payslip id 8', '8', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 12:33:59', NULL),
(269, 'New Record inserted On homework id 1', '1', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 13:02:23', NULL),
(270, 'Record updated On homework id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 13:02:23', NULL),
(271, 'Record updated On staff id 4', '4', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 13:17:45', NULL),
(272, 'Record updated On staff id 4', '4', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 13:17:45', NULL),
(273, 'Record updated On staff id 5', '5', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-01 16:46:33', NULL),
(274, 'Record deleted On homework id 1', '1', 1, 'Delete', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:44:04', NULL),
(275, 'New Record inserted On homework id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:45:18', NULL),
(276, 'New Record inserted On students id 7', '7', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:54:52', NULL),
(277, 'New Record inserted On  student session id 9', '9', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:54:52', NULL),
(278, 'New Record inserted On users id 12', '12', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:54:52', NULL),
(279, 'New Record inserted On users id 13', '13', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:54:52', NULL),
(280, 'Record updated On students id 7', '7', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:54:52', NULL),
(281, 'New Record inserted On disable reason id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 11:59:00', NULL),
(282, 'Record updated On students id 7', '7', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 12:00:01', NULL),
(283, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:03:35', NULL),
(284, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:03:52', NULL),
(285, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:04:08', NULL),
(286, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:04:30', NULL),
(287, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:05:17', NULL),
(288, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:05:41', NULL),
(289, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:08:14', NULL),
(290, 'New Record inserted On certificates id 2', '2', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 13:15:04', NULL),
(291, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:01:38', NULL),
(292, 'New Record inserted On homework id 3', '3', 1, 'Insert', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:09:39', NULL),
(293, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:19:40', NULL),
(294, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:24:46', NULL),
(295, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:29:56', NULL),
(296, 'Record updated On students id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:41:49', NULL),
(297, 'Record updated On  student session id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:41:49', NULL),
(298, 'Record updated On students id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:41:49', NULL),
(299, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 15:59:26', NULL),
(300, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 16:02:50', NULL),
(301, 'Record updated On staff id 5', '5', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 18:12:23', NULL),
(302, 'Record updated On staff id 5', '5', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 18:12:23', NULL),
(303, 'Record updated On staff id 6', '6', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 18:14:03', NULL),
(304, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 18:23:37', NULL),
(305, 'Record updated On settings id 1', '1', 1, 'Update', '103.217.178.174', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-02 18:25:38', NULL),
(306, 'Record updated On settings id 1', '1', 1, 'Update', '39.59.115.204', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 15:12:58', NULL),
(307, 'Record updated On staff id 4', '4', 2, 'Update', '39.59.115.204', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 15:42:38', NULL),
(308, 'Record updated On staff id 4', '4', 2, 'Update', '39.59.115.204', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 15:42:38', NULL),
(309, 'New Record inserted On sections id 3', '3', 2, 'Insert', '39.59.104.2', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 17:01:19', NULL),
(310, 'New Record inserted On subject groups id 14', '14', 2, 'Insert', '39.59.104.2', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 17:01:51', NULL),
(311, 'New Record inserted On sections id 4', '4', 2, 'Insert', '39.59.104.2', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 17:05:48', NULL),
(312, 'New Record inserted On sections id 5', '5', 2, 'Insert', '39.59.104.2', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 17:06:03', NULL),
(313, 'Record updated On classes id 14', '14', 2, 'Update', '39.59.104.2', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-05 17:06:51', NULL),
(314, 'New Record inserted On sections id 6', '6', 3, 'Insert', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:34:08', NULL),
(315, 'New Record inserted On subject groups id 15', '15', 3, 'Insert', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:34:47', NULL),
(316, 'New Record inserted On students id 8', '8', 3, 'Insert', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:36:19', NULL),
(317, 'New Record inserted On  student session id 10', '10', 3, 'Insert', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:36:19', NULL),
(318, 'New Record inserted On users id 14', '14', 3, 'Insert', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:36:19', NULL),
(319, 'New Record inserted On users id 15', '15', 3, 'Insert', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:36:19', NULL),
(320, 'Record updated On students id 8', '8', 3, 'Update', '39.59.14.40', 'Android', 'Chrome 104.0.0.0', '2022-09-06 10:36:19', NULL),
(321, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 11:01:12', NULL),
(322, 'Record updated On Menu id 4', '4', 2, 'Update', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 11:07:23', NULL),
(323, 'Record updated On Front CMS Setting id 1', '1', 2, 'Update', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 11:10:07', NULL),
(324, 'New Record inserted On student edit fields id 1', '1', 2, 'Insert', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 11:25:27', NULL),
(325, 'New Record inserted On student edit fields id 2', '2', 2, 'Insert', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 11:25:31', NULL),
(326, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 11:34:33', NULL),
(327, 'Record updated On Menu id 4', '4', 2, 'Update', '39.59.14.40', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 12:00:25', NULL),
(328, 'New Record inserted On staff attendance id 1', '1', 3, 'Insert', '182.183.169.244', 'Windows 10', 'Chrome 104.0.0.0', '2022-09-06 18:27:34', NULL),
(329, 'New Record inserted On id card id 3', '3', 1, 'Insert', '39.59.81.150', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-08 12:56:47', NULL),
(330, 'Record updated On  id card id 3', '3', 1, 'Update', '39.59.81.150', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-08 12:56:47', NULL),
(331, 'Record updated On voucher settings id 1', '1', 1, 'Update', '43.245.8.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 14:20:05', NULL),
(332, 'Record updated On voucher settings id 1', '1', 1, 'Update', '43.245.8.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 14:22:28', NULL),
(333, 'Record updated On voucher settings id 1', '1', 1, 'Update', '43.245.8.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 14:23:04', NULL),
(334, 'New Record inserted On  fee group id 6', '6', 1, 'Insert', '203.135.44.28', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:52:38', NULL),
(335, 'New Record inserted On  fee group id 7', '7', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:52:48', NULL),
(336, 'New Record inserted On  fee group id 8', '8', 1, 'Insert', '203.135.44.28', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:53:11', NULL),
(337, 'New Record inserted On  fee group id 9', '9', 1, 'Insert', '203.135.44.28', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:54:05', NULL),
(338, 'New Record inserted On  fee group id 10', '10', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:54:17', NULL),
(339, 'New Record inserted On  fee type id 3', '3', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:56:52', NULL),
(340, 'New Record inserted On  fee type id 4', '4', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:57:39', NULL),
(341, 'New Record inserted On  fee type id 5', '5', 1, 'Insert', '203.135.44.28', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:57:50', NULL),
(342, 'New Record inserted On  fee type id 6', '6', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:58:25', NULL),
(343, 'New Record inserted On  fee type id 7', '7', 1, 'Insert', '203.135.44.28', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:58:55', NULL),
(344, 'New Record inserted On  fee type id 8', '8', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:59:03', NULL),
(345, 'Record deleted On  fee group id 10', '10', 1, 'Delete', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:59:38', NULL),
(346, 'Record deleted On  fee group id 9', '9', 1, 'Delete', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:59:45', NULL),
(347, 'Record deleted On  fee group id 8', '8', 1, 'Delete', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 15:59:51', NULL),
(348, 'Record updated On settings id 1', '1', 1, 'Update', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(349, 'New Record inserted On students id 9', '9', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(350, 'New Record inserted On  student session id 11', '11', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(351, 'New Record inserted On users id 16', '16', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(352, 'New Record inserted On users id 17', '17', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(353, 'Record updated On students id 9', '9', 1, 'Update', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(354, 'Record updated On students id 9', '9', 1, 'Update', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:03:36', NULL),
(355, 'New Record inserted On  fee group id 11', '11', 1, 'Insert', '203.135.44.172', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:10:11', NULL),
(356, 'New Record inserted On  fee groups feetype id 8', '8', 1, 'Insert', '203.135.44.28', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:10:46', NULL),
(357, 'Record deleted On  student fees master 5', '5', 1, 'Delete', '39.59.118.194', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-13 16:11:42', NULL),
(358, 'Record deleted On sections id 6', '6', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:11', NULL),
(359, 'Record deleted On sections id 5', '5', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:22', NULL),
(360, 'Record deleted On sections id 2', '2', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(361, 'Record deleted On sections id 1', '1', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:39', NULL),
(362, 'Record deleted On sections id 3', '3', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:43', NULL),
(363, 'Record deleted On sections id 4', '4', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:47', NULL),
(364, 'Record deleted On sections id 1', '1', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:54', NULL),
(365, 'Record deleted On sections id 3', '3', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:54:58', NULL),
(366, 'Record deleted On sections id 4', '4', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:03', NULL),
(367, 'Record deleted On classes id 1', '1', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:34', NULL),
(368, 'Record deleted On classes id 2', '2', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:38', NULL),
(369, 'Record deleted On classes id 3', '3', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:43', NULL),
(370, 'Record deleted On classes id 4', '4', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:49', NULL),
(371, 'Record deleted On classes id 5', '5', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:53', NULL),
(372, 'Record deleted On classes id 6', '6', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:55:57', NULL),
(373, 'Record deleted On classes id 7', '7', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:01', NULL),
(374, 'Record deleted On classes id 8', '8', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:05', NULL),
(375, 'Record deleted On classes id 9', '9', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:09', NULL),
(376, 'Record deleted On classes id 10', '10', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:13', NULL),
(377, 'Record deleted On classes id 11', '11', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:16', NULL),
(378, 'Record deleted On classes id 12', '12', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:18', NULL),
(379, 'Record deleted On classes id 13', '13', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:22', NULL),
(380, 'Record deleted On classes id 1', '1', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:35', NULL),
(381, 'Record deleted On classes id 2', '2', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:44', NULL),
(382, 'Record deleted On classes id 3', '3', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:50', NULL),
(383, 'Record deleted On classes id 4', '4', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:56:51', NULL),
(384, 'Record deleted On classes id 5', '5', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:00', NULL),
(385, 'Record deleted On classes id 6', '6', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:00', NULL),
(386, 'Record deleted On classes id 7', '7', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:03', NULL),
(387, 'Record deleted On classes id 8', '8', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:07', NULL),
(388, 'Record deleted On classes id 9', '9', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:16', NULL),
(389, 'Record deleted On classes id 10', '10', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:18', NULL),
(390, 'Record deleted On classes id 11', '11', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:18', NULL),
(391, 'Record deleted On classes id 12', '12', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:20', NULL),
(392, 'Record deleted On classes id 13', '13', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:22', NULL),
(393, 'Record deleted On classes id 14', '14', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:25', NULL),
(394, 'Record deleted On classes id 15', '15', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:57:33', NULL),
(395, 'Record deleted On subjects id 1', '1', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:58:46', NULL),
(396, 'Record deleted On subjects id 2', '2', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:05', NULL),
(397, 'Record deleted On subjects id 3', '3', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:08', NULL),
(398, 'Record deleted On subjects id 4', '4', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:11', NULL),
(399, 'Record deleted On subjects id 5', '5', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:15', NULL),
(400, 'Record deleted On subjects id 6', '6', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:18', NULL),
(401, 'Record deleted On subjects id 7', '7', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:21', NULL),
(402, 'Record deleted On subjects id 8', '8', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:29', NULL),
(403, 'Record deleted On subjects id 9', '9', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:32', NULL),
(404, 'Record deleted On subjects id 10', '10', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:35', NULL),
(405, 'Record deleted On subjects id 11', '11', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:38', NULL),
(406, 'Record deleted On subjects id 12', '12', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:43', NULL),
(407, 'Record deleted On subjects id 13', '13', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:47', NULL),
(408, 'Record deleted On subjects id 14', '14', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:52', NULL),
(409, 'Record deleted On subjects id 15', '15', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:56', NULL),
(410, 'Record deleted On subjects id 16', '16', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 14:59:59', NULL),
(411, 'Record deleted On subjects id 2', '2', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:08', NULL),
(412, 'Record deleted On subjects id 3', '3', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:12', NULL),
(413, 'Record deleted On subjects id 4', '4', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:15', NULL),
(414, 'Record deleted On subjects id 5', '5', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:18', NULL),
(415, 'Record deleted On subjects id 6', '6', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:21', NULL),
(416, 'Record deleted On subjects id 7', '7', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:24', NULL),
(417, 'Record deleted On subjects id 8', '8', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:27', NULL),
(418, 'Record deleted On subjects id 10', '10', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:45', NULL),
(419, 'Record deleted On subjects id 12', '12', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:47', NULL),
(420, 'Record deleted On subjects id 12', '12', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:00:53', NULL),
(421, 'Record deleted On subjects id 13', '13', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:01:02', NULL),
(422, 'Record deleted On subjects id 14', '14', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:01:05', NULL),
(423, 'Record deleted On subjects id 16', '16', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:01:12', NULL),
(424, 'Record deleted On subjects id 15', '15', 1, 'Delete', '39.59.120.110', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:01:13', NULL),
(425, 'Record deleted On  fee group id 7', '7', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:22:14', NULL),
(426, 'Record deleted On  fee group id 11', '11', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:01', NULL),
(427, 'Record deleted On  fee group id 6', '6', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:06', NULL),
(428, 'Record deleted On  fee group id 5', '5', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:13', NULL),
(429, 'Record deleted On  fee group id 4', '4', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:19', NULL),
(430, 'Record deleted On  fee group id 3', '3', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:23', NULL),
(431, 'Record deleted On  fee group id 2', '2', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:29', NULL),
(432, 'Record deleted On  fee group id 1', '1', 1, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:23:34', NULL),
(433, 'Record updated On staff id 2', '2', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:32:27', NULL),
(434, 'Record updated On staff id 2', '2', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:32:27', NULL),
(435, 'Record updated On staff id 2', '2', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:32:56', NULL),
(436, 'Record updated On staff id 2', '2', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:32:56', NULL),
(437, 'Record deleted On  Income   id 1', '1', 2, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:34:27', NULL),
(438, 'Record deleted On exam groups id 1', '1', 2, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:34:51', NULL),
(439, 'Record deleted On exam groups id 2', '2', 2, 'Delete', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:34:56', NULL),
(440, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:38:01', NULL),
(441, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:38:15', NULL),
(442, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:38:57', NULL),
(443, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:39:55', NULL),
(444, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:40:08', NULL),
(445, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:40:17', NULL),
(446, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:40:28', NULL),
(447, 'Record updated On settings id 1', '1', 2, 'Update', '39.59.77.164', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 15:40:59', NULL),
(448, 'New Record inserted On sections id 7', '7', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 18:24:50', NULL),
(449, 'New Record inserted On sections id 8', '8', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 18:25:53', NULL),
(450, 'New Record inserted On department id 1', '1', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 18:36:11', NULL),
(451, 'New Record inserted On department id 2', '2', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 18:36:29', NULL),
(452, 'New Record inserted On  staff designation id 1', '1', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 18:38:18', NULL),
(453, 'Record updated On staff id 7', '7', 1, 'Update', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:39:28', NULL),
(454, 'New Record inserted On sections id 9', '9', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:41:18', NULL),
(455, 'New Record inserted On subject groups id 16', '16', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:41:49', NULL),
(456, 'New Record inserted On subject groups id 17', '17', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:42:00', NULL),
(457, 'New Record inserted On subject groups id 18', '18', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:42:15', NULL),
(458, 'New Record inserted On subjects id 17', '17', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:50:38', NULL),
(459, 'New Record inserted On sections id 10', '10', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:51:08', NULL),
(460, 'New Record inserted On students id 10', '10', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:56:58', NULL),
(461, 'New Record inserted On  student session id 12', '12', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:56:58', NULL),
(462, 'New Record inserted On users id 18', '18', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:56:58', NULL),
(463, 'New Record inserted On users id 19', '19', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:56:58', NULL),
(464, 'Record updated On students id 10', '10', 1, 'Update', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 19:56:58', NULL),
(465, 'New Record inserted On  fee group id 12', '12', 1, 'Insert', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 20:00:32', NULL),
(466, 'Record updated On staff id 8', '8', 1, 'Update', '103.228.156.74', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-15 20:13:27', NULL),
(467, 'Record deleted On  fee type id 1', '1', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:19:24', NULL),
(468, 'New Record inserted On  fee type id 9', '9', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:20:59', NULL),
(469, 'New Record inserted On  fee type id 10', '10', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:21:33', NULL),
(470, 'New Record inserted On  fee type id 11', '11', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:22:16', NULL),
(471, 'New Record inserted On  fee type id 12', '12', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:22:53', NULL),
(472, 'Record deleted On  fee type id 8', '8', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:02', NULL),
(473, 'Record deleted On  fee type id 7', '7', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:09', NULL),
(474, 'Record deleted On  fee type id 6', '6', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:18', NULL),
(475, 'Record deleted On  fee type id 5', '5', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:28', NULL),
(476, 'Record deleted On  fee type id 4', '4', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:37', NULL),
(477, 'Record deleted On  fee type id 3', '3', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:43', NULL),
(478, 'Record deleted On  fee type id 2', '2', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:23:49', NULL),
(479, 'New Record inserted On  fee type id 13', '13', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:34:56', NULL),
(480, 'New Record inserted On  fee type id 14', '14', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:35:47', NULL),
(481, 'New Record inserted On  fee type id 15', '15', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:35:59', NULL),
(482, 'New Record inserted On  fee type id 16', '16', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:36:12', NULL),
(483, 'New Record inserted On  fee type id 17', '17', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:36:25', NULL),
(484, 'New Record inserted On  fee type id 18', '18', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:36:37', NULL),
(485, 'New Record inserted On  fee group id 13', '13', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:37:33', NULL),
(486, 'New Record inserted On  fee group id 14', '14', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:38:00', NULL),
(487, 'New Record inserted On  fee group id 15', '15', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:38:25', NULL),
(488, 'New Record inserted On  fee groups feetype id 9', '9', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 18:42:30', NULL),
(489, 'Record updated On  fee groups fee type id 9', '9', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:18:03', NULL),
(490, 'Record deleted On student fees deposite id 5', '5', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:23:55', NULL),
(491, 'New Record inserted On  fee groups feetype id 10', '10', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:27:29', NULL),
(492, 'New Record inserted On  fee groups feetype id 11', '11', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:49:35', NULL),
(493, 'New Record inserted On visitors purpose id 1', '1', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:53:52', NULL),
(494, 'New Record inserted On visitors purpose id 2', '2', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:54:24', NULL),
(495, 'New Record inserted On visitors purpose id 3', '3', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:54:41', NULL),
(496, 'New Record inserted On source id 1', '1', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:56:17', NULL),
(497, 'New Record inserted On reference id 1', '1', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:56:37', NULL),
(498, 'New Record inserted On  complaint_type id 1', '1', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 19:57:14', NULL),
(499, 'New Record inserted On students id 11', '11', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:01:17', NULL),
(500, 'New Record inserted On  student session id 13', '13', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:01:17', NULL),
(501, 'New Record inserted On users id 20', '20', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:01:17', NULL),
(502, 'New Record inserted On users id 21', '21', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:01:17', NULL),
(503, 'Record updated On students id 11', '11', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:01:17', NULL),
(504, 'Record deleted On  student fees master 6', '6', 1, 'Delete', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:07:02', NULL),
(505, 'Record updated On notification setting id 1', '1', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:16:20', NULL),
(506, 'Record updated On notification setting id 1', '1', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(507, 'Record updated On notification setting id 2', '2', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(508, 'Record updated On notification setting id 3', '3', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(509, 'Record updated On notification setting id 4', '4', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(510, 'Record updated On notification setting id 5', '5', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(511, 'Record updated On notification setting id 6', '6', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(512, 'Record updated On notification setting id 7', '7', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(513, 'Record updated On notification setting id 8', '8', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(514, 'Record updated On notification setting id 9', '9', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(515, 'Record updated On notification setting id 10', '10', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(516, 'Record updated On notification setting id 11', '11', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(517, 'Record updated On notification setting id 12', '12', 1, 'Update', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:17:23', NULL),
(518, 'New Record inserted On  income head   id 3', '3', 1, 'Insert', '119.152.123.135', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-16 20:22:42', NULL),
(519, 'New Record inserted On subject groups id 19', '19', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:47:21', NULL),
(520, 'New Record inserted On subjects id 18', '18', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:48:03', NULL),
(521, 'New Record inserted On subjects id 19', '19', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:48:28', NULL),
(522, 'New Record inserted On students id 12', '12', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:51:25', NULL),
(523, 'New Record inserted On  student session id 14', '14', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:51:25', NULL),
(524, 'New Record inserted On users id 22', '22', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:51:25', NULL),
(525, 'New Record inserted On users id 23', '23', 1, 'Insert', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:51:25', NULL),
(526, 'Record updated On students id 12', '12', 1, 'Update', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:51:25', NULL),
(527, 'Record updated On students id 12', '12', 1, 'Update', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:57:03', NULL),
(528, 'Record updated On  student session id 14', '14', 1, 'Update', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:57:03', NULL),
(529, 'Record updated On  fee groups fee type id 9', '9', 1, 'Update', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 10:59:01', NULL),
(530, 'Record updated On roles id 2', '2', 1, 'Update', '103.228.156.0', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-17 11:04:32', NULL),
(531, 'Record deleted On  student fees master 6', '6', 1, 'Delete', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:26:41', NULL),
(532, 'Record deleted On  student fees master 6', '6', 1, 'Delete', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:26:51', NULL),
(533, 'Record deleted On student fees deposite id 10', '10', 1, 'Delete', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:39:24', NULL),
(534, 'Record deleted On student fees deposite id 9', '9', 1, 'Delete', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:39:33', NULL),
(535, 'New Record inserted On messages id 1', '1', 1, 'Insert', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:52:06', NULL),
(536, 'Record deleted On student fees deposite id 6', '6', 1, 'Delete', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:56:17', NULL),
(537, 'Record deleted On student fees deposite id 8', '8', 1, 'Delete', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 10:56:22', NULL),
(538, 'New Record inserted On subject groups id 14', '14', 1, 'Insert', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 11:05:52', NULL),
(539, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 11:14:29', NULL),
(540, 'Record updated On  certificates id 2', '2', 1, 'Update', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 11:17:26', NULL),
(541, 'Record updated On staff id 9', '9', 1, 'Update', '103.228.158.199', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-18 11:22:28', NULL),
(542, 'Record deleted On classes id 19', '19', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:29:38', NULL),
(543, 'Record deleted On classes id 18', '18', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:29:43', NULL),
(544, 'Record deleted On classes id 17', '17', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:29:47', NULL),
(545, 'Record deleted On classes id 16', '16', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:29:51', NULL),
(546, 'New Record inserted On subject groups id 20', '20', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:30:20', NULL),
(547, 'New Record inserted On subject groups id 21', '21', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:30:32', NULL),
(548, 'New Record inserted On subject groups id 22', '22', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:30:56', NULL),
(549, 'Record deleted On sections id 10', '10', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:31:24', NULL),
(550, 'Record deleted On sections id 8', '8', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:31:29', NULL),
(551, 'Record deleted On sections id 7', '7', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:31:35', NULL),
(552, 'New Record inserted On subject groups id 23', '23', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:32:29', NULL),
(553, 'New Record inserted On subject groups id 24', '24', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:32:42', NULL),
(554, 'Record deleted On subjects id 17', '17', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:33:53', NULL),
(555, 'Record deleted On subjects id 18', '18', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:33:57', NULL),
(556, 'Record deleted On subjects id 19', '19', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:34:01', NULL),
(557, 'New Record inserted On subjects id 20', '20', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:34:16', NULL),
(558, 'Record updated On subjects id 20', '20', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:34:29', NULL),
(559, 'New Record inserted On subjects id 21', '21', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:34:42', NULL),
(560, 'New Record inserted On subjects id 22', '22', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:34:58', NULL),
(561, 'New Record inserted On subjects id 23', '23', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:35:49', NULL),
(562, 'New Record inserted On subjects id 24', '24', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:36:20', NULL),
(563, 'New Record inserted On subjects id 25', '25', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:36:40', NULL),
(564, 'Record deleted On  fee type id 9', '9', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:37:06', NULL),
(565, 'Record deleted On  fee type id 10', '10', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:37:11', NULL),
(566, 'Record deleted On  fee type id 11', '11', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:37:16', NULL),
(567, 'Record deleted On  fee type id 12', '12', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:37:24', NULL),
(568, 'Record deleted On  fee type id 13', '13', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:37:50', NULL),
(569, 'Record deleted On  fee type id 14', '14', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:38:01', NULL),
(570, 'Record deleted On  fee type id 15', '15', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:38:06', NULL),
(571, 'Record deleted On  fee type id 17', '17', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:38:20', NULL),
(572, 'Record deleted On  fee type id 16', '16', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:38:26', NULL),
(573, 'Record deleted On  fee type id 18', '18', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:38:31', NULL),
(574, 'New Record inserted On  fee type id 19', '19', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:40:44', NULL),
(575, 'New Record inserted On  fee type id 20', '20', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:41:12', NULL),
(576, 'New Record inserted On  fee type id 21', '21', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:41:34', NULL),
(577, 'New Record inserted On  fee type id 22', '22', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:41:46', NULL),
(578, 'New Record inserted On  fee type id 23', '23', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:00', NULL),
(579, 'New Record inserted On  fee type id 24', '24', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:11', NULL),
(580, 'New Record inserted On  fee type id 25', '25', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:21', NULL),
(581, 'New Record inserted On  fee type id 26', '26', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:29', NULL),
(582, 'New Record inserted On  fee type id 27', '27', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:39', NULL),
(583, 'New Record inserted On  fee type id 28', '28', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:48', NULL),
(584, 'New Record inserted On  fee type id 29', '29', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:42:56', NULL),
(585, 'New Record inserted On  fee type id 30', '30', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:43:05', NULL),
(586, 'New Record inserted On  fee type id 31', '31', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:43:13', NULL),
(587, 'New Record inserted On  fee type id 32', '32', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:43:23', NULL),
(588, 'New Record inserted On  fee type id 33', '33', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:43:35', NULL),
(589, 'New Record inserted On  fee type id 34', '34', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:44:17', NULL),
(590, 'Record updated On staff id 10', '10', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:50:01', NULL),
(591, 'Record updated On  staff designation id 1', '1', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:51:33', NULL),
(592, 'New Record inserted On students id 13', '13', 10, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:57:26', NULL),
(593, 'New Record inserted On  student session id 15', '15', 10, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:57:26', NULL),
(594, 'New Record inserted On users id 24', '24', 10, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:57:26', NULL),
(595, 'New Record inserted On users id 25', '25', 10, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:57:26', NULL),
(596, 'Record updated On students id 13', '13', 10, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:57:26', NULL),
(597, 'Record updated On students id 13', '13', 10, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 11:57:26', NULL),
(598, 'Record updated On staff id 7', '7', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:00:31', NULL),
(599, 'Record updated On staff id 7', '7', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:00:31', NULL),
(600, 'New Record inserted On  fee groups feetype id 12', '12', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:02:43', NULL),
(601, 'New Record inserted On  fee groups feetype id 13', '13', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:06:57', NULL),
(602, 'New Record inserted On  fee group id 16', '16', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:09:28', NULL),
(603, 'New Record inserted On  fee groups feetype id 14', '14', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:10:01', NULL),
(604, 'Record updated On  fee group id 16', '16', 7, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:10:47', NULL),
(605, 'New Record inserted On  fee group id 17', '17', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:11:36', NULL),
(606, 'New Record inserted On  fee groups feetype id 15', '15', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:14:04', NULL),
(607, 'Record deleted On student fees deposite id 12', '12', 7, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:18:23', NULL),
(608, 'Record deleted On student fees deposite id 13', '13', 7, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:18:33', NULL),
(609, 'Record deleted On student fees deposite id 11', '11', 7, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:20:12', NULL),
(610, 'Record deleted On student fees deposite id 14', '14', 7, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:20:22', NULL),
(611, 'New Record inserted On id card id 4', '4', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:30:16', NULL),
(612, 'Record updated On  id card id 4', '4', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:30:16', NULL),
(613, 'Record updated On  id card id 1', '1', 1, 'Update', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:33:41', NULL),
(614, 'Record deleted On id card id 1', '1', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:34:29', NULL),
(615, 'Record deleted On id card id 2', '2', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:34:34', NULL),
(616, 'Record deleted On id card id 3', '3', 1, 'Delete', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:34:40', NULL),
(617, 'Record updated On  id card id 4', '4', 1, 'Update', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:41:20', NULL),
(618, 'New Record inserted On messages id 2', '2', 1, 'Insert', '182.183.218.99', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:42:20', NULL),
(619, 'New Record inserted On students id 14', '14', 1, 'Insert', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:17', NULL),
(620, 'New Record inserted On  student session id 16', '16', 1, 'Insert', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:17', NULL),
(621, 'New Record inserted On users id 26', '26', 1, 'Insert', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:17', NULL),
(622, 'New Record inserted On users id 27', '27', 1, 'Insert', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:17', NULL),
(623, 'Record updated On students id 14', '14', 1, 'Update', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:17', NULL),
(624, 'Record updated On students id 14', '14', 1, 'Update', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:17', NULL),
(625, 'Record updated On students id 14', '14', 1, 'Update', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:59', NULL),
(626, 'Record updated On  student session id 16', '16', 1, 'Update', '72.255.40.249', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:45:59', NULL),
(627, 'Record updated On  id card id 4', '4', 1, 'Update', '39.59.103.115', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-19 12:57:22', NULL),
(628, 'New Record inserted On  fee type id 35', '35', 7, 'Insert', '182.183.218.99', 'Windows 10', 'Spartan 12.10240', '2022-09-19 15:34:15', NULL),
(629, 'New Record inserted On branches id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 04:58:34', NULL),
(630, 'Record updated On students id 13', '13', 1, 'Update', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:41:41', NULL),
(631, 'Record updated On  student session id 15', '15', 1, 'Update', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:41:41', NULL),
(632, 'New Record inserted On messages id 3', '3', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:42:24', NULL),
(633, 'New Record inserted On messages id 4', '4', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:44:31', NULL),
(634, 'New Record inserted On messages id 5', '5', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:48:20', NULL),
(635, 'New Record inserted On sms config id 1', '1', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:52:17', NULL),
(636, 'Record updated On sms config id custom', 'custom', 1, 'Update', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:52:20', NULL),
(637, 'Record updated On sms config id custom', 'custom', 1, 'Update', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:52:22', NULL),
(638, 'Record updated On sms config id custom', 'custom', 1, 'Update', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:52:22', NULL),
(639, 'New Record inserted On messages id 6', '6', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:53:25', NULL),
(640, 'New Record inserted On messages id 7', '7', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:53:33', NULL),
(641, 'New Record inserted On messages id 8', '8', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:54:16', NULL),
(642, 'New Record inserted On messages id 9', '9', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:54:27', NULL),
(643, 'New Record inserted On messages id 10', '10', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:56:04', NULL),
(644, 'New Record inserted On messages id 11', '11', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:56:52', NULL),
(645, 'New Record inserted On messages id 12', '12', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 07:59:02', NULL),
(646, 'New Record inserted On messages id 13', '13', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 08:04:00', NULL),
(647, 'New Record inserted On messages id 14', '14', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 08:07:46', NULL),
(648, 'New Record inserted On messages id 15', '15', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 08:11:06', NULL),
(649, 'New Record inserted On messages id 16', '16', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 08:14:18', NULL),
(650, 'New Record inserted On messages id 17', '17', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-22 08:17:22', NULL),
(651, 'New Record inserted On messages id 18', '18', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 00:45:07', NULL),
(652, 'New Record inserted On messages id 19', '19', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 00:55:44', NULL),
(653, 'New Record inserted On messages id 20', '20', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 00:57:50', NULL),
(654, 'New Record inserted On messages id 21', '21', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 00:59:58', NULL),
(655, 'New Record inserted On messages id 22', '22', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:07:37', NULL),
(656, 'New Record inserted On messages id 23', '23', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:08:56', NULL),
(657, 'New Record inserted On messages id 24', '24', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:10:18', NULL),
(658, 'New Record inserted On messages id 25', '25', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:11:48', NULL),
(659, 'New Record inserted On messages id 26', '26', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:13:09', NULL),
(660, 'New Record inserted On messages id 27', '27', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:16:51', NULL),
(661, 'New Record inserted On messages id 28', '28', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:21:20', NULL),
(662, 'New Record inserted On messages id 29', '29', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:23:36', NULL),
(663, 'New Record inserted On messages id 30', '30', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:26:10', NULL),
(664, 'New Record inserted On messages id 31', '31', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:30:44', NULL),
(665, 'New Record inserted On messages id 32', '32', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:31:38', NULL),
(666, 'New Record inserted On messages id 33', '33', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:33:10', NULL),
(667, 'New Record inserted On messages id 34', '34', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:34:27', NULL),
(668, 'New Record inserted On messages id 35', '35', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:36:17', NULL),
(669, 'Record updated On notification setting id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 01:48:01', NULL),
(670, 'New Record inserted On messages id 36', '36', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 02:09:05', NULL),
(671, 'New Record inserted On messages id 37', '37', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 02:12:27', NULL),
(672, 'New Record inserted On messages id 38', '38', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 02:21:06', NULL),
(673, 'New Record inserted On messages id 39', '39', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 02:22:59', NULL),
(674, 'New Record inserted On messages id 40', '40', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-23 02:40:43', NULL),
(675, 'New Record inserted On  fee groups feetype id 16', '16', 1, 'Insert', '::1', 'Windows 10', 'Chrome 105.0.0.0', '2022-09-28 06:17:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manage_loan`
--

CREATE TABLE `manage_loan` (
  `id` int(11) NOT NULL,
  `loan_amount` text NOT NULL,
  `date` date NOT NULL,
  `emp_id` int(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `role_id` int(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `deduct_type` varchar(255) NOT NULL,
  `deduct_amount` varchar(255) NOT NULL,
  `loan_percentage` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage_loan`
--

INSERT INTO `manage_loan` (`id`, `loan_amount`, `date`, `emp_id`, `role`, `role_id`, `employee_name`, `deduct_type`, `deduct_amount`, `loan_percentage`, `description`) VALUES
(6, '1000', '2022-09-09', 4, 'Teacher', 2, 'hamza', 'fix', '250', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `template_id` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT 0,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `template_id`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES
(1, 'home work', '', 'English page 21  ', '0', '1', '0', '0', 1, NULL, '[{\"user_id\":\"10\",\"email\":\"asad@gmail.com\",\"mobileno\":\"03306696\",\"app_key\":null},{\"user_id\":\"11\",\"email\":\"gm@gmail.com\",\"mobileno\":\"+923365358558\",\"app_key\":null}]', '2022-09-18 10:52:06', NULL),
(2, 'home  work', '', 'english page no\r\n\r\n', '0', '1', '0', '0', 1, NULL, '[{\"user_id\":\"13\",\"email\":\"\",\"mobileno\":\"+923333333\",\"app_key\":null}]', '2022-09-19 12:42:20', NULL),
(3, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:42:24', NULL),
(4, 'tset', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:44:31', NULL),
(5, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:48:20', NULL),
(6, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:53:25', NULL),
(7, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:53:33', NULL),
(8, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:54:16', NULL),
(9, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:54:27', NULL),
(10, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:56:04', NULL),
(11, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:56:52', NULL),
(12, 'test12', '', 'test12', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 07:59:02', NULL),
(13, 'test123', '', 'test1234', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 08:04:00', NULL),
(14, 'testtt122222', '', 'jshjgkfgfkjfghfghfgjgfjfgks', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 08:07:46', NULL),
(15, 'sms', '', 'sms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 08:11:06', NULL),
(16, 'smsmsmssmsmmsm', '', 'smsm', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 08:14:18', NULL),
(17, 'testeseses', '', 'testeses', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-22 08:17:22', NULL),
(18, 'hahahha', '', 'ghghgahgashgs', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 00:45:07', NULL),
(19, 'sms', '', 'hjsjs', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 00:55:44', NULL),
(20, 'sms', '', 'hghggh', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 00:57:50', NULL),
(21, 'smsms', '', 'hghjgjgg', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 00:59:58', NULL),
(22, 'smsms', '', 'smsmsms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:07:37', NULL),
(23, 'sms', '', 'sms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:08:56', NULL),
(24, 'smsmsms', '', 'smsmsmsms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:10:18', NULL),
(25, 'sms', '', 'hahahha', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:11:48', NULL),
(26, 'hamza', '', 'hhghg', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:13:09', NULL),
(27, 'sisisisi', '', 'suisisiisisis', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:16:51', NULL),
(28, 'ghghhghg', '', 'ghghghhg', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:21:20', NULL),
(29, 'test', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:23:36', NULL),
(30, 'sms', '', 'test', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:26:10', NULL),
(31, 'smsms', '', 'sms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:30:44', NULL),
(32, 'sms', '', 'hshsh', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:31:38', NULL),
(33, 'smsmm', '', 'smsm', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:33:10', NULL),
(34, 'sms', '', 'gggffggf', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:34:27', NULL),
(35, 'sms', '', 'smsmms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 01:36:17', NULL),
(36, 'sms', '', 'sms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 02:09:05', NULL),
(37, 'sms', '', 'sms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 02:12:27', NULL),
(38, 'sms', '', 'sms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 02:21:06', NULL),
(39, 'smms', '', 'smms', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 02:22:59', NULL),
(40, 'sms', '', 'smsm', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"student_guardian\",\"user_id\":\"13\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"+923204601131\",\"app_key\":\"\"}]', '2022-09-23 02:40:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `multi_class_students`
--

CREATE TABLE `multi_class_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT 0,
  `display_notification` int(11) NOT NULL DEFAULT 0,
  `display_sms` int(11) NOT NULL DEFAULT 1,
  `subject` varchar(255) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES
(1, 'student_admission', '1', '0', 0, 0, 1, 'Student Admission', '', 'Dear {{student_name}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more \r\nThanks for visiting\r\n {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ', '2022-09-16 15:16:20'),
(2, 'exam_result', '0', '0', 0, 1, 1, 'Exam Result', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', '2022-09-16 15:17:23'),
(3, 'fee_submission', '0', '0', 0, 1, 1, 'Fee Submission', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '2022-09-16 15:17:23'),
(4, 'absent_attendence', '0', '0', 0, 1, 1, 'Absent Attendence', '', 'Absent Notice :{{student_name}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}}             {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ', '2022-09-16 15:17:23'),
(5, 'login_credential', '0', '0', 0, 0, 1, 'Login Credential', '', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}}', '{{url}} {{display_name}} {{username}} {{password}}', '2022-09-16 15:17:23'),
(6, 'homework', '0', '1', 0, 1, 1, 'Homework', '', 'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}}', '2022-09-16 15:17:23'),
(7, 'fees_reminder', '0', '1', 0, 1, 1, 'Fees Reminder', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ', '2022-09-16 15:17:23'),
(8, 'forgot_password', '0', '0', 0, 0, 0, 'Forgot Password', '', 'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}', '{{school_name}}{{name}}{{username}}{{resetPassLink}} ', '2022-09-16 15:17:23'),
(9, 'online_examination_publish_exam', '0', '0', 0, 1, 1, 'Online Examination Publish Exam', '', 'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', '2022-09-16 15:17:23'),
(10, 'online_examination_publish_result', '0', '0', 0, 1, 1, 'Online Examination Publish Result', '', 'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', '2022-09-16 15:17:23'),
(11, 'online_admission_form_submission', '0', '0', 0, 1, 1, 'Online Admission Form Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', '2022-09-16 15:17:23'),
(12, 'online_admission_fees_submission', '0', '0', 0, 1, 1, 'Online Admission Fees Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', '2021-06-02 08:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

CREATE TABLE `onlineexam` (
  `id` int(11) NOT NULL,
  `exam` text DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `exam_from` datetime DEFAULT NULL,
  `exam_to` datetime DEFAULT NULL,
  `is_quiz` int(11) NOT NULL DEFAULT 0,
  `auto_publish_date` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(1) DEFAULT '0',
  `is_marks_display` int(11) NOT NULL DEFAULT 0,
  `is_neg_marking` int(11) NOT NULL DEFAULT 0,
  `is_random_question` int(11) NOT NULL DEFAULT 0,
  `is_rank_generated` int(1) NOT NULL DEFAULT 0,
  `publish_exam_notification` int(1) NOT NULL,
  `publish_result_notification` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_attempts`
--

CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_questions`
--

CREATE TABLE `onlineexam_questions` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `neg_marks` float(10,2) DEFAULT 0.00,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_students`
--

CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `is_attempted` int(1) NOT NULL DEFAULT 0,
  `rank` int(1) DEFAULT 0,
  `quiz_attempted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_student_results`
--

CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` longtext DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `remark` text DEFAULT NULL,
  `attachment_name` text DEFAULT NULL,
  `attachment_upload_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_enroll` int(255) DEFAULT 0,
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `form_status` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_fields`
--

CREATE TABLE `online_admission_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `online_admission_fields`
--

INSERT INTO `online_admission_fields` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'middlename', 0, '2021-05-28 10:29:23'),
(2, 'lastname', 1, '2021-06-02 04:49:19'),
(3, 'category', 0, '2021-06-02 04:48:35'),
(4, 'religion', 0, '2021-06-02 04:48:35'),
(5, 'cast', 0, '2021-06-02 04:48:35'),
(6, 'mobile_no', 1, '2021-06-02 04:50:24'),
(7, 'admission_date', 0, '2021-06-02 04:48:35'),
(8, 'student_photo', 0, '2021-06-02 04:48:35'),
(9, 'is_student_house', 0, '2021-05-29 13:22:53'),
(10, 'is_blood_group', 0, '2021-06-02 04:48:35'),
(11, 'student_height', 0, '2021-06-02 04:48:35'),
(12, 'student_weight', 0, '2021-06-02 04:48:35'),
(13, 'father_name', 0, '2021-06-02 04:48:35'),
(14, 'father_phone', 0, '2021-06-02 04:48:35'),
(15, 'father_occupation', 0, '2021-06-02 04:48:35'),
(16, 'father_pic', 0, '2021-06-02 04:48:35'),
(17, 'mother_name', 0, '2021-06-02 04:48:35'),
(18, 'mother_phone', 0, '2021-06-02 04:48:35'),
(19, 'mother_occupation', 0, '2021-06-02 04:48:35'),
(20, 'mother_pic', 0, '2021-06-02 04:48:35'),
(21, 'guardian_name', 1, '2021-06-02 04:50:54'),
(22, 'guardian_phone', 1, '2021-06-02 04:50:54'),
(23, 'if_guardian_is', 1, '2021-06-02 04:50:54'),
(24, 'guardian_relation', 1, '2021-06-02 04:50:54'),
(25, 'guardian_email', 1, '2021-06-02 04:51:35'),
(26, 'guardian_occupation', 1, '2021-06-02 04:51:26'),
(27, 'guardian_address', 1, '2021-06-02 04:51:31'),
(28, 'bank_account_no', 0, '2021-06-02 04:48:35'),
(29, 'bank_name', 0, '2021-06-02 04:48:35'),
(30, 'ifsc_code', 0, '2021-06-02 04:48:35'),
(31, 'national_identification_no', 0, '2021-06-02 04:48:35'),
(32, 'local_identification_no', 0, '2021-06-02 04:48:35'),
(33, 'rte', 0, '2021-06-02 04:48:35'),
(34, 'previous_school_details', 0, '2021-06-02 04:48:35'),
(35, 'guardian_photo', 1, '2021-06-02 04:51:29'),
(36, 'student_note', 0, '2021-06-02 04:55:08'),
(37, 'measurement_date', 0, '2021-06-02 04:48:35'),
(38, 'student_email', 1, '2021-06-02 04:49:38'),
(39, 'current_address', 0, '2021-06-02 04:48:35'),
(40, 'permanent_address', 0, '2021-06-02 04:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_payment`
--

CREATE TABLE `online_admission_payment` (
  `id` int(11) NOT NULL,
  `admission_id` int(11) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int(11) NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payslip_allowance`
--

INSERT INTO `payslip_allowance` (`id`, `payslip_id`, `allowance_type`, `amount`, `staff_id`, `cal_type`) VALUES
(1, 0, '', 0, 3, 'positive'),
(2, 0, '', 0, 3, 'negative'),
(3, 0, '', 0, 3, 'positive'),
(4, 0, 'CPF', 10, 3, 'negative'),
(5, 0, 'INCOME TAX', 20, 3, 'negative'),
(6, 0, 'EOBI', 30, 3, 'negative'),
(7, 0, 'CA', 40, 3, 'negative'),
(8, 0, 'ADVANCE', 50, 3, 'negative'),
(9, 0, 'LOAN', 60, 3, 'negative'),
(10, 0, '', 0, 3, 'positive'),
(11, 0, 'CPF', 0, 3, 'negative'),
(12, 0, '', 0, 3, 'positive'),
(13, 0, 'CPF', 0, 3, 'negative'),
(14, 1, '', 0, 3, 'positive'),
(15, 1, 'CPF', 0, 3, 'negative'),
(25, 4, 'gag1', 110, 4, 'positive'),
(26, 4, 'hgaha', 20, 4, 'positive'),
(27, 4, 'CPF', 100, 4, 'negative'),
(28, 4, 'INCOME TAX', 200, 4, 'negative'),
(29, 4, 'EOBI', 3000, 4, 'negative'),
(30, 4, 'CA', 10, 4, 'negative'),
(31, 5, '', 0, 3, 'positive'),
(32, 5, 'CPF', 0, 3, 'negative'),
(33, 6, '', 0, 4, 'positive'),
(34, 6, 'CPF', 100, 4, 'negative'),
(35, 6, 'ADVANCE', 1000, 4, 'negative'),
(36, 7, '', 0, 4, 'positive'),
(37, 7, 'CPF', 0, 4, 'negative'),
(38, 8, '', 0, 4, 'positive'),
(39, 8, 'CPF', 0, 4, 'negative');

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(1, 1, 'Student', 'student', 1, 1, 1, 1, '2019-10-24 05:42:03'),
(2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 10:17:19'),
(3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 10:17:36'),
(4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 10:17:53'),
(5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 10:21:03'),
(6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-27 00:18:15'),
(7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-27 00:18:57'),
(8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 10:21:46'),
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 10:23:21'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 10:22:44'),
(11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 10:23:00'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 10:24:06'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 10:23:47'),
(14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 10:24:13'),
(15, 5, 'Student / Period Attendance', 'student_attendance', 1, 1, 1, 0, '2019-11-29 01:19:05'),
(20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 10:25:25'),
(21, 7, 'Class Timetable', 'class_timetable', 1, 1, 1, 0, '2022-07-27 11:47:39'),
(23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 10:32:17'),
(24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 10:32:35'),
(25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 10:31:10'),
(26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 10:32:47'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 10:33:19'),
(28, 9, 'Books List', 'books', 1, 1, 1, 1, '2019-11-24 00:37:12'),
(29, 9, 'Issue Return', 'issue_return', 1, 0, 0, 0, '2019-11-24 00:37:18'),
(30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 11:37:00'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 1, 1, '2019-11-29 06:39:27'),
(32, 10, 'Add Item Stock', 'item_stock', 1, 1, 1, 1, '2019-11-24 00:39:17'),
(33, 10, 'Add Item', 'item', 1, 1, 1, 1, '2019-11-24 00:39:39'),
(34, 10, 'Item Store', 'store', 1, 1, 1, 1, '2019-11-24 00:40:41'),
(35, 10, 'Item Supplier', 'supplier', 1, 1, 1, 1, '2019-11-24 00:40:49'),
(37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 10:39:17'),
(38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 10:39:36'),
(39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-27 04:39:20'),
(40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 10:40:49'),
(41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 10:40:27'),
(42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-25 06:23:03'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 10:41:17'),
(44, 13, 'Email', 'email', 1, 0, 0, 0, '2019-11-26 05:20:37'),
(46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 10:41:23'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 1, '2021-01-23 07:09:32'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 09:08:35'),
(55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 10:44:15'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 09:08:41'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 09:08:47'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 09:08:51'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 09:08:55'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 09:08:59'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 03:50:06'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 03:50:26'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 10:46:02'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 10:46:21'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 10:47:02'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 10:47:20'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 08:39:34'),
(68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 10:20:42'),
(69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 10:19:34'),
(70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 10:20:10'),
(71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 10:20:17'),
(73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 10:20:27'),
(74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 10:20:35'),
(77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 10:30:52'),
(78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 10:51:24'),
(79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 10:51:39'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 10:48:58'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 10:50:57'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 10:50:21'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 10:50:04'),
(84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 08:40:55'),
(85, 17, 'Setup Font Office', 'setup_font_office', 1, 1, 1, 1, '2018-06-22 10:49:24'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 10:53:31'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 10:53:12'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 10:53:10'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 10:52:51'),
(93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 10:53:50'),
(94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-27 03:07:21'),
(96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 10:41:07'),
(97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 10:37:16'),
(98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28'),
(99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 10:54:41'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 10:34:33'),
(106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 10:54:45'),
(107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-25 06:21:34'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 0, 1, 1, '2020-10-05 08:56:27'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 0, '2019-11-28 23:47:46'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 10:17:56'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 03:57:07'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 03:57:07'),
(113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15'),
(114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15'),
(115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35'),
(122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 08:42:29'),
(128, 1, 'Student Timeline', 'student_timeline', 0, 1, 0, 1, '2018-07-05 08:08:52'),
(129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-05 08:08:52'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 04:17:17'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 04:17:17'),
(134, 1, 'Disable Reason', 'disable_reason', 1, 1, 1, 1, '2019-11-27 06:39:21'),
(135, 2, 'Fees Reminder', 'fees_reminder', 1, 0, 1, 0, '2019-10-25 00:39:49'),
(136, 5, 'Approve Leave', 'approve_leave', 1, 0, 0, 0, '2019-10-25 00:46:44'),
(137, 6, 'Exam Group', 'exam_group', 1, 1, 1, 1, '2019-10-25 01:02:34'),
(141, 6, 'Design Admit Card', 'design_admit_card', 1, 1, 1, 1, '2019-10-25 01:06:59'),
(142, 6, 'Print Admit Card', 'print_admit_card', 1, 0, 0, 0, '2019-11-23 23:57:51'),
(143, 6, 'Design Marksheet', 'design_marksheet', 1, 1, 1, 1, '2019-10-25 01:10:25'),
(144, 6, 'Print Marksheet', 'print_marksheet', 1, 0, 0, 0, '2019-10-25 01:11:02'),
(145, 7, 'Teachers Timetable', 'teachers_time_table', 1, 0, 0, 0, '2019-11-30 02:52:21'),
(146, 14, 'Student Report', 'student_report', 1, 0, 0, 0, '2019-10-25 01:27:00'),
(147, 14, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2019-10-25 01:30:27'),
(148, 14, 'Student History', 'student_history', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(149, 14, 'Student Login Credential Report', 'student_login_credential_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(150, 14, 'Class Subject Report', 'class_subject_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(151, 14, 'Admission Report', 'admission_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(152, 14, 'Sibling Report', 'sibling_report', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(153, 14, 'Homework Evaluation Report', 'homehork_evaluation_report', 1, 0, 0, 0, '2019-11-24 01:04:24'),
(154, 14, 'Student Profile', 'student_profile', 1, 0, 0, 0, '2019-10-25 01:39:07'),
(155, 14, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(156, 14, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(157, 14, 'Fees Collection Report', 'fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(158, 14, 'Online Fees Collection Report', 'online_fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(159, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(160, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(161, 14, 'PayRoll Report', 'payroll_report', 1, 0, 0, 0, '2019-10-31 00:23:22'),
(162, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(163, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52'),
(164, 14, 'Attendance Report', 'attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06'),
(165, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06'),
(174, 14, 'Transport Report', 'transport_report', 1, 0, 0, 0, '2019-10-25 02:13:56'),
(175, 14, 'Hostel Report', 'hostel_report', 1, 0, 0, 0, '2019-11-27 06:51:53'),
(176, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2019-10-25 02:16:39'),
(177, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2019-10-25 02:19:27'),
(178, 14, 'Book Issue Report', 'book_issue_report', 1, 0, 0, 0, '2019-10-25 02:29:04'),
(179, 14, 'Book Due Report', 'book_due_report', 1, 0, 0, 0, '2019-10-25 02:29:04'),
(180, 14, 'Book Inventory Report', 'book_inventory_report', 1, 0, 0, 0, '2019-10-25 02:29:04'),
(181, 14, 'Stock Report', 'stock_report', 1, 0, 0, 0, '2019-10-25 02:31:28'),
(182, 14, 'Add Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-25 02:31:28'),
(183, 14, 'Issue Item Report', 'issue_item_report', 1, 0, 0, 0, '2019-11-29 03:48:06'),
(185, 23, 'Online Examination', 'online_examination', 1, 1, 1, 1, '2019-11-23 23:54:50'),
(186, 23, 'Question Bank', 'question_bank', 1, 1, 1, 1, '2019-11-23 23:55:18'),
(187, 6, 'Exam Result', 'exam_result', 1, 0, 0, 0, '2019-11-23 23:58:50'),
(188, 7, 'Subject Group', 'subject_group', 1, 1, 1, 1, '2019-11-24 00:34:32'),
(189, 18, 'Teachers Rating', 'teachers_rating', 1, 0, 1, 1, '2019-11-24 03:12:54'),
(190, 22, 'Fees Awaiting Payment Widegts', 'fees_awaiting_payment_widegts', 1, 0, 0, 0, '2019-11-24 00:52:51'),
(191, 22, 'Conveted Leads Widegts', 'conveted_leads_widegts', 1, 0, 0, 0, '2019-11-24 00:58:24'),
(192, 22, 'Fees Overview Widegts', 'fees_overview_widegts', 1, 0, 0, 0, '2019-11-24 00:57:41'),
(193, 22, 'Enquiry Overview Widegts', 'enquiry_overview_widegts', 1, 0, 0, 0, '2019-12-02 05:06:09'),
(194, 22, 'Library Overview Widegts', 'book_overview_widegts', 1, 0, 0, 0, '2019-12-01 01:13:04'),
(195, 22, 'Student Today Attendance Widegts', 'today_attendance_widegts', 1, 0, 0, 0, '2019-12-03 04:57:45'),
(196, 6, 'Marks Import', 'marks_import', 1, 0, 0, 0, '2019-11-24 01:02:11'),
(197, 14, 'Student Attendance Type Report', 'student_attendance_type_report', 1, 0, 0, 0, '2019-11-24 01:06:32'),
(198, 14, 'Exam Marks Report', 'exam_marks_report', 1, 0, 0, 0, '2019-11-24 01:11:15'),
(200, 14, 'Online Exam Wise Report', 'online_exam_wise_report', 1, 0, 0, 0, '2019-11-24 01:18:14'),
(201, 14, 'Online Exams Report', 'online_exams_report', 1, 0, 0, 0, '2019-11-29 02:48:05'),
(202, 14, 'Online Exams Attempt Report', 'online_exams_attempt_report', 1, 0, 0, 0, '2019-11-29 02:46:24'),
(203, 14, 'Online Exams Rank Report', 'online_exams_rank_report', 1, 0, 0, 0, '2019-11-24 01:22:25'),
(204, 14, 'Staff Report', 'staff_report', 1, 0, 0, 0, '2019-11-24 01:25:27'),
(205, 6, 'Exam', 'exam', 1, 1, 1, 1, '2019-11-24 04:55:48'),
(207, 6, 'Exam Publish', 'exam_publish', 1, 0, 0, 0, '2019-11-24 05:15:04'),
(208, 6, 'Link Exam', 'link_exam', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(210, 6, 'Assign / View student', 'exam_assign_view_student', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(211, 6, 'Exam Subject', 'exam_subject', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(212, 6, 'Exam Marks', 'exam_marks', 1, 0, 1, 0, '2019-11-24 05:15:04'),
(213, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11'),
(214, 23, 'Add Questions in Exam ', 'add_questions_in_exam', 1, 0, 1, 0, '2019-11-28 01:38:57'),
(215, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2019-11-29 04:08:35'),
(216, 15, 'System Fields', 'system_fields', 1, 0, 0, 0, '2019-11-25 00:15:01'),
(217, 13, 'SMS', 'sms', 1, 0, 0, 0, '2018-06-22 10:40:54'),
(219, 14, 'Student / Period Attendance Report', 'student_period_attendance_report', 1, 0, 0, 0, '2019-11-29 02:19:31'),
(220, 14, 'Biometric Attendance Log', 'biometric_attendance_log', 1, 0, 0, 0, '2019-11-27 05:59:16'),
(221, 14, 'Book Issue Return Report', 'book_issue_return_report', 1, 0, 0, 0, '2019-11-27 06:30:23'),
(222, 23, 'Assign / View Student', 'online_assign_view_student', 1, 0, 1, 0, '2019-11-28 04:20:22'),
(223, 14, 'Rank Report', 'rank_report', 1, 0, 0, 0, '2019-11-29 02:30:21'),
(224, 25, 'Chat', 'chat', 1, 0, 0, 0, '2019-11-29 04:10:28'),
(226, 22, 'Income Donut Graph', 'income_donut_graph', 1, 0, 0, 0, '2019-11-29 05:00:33'),
(227, 22, 'Expense Donut Graph', 'expense_donut_graph', 1, 0, 0, 0, '2019-11-29 05:01:10'),
(228, 9, 'Import Book', 'import_book', 1, 0, 0, 0, '2019-11-29 06:21:01'),
(229, 22, 'Staff Present Today Widegts', 'staff_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:48:00'),
(230, 22, 'Student Present Today Widegts', 'student_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:47:42'),
(231, 26, 'Multi Class Student', 'multi_class_student', 1, 1, 1, 1, '2020-10-05 08:56:27'),
(232, 27, 'Online Admission', 'online_admission', 1, 0, 1, 1, '2019-12-02 06:11:10'),
(233, 15, 'Print Header Footer', 'print_header_footer', 1, 0, 0, 0, '2020-02-12 02:02:02'),
(234, 28, 'Manage Alumni', 'manage_alumni', 1, 1, 1, 1, '2020-06-02 03:15:46'),
(235, 28, 'Events', 'events', 1, 1, 1, 1, '2020-05-28 21:48:52'),
(236, 29, 'Manage Lesson Plan', 'manage_lesson_plan', 1, 1, 1, 0, '2020-05-28 22:17:37'),
(237, 29, 'Manage Syllabus Status', 'manage_syllabus_status', 1, 0, 1, 0, '2020-05-28 22:20:11'),
(238, 29, 'Lesson', 'lesson', 1, 1, 1, 1, '2020-05-28 22:20:11'),
(239, 29, 'Topic', 'topic', 1, 1, 1, 1, '2020-05-28 22:20:11'),
(240, 14, 'Syllabus Status Report', 'syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54'),
(241, 14, 'Teacher Syllabus Status Report', 'teacher_syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54'),
(242, 14, 'Alumni Report', 'alumni_report', 1, 0, 0, 0, '2020-06-07 23:59:54'),
(243, 15, 'Student Profile Update', 'student_profile_update', 1, 0, 0, 0, '2020-08-21 05:36:33'),
(244, 14, 'Student Gender Ratio Report', 'student_gender_ratio_report', 1, 0, 0, 0, '2020-08-22 12:37:51'),
(245, 14, 'Student Teacher Ratio Report', 'student_teacher_ratio_report', 1, 0, 0, 0, '2020-08-22 12:42:27'),
(246, 14, 'Daily Attendance Report', 'daily_attendance_report', 1, 0, 0, 0, '2020-08-22 12:43:16'),
(247, 23, 'Import Question', 'import_question', 1, 0, 0, 0, '2019-11-23 18:25:18'),
(248, 20, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28'),
(249, 20, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES
(1, 'Student Information', 'student_information', 1, 1, '2019-03-15 09:30:22'),
(2, 'Fees Collection', 'fees_collection', 1, 0, '2020-06-11 00:51:35'),
(3, 'Income', 'income', 1, 0, '2020-06-01 01:57:39'),
(4, 'Expense', 'expense', 1, 0, '2019-03-15 09:06:22'),
(5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 07:48:08'),
(6, 'Examination', 'examination', 1, 0, '2018-07-11 02:49:08'),
(7, 'Academics', 'academics', 1, 1, '2018-07-02 07:25:43'),
(8, 'Download Center', 'download_center', 1, 0, '2018-07-02 07:49:29'),
(9, 'Library', 'library', 1, 0, '2018-06-28 11:13:14'),
(10, 'Inventory', 'inventory', 1, 0, '2018-06-27 00:48:58'),
(11, 'Transport', 'transport', 1, 0, '2018-06-27 07:51:26'),
(12, 'Hostel', 'hostel', 1, 0, '2018-07-02 07:49:32'),
(13, 'Communicate', 'communicate', 1, 0, '2018-07-02 07:50:00'),
(14, 'Reports', 'reports', 1, 1, '2018-06-27 03:40:22'),
(15, 'System Settings', 'system_settings', 1, 1, '2018-06-27 03:40:28'),
(16, 'Front CMS', 'front_cms', 1, 0, '2018-07-10 05:16:54'),
(17, 'Front Office', 'front_office', 1, 0, '2018-06-27 03:45:30'),
(18, 'Human Resource', 'human_resource', 1, 1, '2018-06-27 03:41:02'),
(19, 'Homework', 'homework', 1, 0, '2018-06-27 00:49:38'),
(20, 'Certificate', 'certificate', 1, 0, '2018-06-27 07:51:29'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2019-03-15 09:06:25'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-27 03:41:17'),
(23, 'Online Examination', 'online_examination', 1, 0, '2020-06-01 02:25:36'),
(25, 'Chat', 'chat', 1, 0, '2019-11-23 23:54:04'),
(26, 'Multi Class', 'multi_class', 1, 0, '2019-11-27 12:14:14'),
(27, 'Online Admission', 'online_admission', 1, 0, '2019-11-27 02:42:13'),
(28, 'Alumni', 'alumni', 1, 0, '2020-05-29 00:26:38'),
(29, 'Lesson Plan', 'lesson_plan', 1, 0, '2020-06-07 05:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission_student`
--

CREATE TABLE `permission_student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_student`
--

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES
(1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-11 00:51:35'),
(2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-30 19:57:50'),
(3, 'Homework', 'homework', 0, 1, 1, 19, '2020-06-01 02:49:14'),
(4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-06-01 02:52:49'),
(5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-06-01 02:57:18'),
(7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-06-01 02:59:50'),
(8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-06-01 03:00:35'),
(11, 'Library', 'library', 0, 1, 1, 9, '2020-06-01 03:02:37'),
(12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-06-01 03:51:30'),
(13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-06-01 03:52:27'),
(14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 1, 21, '2020-06-01 03:53:18'),
(15, 'Online Examination', 'online_examination', 0, 1, 1, 23, '2020-06-11 05:20:01'),
(16, 'Teachers Rating', 'teachers_rating', 0, 1, 1, 0, '2020-06-01 04:49:58'),
(17, 'Chat', 'chat', 0, 1, 1, 25, '2020-06-01 04:53:06'),
(18, 'Multi Class', 'multi_class', 1, 1, 1, 26, '2020-05-30 19:56:52'),
(19, 'Lesson Plan', 'lesson_plan', 0, 1, 1, 29, '2020-06-07 05:38:30'),
(20, 'Syllabus Status', 'syllabus_status', 0, 1, 1, 29, '2020-06-07 05:38:30'),
(23, 'Apply Leave', 'apply_leave', 0, 1, 1, 0, '2020-06-11 05:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `print_headerfooter`
--

CREATE TABLE `print_headerfooter` (
  `id` int(11) NOT NULL,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `print_headerfooter`
--

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`) VALUES
(1, 'staff_payslip', 'header_image.jpeg', 'This payslip is computer generated hence no signature is required.', 1, '2022-09-19 05:48:09'),
(2, 'student_receipt', 'header_image.jpeg', 'This receipt is computer generated hence no signature is required.', 1, '2022-09-19 05:47:54'),
(3, 'online_admission_receipt', 'header_image.jpg', 'This receipt is for online admission  computer ffffffff generated hence no signature is required.', 1, '2021-05-27 12:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_type` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `opt_a` text DEFAULT NULL,
  `opt_b` text DEFAULT NULL,
  `opt_c` text DEFAULT NULL,
  `opt_d` text DEFAULT NULL,
  `opt_e` text DEFAULT NULL,
  `correct` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `reference`, `description`) VALUES
(1, 'Teacher Name ', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-06-30 15:39:11', '0000-00-00'),
(2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 15:39:14', '0000-00-00'),
(3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 15:39:17', '0000-00-00'),
(4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 15:39:21', '0000-00-00'),
(6, 'Receptionist', NULL, 0, 1, 0, '2018-07-02 05:39:03', '0000-00-00'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 14:11:29', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(10, 1, 17, 1, 1, 1, 1, '2018-07-06 09:48:56'),
(11, 1, 78, 1, 1, 1, 1, '2018-07-03 00:49:43'),
(23, 1, 12, 1, 1, 1, 1, '2018-07-06 09:45:38'),
(24, 1, 13, 1, 1, 1, 1, '2018-07-06 09:48:28'),
(26, 1, 15, 1, 1, 1, 0, '2019-11-27 23:47:28'),
(28, 1, 19, 1, 1, 1, 0, '2018-07-02 11:31:10'),
(30, 1, 76, 1, 1, 1, 0, '2018-07-02 11:31:10'),
(31, 1, 21, 1, 1, 1, 0, '2022-07-27 11:47:39'),
(32, 1, 22, 1, 1, 1, 1, '2018-07-02 11:32:05'),
(34, 1, 24, 1, 1, 1, 1, '2019-11-28 06:35:20'),
(43, 1, 32, 1, 1, 1, 1, '2018-07-06 10:22:05'),
(44, 1, 33, 1, 1, 1, 1, '2018-07-06 10:22:29'),
(45, 1, 34, 1, 1, 1, 1, '2018-07-06 10:23:59'),
(46, 1, 35, 1, 1, 1, 1, '2018-07-06 10:24:34'),
(47, 1, 104, 1, 1, 1, 1, '2018-07-06 10:23:08'),
(48, 1, 37, 1, 1, 1, 1, '2018-07-06 10:25:30'),
(49, 1, 38, 1, 1, 1, 1, '2018-07-09 05:15:27'),
(58, 1, 52, 1, 1, 0, 1, '2018-07-09 03:19:43'),
(61, 1, 55, 1, 1, 1, 1, '2018-07-02 09:24:16'),
(67, 1, 61, 1, 1, 0, 1, '2018-07-09 05:59:19'),
(68, 1, 62, 1, 1, 0, 1, '2018-07-09 05:59:19'),
(69, 1, 63, 1, 1, 0, 1, '2018-07-09 03:51:38'),
(70, 1, 64, 1, 1, 1, 1, '2018-07-09 03:02:19'),
(71, 1, 65, 1, 1, 1, 1, '2018-07-09 03:11:21'),
(72, 1, 66, 1, 1, 1, 1, '2018-07-09 03:13:09'),
(73, 1, 67, 1, 1, 1, 1, '2018-07-09 03:14:47'),
(74, 1, 79, 1, 1, 0, 1, '2019-11-30 01:32:51'),
(75, 1, 80, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(76, 1, 81, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(78, 1, 83, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(79, 1, 84, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(80, 1, 85, 1, 1, 1, 1, '2018-07-12 00:16:00'),
(87, 1, 92, 1, 1, 1, 1, '2018-06-26 03:33:43'),
(94, 1, 82, 1, 1, 1, 1, '2018-07-06 09:41:23'),
(120, 1, 39, 1, 1, 1, 1, '2018-07-06 10:26:28'),
(156, 1, 9, 1, 1, 1, 1, '2019-11-27 23:45:46'),
(157, 1, 10, 1, 1, 1, 1, '2019-11-27 23:45:46'),
(159, 1, 40, 1, 1, 1, 1, '2019-11-30 00:49:39'),
(160, 1, 41, 1, 1, 1, 1, '2019-12-02 05:43:41'),
(161, 1, 42, 1, 1, 1, 1, '2019-11-30 00:49:39'),
(169, 1, 27, 1, 1, 0, 1, '2019-11-29 06:15:37'),
(178, 1, 54, 1, 0, 1, 0, '2018-07-05 09:09:22'),
(179, 1, 56, 1, 0, 1, 0, '2019-11-30 00:49:54'),
(180, 1, 57, 1, 0, 1, 0, '2019-11-30 01:32:51'),
(181, 1, 58, 1, 0, 1, 0, '2019-11-30 01:32:51'),
(182, 1, 59, 1, 0, 1, 0, '2019-11-30 01:32:51'),
(183, 1, 60, 1, 0, 1, 0, '2019-11-30 00:59:57'),
(190, 1, 105, 1, 0, 0, 0, '2018-07-02 11:13:25'),
(199, 1, 75, 1, 0, 0, 0, '2018-07-02 11:19:46'),
(201, 1, 14, 1, 0, 0, 0, '2018-07-02 11:22:03'),
(203, 1, 16, 1, 0, 0, 0, '2018-07-02 11:24:21'),
(204, 1, 26, 1, 0, 0, 0, '2018-07-02 11:32:05'),
(206, 1, 29, 1, 0, 0, 0, '2018-07-02 11:43:54'),
(207, 1, 30, 1, 0, 0, 0, '2018-07-02 11:43:54'),
(208, 1, 31, 1, 1, 1, 1, '2019-11-30 01:32:51'),
(215, 1, 50, 1, 0, 0, 0, '2018-07-02 12:04:53'),
(216, 1, 51, 1, 0, 0, 0, '2018-07-02 12:04:53'),
(222, 1, 1, 1, 1, 1, 1, '2019-11-27 22:55:06'),
(227, 1, 91, 1, 0, 0, 0, '2018-07-03 01:49:27'),
(230, 10, 53, 0, 1, 0, 0, '2018-07-03 03:52:55'),
(231, 10, 54, 0, 0, 1, 0, '2018-07-03 03:52:55'),
(232, 10, 55, 1, 1, 1, 1, '2018-07-03 03:58:42'),
(233, 10, 56, 0, 0, 1, 0, '2018-07-03 03:52:55'),
(235, 10, 58, 0, 0, 1, 0, '2018-07-03 03:52:55'),
(236, 10, 59, 0, 0, 1, 0, '2018-07-03 03:52:55'),
(239, 10, 1, 1, 1, 1, 1, '2018-07-03 04:16:43'),
(241, 10, 3, 1, 0, 0, 0, '2018-07-03 04:23:56'),
(242, 10, 2, 1, 0, 0, 0, '2018-07-03 04:24:39'),
(243, 10, 4, 1, 0, 1, 1, '2018-07-03 04:31:24'),
(245, 10, 107, 1, 0, 0, 0, '2018-07-03 04:36:41'),
(246, 10, 5, 1, 1, 0, 1, '2018-07-03 04:38:18'),
(247, 10, 7, 1, 1, 1, 1, '2018-07-03 04:42:07'),
(248, 10, 68, 1, 0, 0, 0, '2018-07-03 04:42:53'),
(249, 10, 69, 1, 1, 1, 1, '2018-07-03 04:49:46'),
(250, 10, 70, 1, 0, 0, 1, '2018-07-03 04:52:40'),
(251, 10, 72, 1, 0, 0, 0, '2018-07-03 04:56:46'),
(252, 10, 73, 1, 0, 0, 0, '2018-07-03 04:56:46'),
(253, 10, 74, 1, 0, 0, 0, '2018-07-03 04:58:34'),
(254, 10, 75, 1, 0, 0, 0, '2018-07-03 04:58:34'),
(255, 10, 9, 1, 1, 1, 1, '2018-07-03 05:02:22'),
(256, 10, 10, 1, 1, 1, 1, '2018-07-03 05:03:09'),
(257, 10, 11, 1, 0, 0, 0, '2018-07-03 05:03:09'),
(258, 10, 12, 1, 1, 1, 1, '2018-07-03 05:08:40'),
(259, 10, 13, 1, 1, 1, 1, '2018-07-03 05:08:40'),
(260, 10, 14, 1, 0, 0, 0, '2018-07-03 05:08:53'),
(261, 10, 15, 1, 1, 1, 0, '2018-07-03 05:11:28'),
(262, 10, 16, 1, 0, 0, 0, '2018-07-03 05:12:12'),
(263, 10, 17, 1, 1, 1, 1, '2018-07-03 05:14:30'),
(264, 10, 19, 1, 1, 1, 0, '2018-07-03 05:15:45'),
(265, 10, 20, 1, 1, 1, 1, '2018-07-03 05:18:51'),
(266, 10, 76, 1, 0, 0, 0, '2018-07-03 05:21:21'),
(267, 10, 21, 1, 1, 1, 0, '2018-07-03 05:22:45'),
(268, 10, 22, 1, 1, 1, 1, '2018-07-03 05:25:00'),
(269, 10, 23, 1, 1, 1, 1, '2018-07-03 05:27:16'),
(270, 10, 24, 1, 1, 1, 1, '2018-07-03 05:27:49'),
(271, 10, 25, 1, 1, 1, 1, '2018-07-03 05:27:49'),
(272, 10, 26, 1, 0, 0, 0, '2018-07-03 05:28:25'),
(273, 10, 77, 1, 1, 1, 1, '2018-07-03 05:29:57'),
(274, 10, 27, 1, 1, 0, 1, '2018-07-03 05:30:36'),
(275, 10, 28, 1, 1, 1, 1, '2018-07-03 05:33:09'),
(276, 10, 29, 1, 0, 0, 0, '2018-07-03 05:34:03'),
(277, 10, 30, 1, 0, 0, 0, '2018-07-03 05:34:03'),
(278, 10, 31, 1, 0, 0, 0, '2018-07-03 05:34:03'),
(279, 10, 32, 1, 1, 1, 1, '2018-07-03 05:35:42'),
(280, 10, 33, 1, 1, 1, 1, '2018-07-03 05:36:32'),
(281, 10, 34, 1, 1, 1, 1, '2018-07-03 05:38:03'),
(282, 10, 35, 1, 1, 1, 1, '2018-07-03 05:38:41'),
(283, 10, 104, 1, 1, 1, 1, '2018-07-03 05:40:43'),
(284, 10, 37, 1, 1, 1, 1, '2018-07-03 05:42:42'),
(285, 10, 38, 1, 1, 1, 1, '2018-07-03 05:43:56'),
(286, 10, 39, 1, 1, 1, 1, '2018-07-03 05:45:39'),
(287, 10, 40, 1, 1, 1, 1, '2018-07-03 05:47:22'),
(288, 10, 41, 1, 1, 1, 1, '2018-07-03 05:48:54'),
(289, 10, 42, 1, 1, 1, 1, '2018-07-03 05:49:31'),
(290, 10, 43, 1, 1, 1, 1, '2018-07-03 05:51:15'),
(291, 10, 44, 1, 0, 0, 0, '2018-07-03 05:52:06'),
(292, 10, 46, 1, 0, 0, 0, '2018-07-03 05:52:06'),
(293, 10, 50, 1, 0, 0, 0, '2018-07-03 05:52:59'),
(294, 10, 51, 1, 0, 0, 0, '2018-07-03 05:52:59'),
(295, 10, 60, 0, 0, 1, 0, '2018-07-03 05:55:05'),
(296, 10, 61, 1, 1, 1, 1, '2018-07-03 05:56:52'),
(297, 10, 62, 1, 1, 1, 1, '2018-07-03 05:58:53'),
(298, 10, 63, 1, 1, 0, 0, '2018-07-03 05:59:37'),
(299, 10, 64, 1, 1, 1, 1, '2018-07-03 06:00:27'),
(300, 10, 65, 1, 1, 1, 1, '2018-07-03 06:02:51'),
(301, 10, 66, 1, 1, 1, 1, '2018-07-03 06:02:51'),
(302, 10, 67, 1, 0, 0, 0, '2018-07-03 06:02:51'),
(303, 10, 78, 1, 1, 1, 1, '2018-07-04 04:10:04'),
(307, 1, 126, 1, 0, 0, 0, '2018-07-03 09:26:13'),
(310, 1, 119, 1, 0, 0, 0, '2018-07-03 10:15:00'),
(311, 1, 120, 1, 0, 0, 0, '2018-07-03 10:15:00'),
(315, 1, 123, 1, 0, 0, 0, '2018-07-03 10:27:03'),
(317, 1, 124, 1, 0, 0, 0, '2018-07-03 10:29:14'),
(320, 1, 47, 1, 0, 0, 0, '2018-07-03 11:01:12'),
(321, 1, 121, 1, 0, 0, 0, '2018-07-03 11:01:12'),
(369, 1, 102, 1, 1, 1, 1, '2019-12-02 05:02:15'),
(372, 10, 79, 1, 1, 0, 0, '2018-07-04 04:10:04'),
(373, 10, 80, 1, 1, 1, 1, '2018-07-04 04:23:09'),
(374, 10, 81, 1, 1, 1, 1, '2018-07-04 04:23:50'),
(375, 10, 82, 1, 1, 1, 1, '2018-07-04 04:26:54'),
(376, 10, 83, 1, 1, 1, 1, '2018-07-04 04:27:55'),
(377, 10, 84, 1, 1, 1, 1, '2018-07-04 04:30:26'),
(378, 10, 85, 1, 1, 1, 1, '2018-07-04 04:32:54'),
(379, 10, 86, 1, 1, 1, 1, '2018-07-04 04:46:18'),
(380, 10, 87, 1, 0, 0, 0, '2018-07-04 04:49:49'),
(381, 10, 88, 1, 1, 1, 0, '2018-07-04 04:51:20'),
(382, 10, 89, 1, 0, 0, 0, '2018-07-04 04:51:51'),
(383, 10, 90, 1, 1, 0, 1, '2018-07-04 04:55:01'),
(384, 10, 91, 1, 0, 0, 0, '2018-07-04 04:55:01'),
(385, 10, 108, 1, 1, 1, 1, '2018-07-04 04:57:46'),
(386, 10, 109, 1, 1, 1, 1, '2018-07-04 04:58:26'),
(387, 10, 110, 1, 1, 1, 1, '2018-07-04 05:02:43'),
(388, 10, 111, 1, 1, 1, 1, '2018-07-04 05:03:21'),
(389, 10, 112, 1, 1, 1, 1, '2018-07-04 05:05:06'),
(390, 10, 127, 1, 0, 0, 0, '2018-07-04 05:05:06'),
(391, 10, 93, 1, 1, 1, 1, '2018-07-04 05:07:14'),
(392, 10, 94, 1, 1, 0, 0, '2018-07-04 05:08:02'),
(394, 10, 95, 1, 0, 0, 0, '2018-07-04 05:08:44'),
(395, 10, 102, 1, 1, 1, 1, '2018-07-04 05:11:02'),
(396, 10, 106, 1, 0, 0, 0, '2018-07-04 05:11:39'),
(397, 10, 113, 1, 0, 0, 0, '2018-07-04 05:12:37'),
(398, 10, 114, 1, 0, 0, 0, '2018-07-04 05:12:37'),
(399, 10, 115, 1, 0, 0, 0, '2018-07-04 05:18:45'),
(400, 10, 116, 1, 0, 0, 0, '2018-07-04 05:18:45'),
(401, 10, 117, 1, 0, 0, 0, '2018-07-04 05:19:43'),
(402, 10, 118, 1, 0, 0, 0, '2018-07-04 05:19:43'),
(434, 1, 125, 1, 0, 0, 0, '2018-07-06 09:59:26'),
(435, 1, 96, 1, 1, 1, 1, '2018-07-09 01:03:54'),
(445, 1, 48, 1, 0, 0, 0, '2018-07-06 11:49:35'),
(446, 1, 49, 1, 0, 0, 0, '2018-07-06 11:49:35'),
(461, 1, 97, 1, 0, 0, 0, '2018-07-09 01:00:16'),
(462, 1, 95, 1, 0, 0, 0, '2018-07-09 01:18:41'),
(464, 1, 86, 1, 1, 1, 1, '2019-11-28 06:39:19'),
(474, 1, 130, 1, 1, 0, 1, '2018-07-09 10:56:36'),
(476, 1, 131, 1, 0, 0, 0, '2018-07-09 04:53:32'),
(479, 2, 47, 1, 0, 0, 0, '2018-07-10 06:47:12'),
(480, 2, 105, 1, 0, 0, 0, '2018-07-10 06:47:12'),
(482, 2, 119, 1, 0, 0, 0, '2018-07-10 06:47:12'),
(483, 2, 120, 1, 0, 0, 0, '2018-07-10 06:47:12'),
(486, 2, 16, 1, 0, 0, 0, '2018-07-10 06:47:12'),
(493, 2, 22, 1, 0, 0, 0, '2018-07-12 00:20:27'),
(504, 2, 95, 1, 0, 0, 0, '2018-07-10 06:47:12'),
(513, 3, 72, 1, 0, 0, 0, '2018-07-10 07:07:30'),
(517, 3, 75, 1, 0, 0, 0, '2018-07-10 07:10:38'),
(527, 3, 89, 1, 0, 0, 0, '2018-07-10 07:18:44'),
(529, 3, 91, 1, 0, 0, 0, '2018-07-10 07:18:44'),
(549, 3, 124, 1, 0, 0, 0, '2018-07-10 07:22:17'),
(594, 3, 125, 1, 0, 0, 0, '2018-07-10 07:58:12'),
(595, 3, 48, 1, 0, 0, 0, '2018-07-10 07:58:12'),
(596, 3, 49, 1, 0, 0, 0, '2018-07-10 07:58:12'),
(617, 2, 17, 1, 1, 1, 1, '2018-07-11 06:55:14'),
(618, 2, 19, 1, 1, 1, 0, '2018-07-11 06:55:14'),
(620, 2, 76, 1, 1, 1, 0, '2018-07-11 06:55:14'),
(622, 2, 121, 1, 0, 0, 0, '2018-07-11 06:56:27'),
(625, 1, 28, 1, 1, 1, 1, '2019-11-29 06:19:18'),
(628, 6, 22, 1, 0, 0, 0, '2018-07-12 00:23:47'),
(634, 4, 102, 1, 1, 1, 1, '2019-12-01 01:03:00'),
(662, 1, 138, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(663, 1, 139, 1, 1, 1, 1, '2019-11-01 02:28:24'),
(664, 1, 140, 1, 1, 1, 1, '2019-11-01 02:28:24'),
(669, 1, 145, 1, 0, 0, 0, '2019-11-26 04:51:15'),
(677, 1, 153, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(690, 1, 166, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(691, 1, 167, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(692, 1, 168, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(693, 1, 170, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(694, 1, 172, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(695, 1, 173, 1, 0, 0, 0, '2019-11-01 02:28:24'),
(720, 1, 216, 1, 0, 0, 0, '2019-11-26 05:24:12'),
(728, 1, 185, 1, 1, 1, 1, '2019-11-28 02:50:33'),
(729, 1, 186, 1, 1, 1, 1, '2019-11-28 02:49:07'),
(730, 1, 214, 1, 0, 1, 0, '2019-11-28 01:47:53'),
(732, 1, 198, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(733, 1, 199, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(734, 1, 200, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(735, 1, 201, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(736, 1, 202, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(737, 1, 203, 1, 0, 0, 0, '2019-11-26 05:24:30'),
(739, 1, 218, 1, 0, 0, 0, '2019-11-27 06:36:31'),
(743, 1, 218, 1, 0, 0, 0, '2019-11-27 06:36:32'),
(747, 1, 2, 1, 0, 0, 0, '2019-11-27 22:56:08'),
(748, 1, 3, 1, 1, 1, 1, '2019-11-27 22:56:32'),
(749, 1, 4, 1, 1, 1, 1, '2019-11-27 22:56:48'),
(751, 1, 128, 0, 1, 0, 1, '2019-11-27 22:57:01'),
(752, 1, 132, 1, 0, 1, 1, '2019-11-27 23:02:23'),
(754, 1, 134, 1, 1, 1, 1, '2019-11-27 23:18:21'),
(755, 1, 5, 1, 1, 0, 1, '2019-11-27 23:35:07'),
(756, 1, 6, 1, 0, 0, 0, '2019-11-27 23:35:25'),
(757, 1, 7, 1, 1, 1, 1, '2019-11-27 23:36:35'),
(758, 1, 8, 1, 1, 1, 1, '2019-11-27 23:37:27'),
(760, 1, 68, 1, 0, 0, 0, '2019-11-27 23:38:06'),
(761, 1, 69, 1, 1, 1, 1, '2019-11-27 23:39:06'),
(762, 1, 70, 1, 1, 1, 1, '2019-11-27 23:39:41'),
(763, 1, 71, 1, 0, 0, 0, '2019-11-27 23:39:59'),
(764, 1, 72, 1, 0, 0, 0, '2019-11-27 23:40:11'),
(765, 1, 73, 1, 0, 0, 0, '2019-11-27 23:43:15'),
(766, 1, 74, 1, 0, 0, 0, '2019-11-27 23:43:55'),
(768, 1, 11, 1, 0, 0, 0, '2019-11-27 23:45:46'),
(769, 1, 122, 1, 0, 0, 0, '2019-11-27 23:52:43'),
(771, 1, 136, 1, 0, 0, 0, '2019-11-27 23:55:36'),
(772, 1, 20, 1, 1, 1, 1, '2019-11-28 04:06:44'),
(773, 1, 137, 1, 1, 1, 1, '2019-11-28 00:46:14'),
(774, 1, 141, 1, 1, 1, 1, '2019-11-28 00:59:42'),
(775, 1, 142, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(776, 1, 143, 1, 1, 1, 1, '2019-11-28 00:59:42'),
(777, 1, 144, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(778, 1, 187, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(779, 1, 196, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(781, 1, 207, 1, 0, 0, 0, '2019-11-27 23:56:12'),
(782, 1, 208, 1, 0, 1, 0, '2019-11-28 00:10:22'),
(783, 1, 210, 1, 0, 1, 0, '2019-11-28 00:34:40'),
(784, 1, 211, 1, 0, 1, 0, '2019-11-28 00:38:23'),
(785, 1, 212, 1, 0, 1, 0, '2019-11-28 00:42:15'),
(786, 1, 205, 1, 1, 1, 1, '2019-11-28 00:42:15'),
(787, 1, 222, 1, 0, 1, 0, '2019-11-28 01:36:36'),
(788, 1, 77, 1, 1, 1, 1, '2019-11-28 06:22:10'),
(789, 1, 188, 1, 1, 1, 1, '2019-11-28 06:26:16'),
(790, 1, 23, 1, 1, 1, 1, '2019-11-28 06:34:20'),
(791, 1, 25, 1, 1, 1, 1, '2019-11-28 06:36:20'),
(792, 1, 127, 1, 0, 0, 0, '2019-11-28 06:41:25'),
(794, 1, 88, 1, 1, 1, 0, '2019-11-28 06:43:04'),
(795, 1, 90, 1, 1, 0, 1, '2019-11-28 06:46:22'),
(796, 1, 108, 1, 0, 1, 1, '2021-01-23 07:09:32'),
(797, 1, 109, 1, 1, 0, 0, '2019-11-28 23:38:11'),
(798, 1, 110, 1, 1, 1, 1, '2019-11-28 23:49:29'),
(799, 1, 111, 1, 1, 1, 1, '2019-11-28 23:49:57'),
(800, 1, 112, 1, 1, 1, 1, '2019-11-28 23:49:57'),
(801, 1, 129, 0, 1, 0, 1, '2019-11-28 23:49:57'),
(802, 1, 189, 1, 0, 1, 1, '2019-11-28 23:59:22'),
(806, 2, 133, 1, 0, 1, 0, '2019-11-29 00:34:35'),
(810, 2, 1, 1, 1, 1, 1, '2019-11-30 02:54:16'),
(813, 1, 133, 1, 0, 1, 0, '2019-11-29 00:39:57'),
(817, 1, 93, 1, 1, 1, 1, '2019-11-29 00:56:14'),
(825, 1, 87, 1, 0, 0, 0, '2019-11-29 00:56:14'),
(829, 1, 94, 1, 1, 0, 0, '2019-11-29 00:57:57'),
(836, 1, 146, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(837, 1, 147, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(838, 1, 148, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(839, 1, 149, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(840, 1, 150, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(841, 1, 151, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(842, 1, 152, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(843, 1, 154, 1, 0, 0, 0, '2019-11-29 01:13:28'),
(862, 1, 155, 1, 0, 0, 0, '2019-11-29 02:07:30'),
(863, 1, 156, 1, 0, 0, 0, '2019-11-29 02:07:52'),
(864, 1, 157, 1, 0, 0, 0, '2019-11-29 02:08:05'),
(874, 1, 158, 1, 0, 0, 0, '2019-11-29 02:14:03'),
(875, 1, 159, 1, 0, 0, 0, '2019-11-29 02:14:31'),
(876, 1, 160, 1, 0, 0, 0, '2019-11-29 02:14:44'),
(878, 1, 162, 1, 0, 0, 0, '2019-11-29 02:15:58'),
(879, 1, 163, 1, 0, 0, 0, '2019-11-29 02:16:19'),
(882, 1, 164, 1, 0, 0, 0, '2019-11-29 02:25:17'),
(884, 1, 165, 1, 0, 0, 0, '2019-11-29 02:25:30'),
(886, 1, 197, 1, 0, 0, 0, '2019-11-29 02:25:48'),
(887, 1, 219, 1, 0, 0, 0, '2019-11-29 02:26:05'),
(889, 1, 220, 1, 0, 0, 0, '2019-11-29 02:26:22'),
(932, 1, 204, 1, 0, 0, 0, '2019-11-29 03:43:27'),
(933, 1, 221, 1, 0, 0, 0, '2019-11-29 03:45:04'),
(934, 1, 178, 1, 0, 0, 0, '2019-11-29 03:45:16'),
(935, 1, 179, 1, 0, 0, 0, '2019-11-29 03:45:33'),
(936, 1, 161, 1, 0, 0, 0, '2019-11-29 03:45:48'),
(937, 1, 180, 1, 0, 0, 0, '2019-11-29 03:45:48'),
(938, 1, 181, 1, 0, 0, 0, '2019-11-29 03:49:33'),
(939, 1, 182, 1, 0, 0, 0, '2019-11-29 03:49:45'),
(940, 1, 183, 1, 0, 0, 0, '2019-11-29 03:49:56'),
(941, 1, 174, 1, 0, 0, 0, '2019-11-29 03:50:53'),
(943, 1, 176, 1, 0, 0, 0, '2019-11-29 03:52:10'),
(944, 1, 177, 1, 0, 0, 0, '2019-11-29 03:52:22'),
(945, 1, 53, 0, 1, 0, 1, '2021-01-23 07:09:32'),
(946, 1, 215, 1, 0, 0, 0, '2019-11-29 04:01:37'),
(947, 1, 213, 1, 0, 0, 0, '2019-11-29 04:07:45'),
(974, 1, 224, 1, 0, 0, 0, '2019-11-29 04:32:52'),
(979, 1, 225, 1, 0, 0, 0, '2019-11-29 04:45:30'),
(982, 2, 225, 1, 0, 0, 0, '2019-11-29 04:47:19'),
(1026, 1, 135, 1, 0, 1, 0, '2019-11-29 06:02:12'),
(1031, 1, 228, 1, 0, 0, 0, '2019-11-29 06:21:16'),
(1083, 1, 175, 1, 0, 0, 0, '2019-11-30 00:37:24'),
(1086, 1, 43, 1, 1, 1, 1, '2019-11-30 00:49:39'),
(1087, 1, 44, 1, 0, 0, 0, '2019-11-30 00:49:39'),
(1088, 1, 46, 1, 0, 0, 0, '2019-11-30 00:49:39'),
(1089, 1, 217, 1, 0, 0, 0, '2019-11-30 00:49:39'),
(1090, 1, 98, 1, 1, 1, 1, '2019-11-30 01:32:51'),
(1091, 1, 99, 1, 0, 0, 0, '2019-11-30 01:30:18'),
(1092, 1, 223, 1, 0, 0, 0, '2019-11-30 01:32:51'),
(1103, 2, 205, 1, 1, 1, 1, '2019-11-30 01:56:04'),
(1105, 2, 23, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1106, 2, 24, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1107, 2, 25, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1108, 2, 77, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1119, 2, 117, 1, 0, 0, 0, '2019-11-30 01:56:04'),
(1123, 3, 8, 1, 1, 1, 1, '2019-11-30 06:46:18'),
(1125, 3, 69, 1, 1, 1, 1, '2019-11-30 07:00:49'),
(1126, 3, 70, 1, 1, 1, 1, '2019-11-30 07:04:46'),
(1130, 3, 9, 1, 1, 1, 1, '2019-11-30 07:14:54'),
(1131, 3, 10, 1, 1, 1, 1, '2019-11-30 07:16:02'),
(1134, 3, 35, 1, 1, 1, 1, '2019-11-30 07:25:04'),
(1135, 3, 104, 1, 1, 1, 1, '2019-11-30 07:25:53'),
(1140, 3, 41, 1, 1, 1, 1, '2019-11-30 07:37:13'),
(1141, 3, 42, 1, 1, 1, 1, '2019-11-30 07:37:46'),
(1153, 3, 90, 1, 1, 0, 1, '2019-11-30 02:23:13'),
(1155, 3, 109, 1, 1, 0, 0, '2019-11-30 02:23:13'),
(1159, 3, 127, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1162, 3, 106, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1163, 3, 113, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1164, 3, 114, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1165, 3, 115, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1166, 3, 116, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1167, 3, 117, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1168, 3, 118, 1, 0, 0, 0, '2019-11-30 02:23:13'),
(1171, 2, 142, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1172, 2, 144, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1179, 2, 212, 1, 0, 1, 0, '2019-11-30 02:36:17'),
(1183, 2, 148, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1184, 2, 149, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1185, 2, 150, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1186, 2, 151, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1187, 2, 152, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1188, 2, 153, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1189, 2, 154, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1190, 2, 197, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1191, 2, 198, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1192, 2, 199, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1193, 2, 200, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1194, 2, 201, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1195, 2, 202, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1196, 2, 203, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1197, 2, 219, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1198, 2, 223, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1199, 2, 213, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1201, 2, 230, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1204, 2, 214, 1, 0, 1, 0, '2019-11-30 02:36:17'),
(1206, 2, 224, 1, 0, 0, 0, '2019-11-30 02:36:17'),
(1208, 2, 2, 1, 0, 0, 0, '2019-11-30 02:55:45'),
(1210, 2, 143, 1, 1, 1, 1, '2019-11-30 02:57:28'),
(1211, 2, 145, 1, 0, 0, 0, '2019-11-30 02:57:28'),
(1214, 2, 3, 1, 1, 1, 1, '2019-11-30 03:03:18'),
(1216, 2, 4, 1, 1, 1, 1, '2019-11-30 03:32:56'),
(1218, 2, 128, 0, 1, 0, 1, '2019-11-30 03:37:44'),
(1220, 3, 135, 1, 0, 1, 0, '2019-11-30 07:08:56'),
(1231, 3, 190, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1232, 3, 192, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1233, 3, 226, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1234, 3, 227, 1, 0, 0, 0, '2019-11-30 03:44:02'),
(1236, 2, 15, 1, 1, 1, 0, '2019-11-30 03:54:25'),
(1239, 2, 122, 1, 0, 0, 0, '2019-11-30 03:57:48'),
(1240, 2, 136, 1, 0, 0, 0, '2019-11-30 03:57:48'),
(1245, 2, 20, 1, 1, 1, 1, '2019-11-30 04:01:28'),
(1246, 2, 137, 1, 1, 1, 1, '2019-11-30 04:02:40'),
(1248, 2, 141, 1, 1, 1, 1, '2019-11-30 04:04:04'),
(1250, 2, 187, 1, 0, 0, 0, '2019-11-30 04:11:19'),
(1252, 2, 207, 1, 0, 0, 0, '2019-11-30 04:21:21'),
(1253, 2, 208, 1, 0, 1, 0, '2019-11-30 04:22:00'),
(1255, 2, 210, 1, 0, 1, 0, '2019-11-30 04:22:58'),
(1256, 2, 211, 1, 0, 1, 0, '2019-11-30 04:24:03'),
(1257, 2, 21, 1, 1, 0, 0, '2022-07-27 11:47:39'),
(1259, 2, 188, 1, 0, 0, 0, '2019-11-30 04:34:35'),
(1260, 2, 27, 1, 0, 0, 0, '2019-11-30 04:36:13'),
(1262, 2, 43, 1, 1, 1, 1, '2019-11-30 04:39:42'),
(1263, 2, 44, 1, 0, 0, 0, '2019-11-30 04:41:43'),
(1264, 2, 46, 1, 0, 0, 0, '2019-11-30 04:41:43'),
(1265, 2, 217, 1, 0, 0, 0, '2019-11-30 04:41:43'),
(1266, 2, 146, 1, 0, 0, 0, '2019-11-30 04:46:35'),
(1267, 2, 147, 1, 0, 0, 0, '2019-11-30 04:47:37'),
(1269, 2, 164, 1, 0, 0, 0, '2019-11-30 04:51:04'),
(1271, 2, 109, 1, 1, 0, 0, '2019-11-30 05:03:37'),
(1272, 2, 93, 1, 1, 1, 1, '2019-11-30 05:07:25'),
(1273, 2, 94, 1, 1, 0, 0, '2019-11-30 05:07:42'),
(1275, 2, 102, 1, 1, 1, 1, '2019-11-30 05:11:22'),
(1277, 2, 196, 1, 0, 0, 0, '2019-11-30 05:15:01'),
(1278, 2, 195, 1, 0, 0, 0, '2019-11-30 05:19:08'),
(1279, 2, 185, 1, 1, 1, 1, '2019-11-30 05:21:44'),
(1280, 2, 186, 1, 1, 1, 1, '2019-11-30 05:22:43'),
(1281, 2, 222, 1, 0, 1, 0, '2019-11-30 05:24:30'),
(1283, 3, 5, 1, 1, 0, 1, '2019-11-30 06:43:04'),
(1284, 3, 6, 1, 0, 0, 0, '2019-11-30 06:43:29'),
(1285, 3, 7, 1, 1, 1, 1, '2019-11-30 06:44:39'),
(1286, 3, 68, 1, 0, 0, 0, '2019-11-30 06:46:58'),
(1287, 3, 71, 1, 0, 0, 0, '2019-11-30 07:05:41'),
(1288, 3, 73, 1, 0, 0, 0, '2019-11-30 07:05:59'),
(1289, 3, 74, 1, 0, 0, 0, '2019-11-30 07:06:08'),
(1290, 3, 11, 1, 0, 0, 0, '2019-11-30 07:16:37'),
(1291, 3, 12, 1, 1, 1, 1, '2019-11-30 07:19:29'),
(1292, 3, 13, 1, 1, 1, 1, '2019-11-30 07:22:27'),
(1294, 3, 14, 1, 0, 0, 0, '2019-11-30 07:22:55'),
(1295, 3, 31, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1297, 3, 37, 1, 1, 1, 1, '2019-11-30 07:28:09'),
(1298, 3, 38, 1, 1, 1, 1, '2019-11-30 07:29:02'),
(1299, 3, 39, 1, 1, 1, 1, '2019-11-30 07:30:07'),
(1300, 3, 40, 1, 1, 1, 1, '2019-11-30 07:32:43'),
(1304, 3, 155, 1, 0, 0, 0, '2019-11-30 07:44:32'),
(1305, 3, 156, 1, 0, 0, 0, '2019-11-30 07:45:18'),
(1306, 3, 157, 1, 0, 0, 0, '2019-11-30 07:45:42'),
(1307, 3, 158, 1, 0, 0, 0, '2019-11-30 07:46:07'),
(1308, 3, 159, 1, 0, 0, 0, '2019-11-30 07:46:21'),
(1309, 3, 160, 1, 0, 0, 0, '2019-11-30 07:46:33'),
(1313, 3, 161, 1, 0, 0, 0, '2019-11-30 07:48:26'),
(1314, 3, 162, 1, 0, 0, 0, '2019-11-30 07:48:48'),
(1315, 3, 163, 1, 0, 0, 0, '2019-11-30 07:48:48'),
(1316, 3, 164, 1, 0, 0, 0, '2019-11-30 07:49:47'),
(1317, 3, 165, 1, 0, 0, 0, '2019-11-30 07:49:47'),
(1318, 3, 174, 1, 0, 0, 0, '2019-11-30 07:49:47'),
(1320, 3, 181, 1, 0, 0, 0, '2019-11-30 07:50:08'),
(1322, 4, 28, 1, 1, 1, 1, '2019-12-01 00:52:39'),
(1324, 4, 29, 1, 0, 0, 0, '2019-12-01 00:53:46'),
(1325, 4, 30, 1, 0, 0, 0, '2019-12-01 00:53:59'),
(1326, 4, 123, 1, 0, 0, 0, '2019-12-01 00:54:26'),
(1327, 4, 228, 1, 0, 0, 0, '2019-12-01 00:54:39'),
(1328, 4, 43, 1, 1, 1, 1, '2019-12-01 00:58:05'),
(1332, 4, 44, 1, 0, 0, 0, '2019-12-01 00:59:16'),
(1333, 4, 46, 1, 0, 0, 0, '2019-12-01 00:59:16'),
(1334, 4, 217, 1, 0, 0, 0, '2019-12-01 00:59:16'),
(1335, 4, 178, 1, 0, 0, 0, '2019-12-01 00:59:59'),
(1336, 4, 179, 1, 0, 0, 0, '2019-12-01 01:00:11'),
(1337, 4, 180, 1, 0, 0, 0, '2019-12-01 01:00:29'),
(1338, 4, 221, 1, 0, 0, 0, '2019-12-01 01:00:46'),
(1339, 4, 86, 1, 0, 0, 0, '2019-12-01 01:01:02'),
(1341, 4, 106, 1, 0, 0, 0, '2019-12-01 01:05:21'),
(1342, 1, 107, 1, 0, 0, 0, '2019-12-01 01:06:44'),
(1343, 4, 117, 1, 0, 0, 0, '2019-12-01 01:10:20'),
(1344, 4, 194, 1, 0, 0, 0, '2019-12-01 01:11:35'),
(1348, 4, 230, 1, 0, 0, 0, '2019-12-01 01:19:15'),
(1350, 6, 1, 1, 1, 1, 0, '2022-09-02 13:21:55'),
(1366, 6, 117, 1, 0, 0, 0, '2019-12-01 01:53:08'),
(1394, 1, 106, 1, 0, 0, 0, '2019-12-02 05:20:33'),
(1395, 1, 113, 1, 0, 0, 0, '2019-12-02 05:20:59'),
(1396, 1, 114, 1, 0, 0, 0, '2019-12-02 05:21:34'),
(1397, 1, 115, 1, 0, 0, 0, '2019-12-02 05:21:34'),
(1398, 1, 116, 1, 0, 0, 0, '2019-12-02 05:21:54'),
(1399, 1, 117, 1, 0, 0, 0, '2019-12-02 05:22:04'),
(1400, 1, 118, 1, 0, 0, 0, '2019-12-02 05:22:20'),
(1402, 1, 191, 1, 0, 0, 0, '2019-12-02 05:23:34'),
(1403, 1, 192, 1, 0, 0, 0, '2019-12-02 05:23:47'),
(1404, 1, 193, 1, 0, 0, 0, '2019-12-02 05:23:58'),
(1405, 1, 194, 1, 0, 0, 0, '2019-12-02 05:24:11'),
(1406, 1, 195, 1, 0, 0, 0, '2019-12-02 05:24:20'),
(1408, 1, 227, 1, 0, 0, 0, '2019-12-02 05:25:47'),
(1410, 1, 226, 1, 0, 0, 0, '2019-12-02 05:31:41'),
(1411, 1, 229, 1, 0, 0, 0, '2019-12-02 05:32:57'),
(1412, 1, 230, 1, 0, 0, 0, '2019-12-02 05:32:57'),
(1413, 1, 190, 1, 0, 0, 0, '2019-12-02 05:43:41'),
(1414, 2, 174, 1, 0, 0, 0, '2019-12-02 05:54:37'),
(1415, 2, 175, 1, 0, 0, 0, '2019-12-02 05:54:37'),
(1418, 2, 232, 1, 0, 1, 1, '2019-12-02 06:11:27'),
(1419, 2, 231, 1, 0, 0, 0, '2019-12-02 06:12:28'),
(1420, 1, 231, 1, 1, 1, 1, '2021-01-23 07:09:32'),
(1421, 1, 232, 1, 0, 1, 1, '2019-12-02 06:19:32'),
(1422, 3, 32, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1423, 3, 33, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1424, 3, 34, 1, 1, 1, 1, '2019-12-02 06:30:37'),
(1425, 3, 182, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1426, 3, 183, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1428, 3, 229, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1429, 3, 230, 1, 0, 0, 0, '2019-12-02 06:30:37'),
(1430, 4, 213, 1, 0, 0, 0, '2019-12-02 06:32:14'),
(1432, 4, 224, 1, 0, 0, 0, '2019-12-02 06:32:14'),
(1433, 4, 195, 1, 0, 0, 0, '2019-12-03 04:57:53'),
(1434, 4, 229, 1, 0, 0, 0, '2019-12-03 04:58:19'),
(1437, 6, 191, 1, 0, 0, 0, '2019-12-03 05:10:11'),
(1440, 2, 106, 1, 0, 0, 0, '2020-01-25 04:21:36'),
(1441, 2, 107, 1, 0, 0, 0, '2020-02-12 02:10:13'),
(1442, 2, 134, 1, 1, 1, 1, '2020-02-12 02:12:36'),
(1443, 1, 233, 1, 0, 0, 0, '2020-02-12 02:21:57'),
(1444, 2, 86, 1, 0, 0, 0, '2020-02-12 02:22:33'),
(1446, 1, 234, 1, 1, 1, 1, '2020-06-01 21:51:09'),
(1447, 1, 235, 1, 1, 1, 1, '2020-05-29 23:17:01'),
(1448, 1, 236, 1, 1, 1, 0, '2020-05-29 23:17:52'),
(1449, 1, 237, 1, 0, 1, 0, '2020-05-29 23:18:18'),
(1450, 1, 238, 1, 1, 1, 1, '2020-05-29 23:19:52'),
(1451, 1, 239, 1, 1, 1, 1, '2020-05-29 23:22:10'),
(1452, 2, 236, 1, 1, 1, 0, '2020-05-29 23:40:33'),
(1453, 2, 237, 1, 0, 1, 0, '2020-05-29 23:40:33'),
(1454, 2, 238, 1, 1, 1, 1, '2020-05-29 23:40:33'),
(1455, 2, 239, 1, 1, 1, 1, '2020-05-29 23:40:33'),
(1456, 2, 240, 1, 0, 0, 0, '2020-05-28 20:51:18'),
(1457, 2, 241, 1, 0, 0, 0, '2020-05-28 20:51:18'),
(1458, 1, 240, 1, 0, 0, 0, '2020-06-07 18:30:42'),
(1459, 1, 241, 1, 0, 0, 0, '2020-06-07 18:30:42'),
(1460, 1, 242, 1, 0, 0, 0, '2020-06-07 18:30:42'),
(1461, 2, 242, 1, 0, 0, 0, '2020-06-11 22:45:24'),
(1462, 3, 242, 1, 0, 0, 0, '2020-06-14 22:46:54'),
(1464, 1, 243, 1, 0, 0, 0, '2020-09-12 06:05:45'),
(1465, 1, 109, 1, 1, 0, 0, '2020-09-21 06:33:50'),
(1466, 1, 108, 1, 1, 1, 1, '2020-09-21 06:50:36'),
(1467, 1, 244, 1, 0, 0, 0, '2020-09-21 06:59:54'),
(1468, 1, 245, 1, 0, 0, 0, '2020-09-21 06:59:54'),
(1469, 1, 246, 1, 0, 0, 0, '2020-09-21 06:59:54'),
(1470, 1, 247, 1, 0, 0, 0, '2021-01-07 06:12:14'),
(1472, 2, 247, 1, 0, 0, 0, '2021-01-21 12:46:40'),
(1473, 1, 248, 1, 1, 1, 1, '2021-05-19 12:52:49'),
(1474, 1, 249, 1, 0, 0, 0, '2021-05-19 12:52:49'),
(1475, 2, 248, 1, 1, 1, 1, '2021-05-28 13:11:52'),
(1480, 2, 249, 1, 0, 0, 0, '2021-05-28 13:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `school_houses`
--

CREATE TABLE `school_houses` (
  `id` int(11) NOT NULL,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT 0,
  `biometric_device` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` int(1) DEFAULT 0,
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(10) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(3) DEFAULT 0,
  `adm_auto_insert` int(1) NOT NULL DEFAULT 1,
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(10) NOT NULL DEFAULT 6,
  `adm_update_status` int(11) NOT NULL DEFAULT 0,
  `staffid_auto_insert` int(11) NOT NULL DEFAULT 1,
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT 6,
  `staffid_update_status` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(1) DEFAULT 0,
  `online_admission_payment` varchar(50) NOT NULL,
  `online_admission_amount` float NOT NULL,
  `online_admission_instruction` text NOT NULL,
  `online_admission_conditions` text NOT NULL,
  `is_blood_group` int(10) NOT NULL DEFAULT 1,
  `is_student_house` int(10) NOT NULL DEFAULT 1,
  `roll_no` int(11) NOT NULL DEFAULT 1,
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT 1,
  `cast` int(11) NOT NULL DEFAULT 1,
  `mobile_no` int(11) NOT NULL DEFAULT 1,
  `student_email` int(11) NOT NULL DEFAULT 1,
  `admission_date` int(11) NOT NULL DEFAULT 1,
  `lastname` int(11) NOT NULL,
  `middlename` int(11) NOT NULL DEFAULT 1,
  `student_photo` int(11) NOT NULL DEFAULT 1,
  `student_height` int(11) NOT NULL DEFAULT 1,
  `student_weight` int(11) NOT NULL DEFAULT 1,
  `measurement_date` int(11) NOT NULL DEFAULT 1,
  `father_name` int(11) NOT NULL DEFAULT 1,
  `father_phone` int(11) NOT NULL DEFAULT 1,
  `father_occupation` int(11) NOT NULL DEFAULT 1,
  `father_pic` int(11) NOT NULL DEFAULT 1,
  `mother_name` int(11) NOT NULL DEFAULT 1,
  `mother_phone` int(11) NOT NULL DEFAULT 1,
  `mother_occupation` int(11) NOT NULL DEFAULT 1,
  `mother_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_name` int(1) NOT NULL,
  `guardian_relation` int(11) NOT NULL DEFAULT 1,
  `guardian_phone` int(1) NOT NULL,
  `guardian_email` int(11) NOT NULL DEFAULT 1,
  `guardian_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_occupation` int(1) NOT NULL,
  `guardian_address` int(11) NOT NULL DEFAULT 1,
  `current_address` int(11) NOT NULL DEFAULT 1,
  `permanent_address` int(11) NOT NULL DEFAULT 1,
  `route_list` int(11) NOT NULL DEFAULT 1,
  `hostel_id` int(11) NOT NULL DEFAULT 1,
  `bank_account_no` int(11) NOT NULL DEFAULT 1,
  `ifsc_code` int(1) NOT NULL,
  `bank_name` int(1) NOT NULL,
  `national_identification_no` int(11) NOT NULL DEFAULT 1,
  `local_identification_no` int(11) NOT NULL DEFAULT 1,
  `rte` int(11) NOT NULL DEFAULT 1,
  `previous_school_details` int(11) NOT NULL DEFAULT 1,
  `student_note` int(11) NOT NULL DEFAULT 1,
  `upload_documents` int(11) NOT NULL DEFAULT 1,
  `staff_designation` int(11) NOT NULL DEFAULT 1,
  `staff_department` int(11) NOT NULL DEFAULT 1,
  `staff_last_name` int(11) NOT NULL DEFAULT 1,
  `staff_father_name` int(11) NOT NULL DEFAULT 1,
  `staff_mother_name` int(11) NOT NULL DEFAULT 1,
  `staff_date_of_joining` int(11) NOT NULL DEFAULT 1,
  `staff_phone` int(11) NOT NULL DEFAULT 1,
  `staff_emergency_contact` int(11) NOT NULL DEFAULT 1,
  `staff_marital_status` int(11) NOT NULL DEFAULT 1,
  `staff_photo` int(11) NOT NULL DEFAULT 1,
  `staff_current_address` int(11) NOT NULL DEFAULT 1,
  `staff_permanent_address` int(11) NOT NULL DEFAULT 1,
  `staff_qualification` int(11) NOT NULL DEFAULT 1,
  `staff_work_experience` int(11) NOT NULL DEFAULT 1,
  `staff_note` int(11) NOT NULL DEFAULT 1,
  `staff_epf_no` int(11) NOT NULL DEFAULT 1,
  `staff_basic_salary` int(11) NOT NULL DEFAULT 1,
  `staff_contract_type` int(11) NOT NULL DEFAULT 1,
  `staff_work_shift` int(11) NOT NULL DEFAULT 1,
  `staff_work_location` int(11) NOT NULL DEFAULT 1,
  `staff_leaves` int(11) NOT NULL DEFAULT 1,
  `staff_account_details` int(11) NOT NULL DEFAULT 1,
  `staff_social_media` int(11) NOT NULL DEFAULT 1,
  `staff_upload_documents` int(11) NOT NULL DEFAULT 1,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `student_profile_edit` int(1) NOT NULL DEFAULT 0,
  `start_week` varchar(10) NOT NULL,
  `my_question` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `class_teacher`, `start_month`, `attendence_type`, `image`, `admin_logo`, `admin_small_logo`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `online_admission_payment`, `online_admission_amount`, `online_admission_instruction`, `online_admission_conditions`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `middlename`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_email`, `guardian_pic`, `guardian_occupation`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `ifsc_code`, `bank_name`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `student_profile_edit`, `start_week`, `my_question`, `created_at`, `updated_at`) VALUES
(1, 'Sound Foundation Group of School & College and Academy', 0, '', 'soundfoundation@gmail.com', 'Your School Phone', 'Your School Address', 4, '[\"4\"]', 'Your School Code', 'm/d/Y', '12-hour', 'PKR', 'Rs', 'disabled', 0, 'UTC', 18, '', 'after_number', 'no', '4', 0, '1.jpeg', '1.jpeg', '1.jpeg', 'default.jpg', 60, 0, '', '', 0, 1, 0, '', '', 0, 1, 'no', 0, '', 0, '', '<p>&nbsp;Please enter your institution online admission terms & conditions here.</p>', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', '#424242', '#eeeeee', '1.jpeg', 0, 'Monday', 1, '2022-09-15 10:40:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(9, '2022-2023', 'no', '2022-09-15 14:41:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2016-17', 'no', '2017-04-20 06:42:19', '0000-00-00'),
(11, '2017-18', 'no', '2017-04-20 06:41:37', '0000-00-00'),
(13, '2018-19', 'no', '2016-08-24 19:26:44', '0000-00-00'),
(14, '2019-20', 'no', '2016-08-24 19:26:55', '0000-00-00'),
(15, '2020-21', 'no', '2016-10-01 05:28:08', '0000-00-00'),
(16, '2021-22', 'no', '2016-10-01 05:28:20', '0000-00-00'),
(18, '2022-23', 'no', '2016-10-01 05:29:02', '0000-00-00'),
(19, '2023-24', 'no', '2016-10-01 05:29:10', '0000-00-00'),
(20, '2024-25', 'no', '2016-10-01 05:29:18', '0000-00-00'),
(21, '2025-26', 'no', '2016-10-01 05:30:10', '0000-00-00'),
(22, '2026-27', 'no', '2016-10-01 05:30:18', '0000-00-00'),
(23, '2027-28', 'no', '2016-10-01 05:30:24', '0000-00-00'),
(24, '2028-29', 'no', '2016-10-01 05:30:30', '0000-00-00'),
(25, '2029-30', 'no', '2016-10-01 05:30:37', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'custom', 'lifetimesms', '', '', '', NULL, NULL, NULL, NULL, 'enabled', '2022-09-22 12:52:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`id`, `source`, `description`) VALUES
(1, 'Self', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `department` int(11) DEFAULT 0,
  `designation` int(11) DEFAULT 0,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `disable_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `disable_at`) VALUES
(1, '9000', 0, 0, 0, '', '', 'Super Admin', '', '', '', '', '', 'admin@admin.com', '2020-01-01', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$QfDXY9k4sgfQXEU9QHlDjeEALd7MG2MjkZiqmKJjbDt3wPyDJxq0S', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL),
(2, 'dev009', 0, 0, 0, '', '', 'Developer login', '', '', '', '', '', 'ayazhanifkhan@gmail.com', '2022-07-06', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$QfDXY9k4sgfQXEU9QHlDjeEALd7MG2MjkZiqmKJjbDt3wPyDJxq0S', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL),
(7, '03', 0, 1, 1, 'ba', '5', 'kinat', 'ffff', 'hhhh', 'bbb', '022222222', '000000', 'kinat@gmail.com', '1988-03-06', 'Single', '2022-12-02', '0000-00-00', 'mmmmm', '', '', '', '$2y$10$/q2.CQq9EYvbVg6ibVrmr.5lLjwQnKL9QXk6PlRFM8XImTQRiGJtu', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL),
(8, '0002', 0, 1, 1, 'msc', '10', 'gm', 'gm', 'aaaaa', 'kkkkkk', '03333335656', '', 'gm@gmail.com', '1988-03-06', 'Single', '2021-10-05', '0000-00-00', 'a one city', 'dmj', '', '', '$2y$10$MJ.nKXoDiuRWFC7aj5pmM.6qEaE.vVQQAW7WIHKOlF9iPyJmxqgdi', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL),
(9, '0001', 0, 2, 1, '', '', 'Ghulam Murtaza', 'Abro', 'mutalib', '-----', '', '', 'gmabro@gmail.com', '1970-01-01', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$Oy7zhn5BB7oPdOY/3ylwGOOeRSXF3Y/4jHBy9O3kdiBmttCpNf6rS', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL),
(10, '01', 0, 1, 1, '', '', 'noman', 'malik', 'malik usman', '-----', '+9200000000', '', 'noman@gmail.com', '1995-05-04', 'Not Specified', '2022-02-16', '0000-00-00', '', '', '', '', '$2y$10$VfGopDg3a7szUPtn9HaSs.kd7rq8eeQikIeKFdsp6ZME8.d6u.T56', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2022-09-06', 3, 3, '', 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-07 01:56:16', '0000-00-00'),
(5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES
(1, 'Computer operator ', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `staff_id_card`
--

CREATE TABLE `staff_id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_id_card`
--

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_vertical_card`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `status`) VALUES
(1, 'Sample Staff ID Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA', 'background1.jpeg', 'logo1.jpeg', 'sign1.jpeg', '#9b1818', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Sample Staff ID Card Vertical', 'The X Devlogix School', '110 Kings Street, CA', 'background2.jpeg', 'logo1.png', 'sign1.png', '#9b1818', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'Staff Id Card', 'The X Devlogix School', 'Xdevlogix@gmail.com', 'background3.jpg', 'logo3.jpeg', 'sign3.jpg', '#bb1818', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic` float(10,2) NOT NULL,
  `total_allowance` float(10,2) NOT NULL,
  `total_deduction` float(10,2) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` float(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  `deducttype` varchar(255) NOT NULL,
  `fix_amount` varchar(255) NOT NULL,
  `percent_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_payslip`
--

INSERT INTO `staff_payslip` (`id`, `staff_id`, `basic`, `total_allowance`, `total_deduction`, `leave_deduction`, `tax`, `net_salary`, `status`, `month`, `year`, `payment_mode`, `payment_date`, `remark`, `deducttype`, `fix_amount`, `percent_value`) VALUES
(1, 3, 25000.00, 0.00, 0.00, 0, '0', 24990.00, 'paid', 'July', '2022', 'cash', '2022-08-11', '', 'fix', '10', ''),
(4, 4, 25000.00, 130.00, 3310.00, 0, '0', 21820.00, 'paid', 'July', '2022', 'cash', '2022-08-16', '', '', '', ''),
(5, 3, 25000.00, 0.00, 0.00, 0, '0', 24000.00, 'paid', 'August', '2022', 'cash', '2022-08-19', '', 'percentage', '0', '10'),
(6, 4, 25000.00, 0.00, 1100.00, 0, '0', 23900.00, 'paid', 'August', '2022', 'cash', '1970-01-01', '', '', '', ''),
(7, 4, 25000.00, 0.00, 0.00, 0, '0', 24750.00, 'paid', 'September', '2022', 'cash', '1970-01-01', '', 'fix', '250', ''),
(8, 4, 25000.00, 0.00, 0.00, 0, '0', 24750.00, 'paid', 'October', '2022', 'cash', '2022-09-01', '', 'fix', '250', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_rating`
--

CREATE TABLE `staff_rating` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 0, '2022-07-27 11:51:07', NULL),
(2, 7, 2, 0, '2022-07-29 13:23:31', NULL),
(3, 1, 3, 0, '2022-08-26 06:53:39', NULL),
(4, 2, 4, 0, '2022-08-11 19:00:01', NULL),
(5, 6, 5, 0, '2022-09-01 11:46:33', NULL),
(7, 3, 7, 0, '2022-09-15 14:39:28', NULL),
(8, 6, 8, 0, '2022-09-15 15:13:27', NULL),
(9, 7, 9, 0, '2022-09-18 06:22:28', NULL),
(10, 6, 10, 0, '2022-09-19 06:50:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `app_key` text DEFAULT NULL,
  `parent_app_key` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `middlename`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES
(13, 25, '5844', '3287', '2022-09-19', 'Khatija', NULL, 'Usman', 'No', 'uploads/student_images/default_female.jpg', '+923204601131', '', NULL, NULL, NULL, 'islam', 'aaaa', '2022-07-05', 'Female', '', '', '', 0, 0, '', 0, 0, '', '', '', '', '', 'father', 'usman', '+923204601131', 'na', 'jjj', '5555', '', 'usman', 'Father', '+923361024014', 'na', '', '', 'uploads/student_images/13father.PNG', '', '', 'yes', '', '444', '', '2022-09-19', 0, '', '', NULL, NULL, '0000-00-00', '2022-09-22 12:41:41', NULL),
(14, 27, 'Adm001', '', '2022-09-19', 'demo', NULL, '', 'No', 'uploads/student_images/14.jpg', '0320415263', '', NULL, NULL, NULL, '', '', '2022-09-08', 'Male', '200 B - Block Sadar Chakkar Lahore Cantt.', '', '', 0, 0, '', 0, 0, '', '', '', '', '', 'father', 'demofather', '03132454874', '', '', '', '', 'demofather', 'Father', '03132454874', '', '', '', '', '', '', 'yes', '', '', '', '2022-09-19', 0, '', '', NULL, NULL, '0000-00-00', '2022-09-19 07:45:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_applyleave`
--

CREATE TABLE `student_applyleave` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `docs` text NOT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) NOT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 4, 0, '2022-08-24', 1, '', NULL, 'no', '2022-08-24 13:35:44', NULL),
(2, 2, 0, '2022-08-24', 4, '', NULL, 'no', '2022-08-24 13:35:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_edit_fields`
--

CREATE TABLE `student_edit_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_edit_fields`
--

INSERT INTO `student_edit_fields` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'firstname', 1, '2022-09-06 06:25:27'),
(2, 'admission_date', 1, '2022-09-06 06:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES
(1, 6, 1, '{\"1\":{\"amount\":\"1000\",\"date\":\"2022-08-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2022-08-24 13:12:25'),
(2, 6, 3, '{\"1\":{\"amount\":\"1000\",\"date\":\"2022-08-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2022-08-24 13:24:12'),
(3, 2, 2, '{\"1\":{\"amount\":\"2000\",\"date\":\"2022-08-26\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2022-08-26 11:21:17'),
(4, 10, 7, '{\"1\":{\"amount\":\"4000\",\"date\":\"2022-09-01\",\"amount_discount\":\"0\",\"amount_fine\":\"10\",\"description\":\" Collected By: Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2022-09-01 07:10:36'),
(7, 14, 9, '{\"1\":{\"amount\":\"1200.00\",\"date\":\"2022-09-16\",\"description\":\" Collected By: Super Admin\",\"amount_discount\":0,\"amount_fine\":0,\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2022-09-16 15:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_discounts`
--

INSERT INTO `student_fees_discounts` (`id`, `student_session_id`, `fees_discount_id`, `status`, `payment_id`, `description`, `is_active`, `created_at`) VALUES
(1, 2, 1, 'assigned', NULL, NULL, 'no', '2022-08-03 01:24:58'),
(2, 12, 2, 'assigned', NULL, NULL, 'no', '2022-09-16 14:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`) VALUES
(2, 0, 2, 2, 0.00, 'no', '2022-08-03 00:59:34'),
(4, 0, 3, 2, 0.00, 'no', '2022-08-03 01:17:58'),
(5, 0, 3, 1, 0.00, 'no', '2022-08-03 01:18:38'),
(6, 0, 4, 1, 0.00, 'no', '2022-08-24 13:08:11'),
(7, 0, 2, 1, 0.00, 'no', '2022-08-26 11:15:44'),
(8, 0, 2, 3, 0.00, 'no', '2022-08-26 11:18:58'),
(9, 0, 5, 4, 0.00, 'no', '2022-08-26 11:36:24'),
(10, 0, 6, 4, 0.00, 'no', '2022-08-26 11:36:24'),
(11, 0, 11, 5, 0.00, 'no', '2022-09-13 11:11:42'),
(13, 0, 12, 7, 0.00, 'no', '2022-09-16 14:27:51'),
(15, 0, 12, 8, 0.00, 'no', '2022-09-16 15:07:38'),
(16, 0, 13, 8, 0.00, 'no', '2022-09-16 15:07:38'),
(17, 0, 13, 7, 0.00, 'no', '2022-09-16 15:08:04'),
(18, 0, 14, 6, 0.00, 'no', '2022-09-18 05:26:41'),
(19, 0, 15, 6, 0.00, 'no', '2022-09-19 07:03:35'),
(20, 0, 15, 7, 0.00, 'no', '2022-09-19 07:08:05'),
(21, 0, 15, 9, 0.00, 'no', '2022-09-19 07:14:33'),
(22, 0, 15, 10, 0.00, 'no', '2022-09-19 07:15:03'),
(23, 0, 15, 8, 0.00, 'no', '2022-09-28 11:17:33'),
(24, 0, 16, 8, 0.00, 'no', '2022-09-28 11:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `default_login` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `default_login`, `created_at`, `updated_at`) VALUES
(15, 18, 13, 20, 9, 0, 0, NULL, 0.00, 0.00, 'no', 0, 0, '2022-09-19 06:57:26', NULL),
(16, 18, 14, 20, 9, 0, 0, NULL, 0.00, 0.00, 'no', 0, 0, '2022-09-19 07:45:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_sibling`
--

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_attendances`
--

CREATE TABLE `student_subject_attendances` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `subject_timetable_id` int(11) DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_timeline`
--

CREATE TABLE `student_timeline` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(20, 'English', '01', 'theory', 'no', '2022-09-19 06:34:16', NULL),
(21, 'Urdu', '02', 'theory', 'no', '2022-09-19 06:34:42', NULL),
(22, 'Science', '03', 'theory', 'no', '2022-09-19 06:34:58', NULL),
(23, 'Book Grimmer', '14', 'theory', 'no', '2022-09-19 06:35:49', NULL),
(24, 'DIT', '15', 'practical', 'no', '2022-09-19 06:36:20', NULL),
(25, 'Tuition', '16', 'theory', 'no', '2022-09-19 06:36:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_groups`
--

INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES
(1, 'K. G.', '', 18, '2022-07-29 13:27:26'),
(2, 'Play Group', '', 18, '2022-07-29 13:26:57'),
(3, 'Nursery', '', 18, '2022-07-29 13:27:55'),
(4, 'Jr. 1', '', 18, '2022-07-29 13:29:04'),
(5, 'Jr. 2', '', 18, '2022-07-29 13:29:32'),
(6, 'Jr. 3', '', 18, '2022-07-29 13:30:45'),
(7, 'Jr. 4', '', 18, '2022-07-29 13:31:17'),
(8, 'Jr. 5', '', 18, '2022-07-29 13:31:48'),
(9, 'Prep 1', '', 18, '2022-07-29 13:33:25'),
(10, 'Prep 2', '', 18, '2022-07-29 13:36:03'),
(11, 'Prep 3', '', 18, '2022-07-29 13:36:43'),
(12, 'Sr. 1', '', 18, '2022-07-29 13:38:04'),
(13, 'Sr. 2', '', 18, '2022-07-29 13:38:43'),
(14, 'two', '', 18, '2022-09-18 06:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_class_sections`
--

CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_subjects`
--

CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject_syllabus`
--

CREATE TABLE `subject_syllabus` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_for` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject_timetable`
--

CREATE TABLE `subject_timetable` (
  `id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `submit_assignment`
--

CREATE TABLE `submit_assignment` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template_admitcards`
--

CREATE TABLE `template_admitcards` (
  `id` int(11) NOT NULL,
  `template` varchar(250) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(1) NOT NULL DEFAULT 1,
  `is_father_name` int(1) NOT NULL DEFAULT 1,
  `is_mother_name` int(1) NOT NULL DEFAULT 1,
  `is_dob` int(1) NOT NULL DEFAULT 1,
  `is_admission_no` int(1) NOT NULL DEFAULT 1,
  `is_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_address` int(1) NOT NULL DEFAULT 1,
  `is_gender` int(1) NOT NULL DEFAULT 1,
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_admitcards`
--

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Admit Card', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION (10+2) 2014', 'ab12c4b65f53ee621dcf84370a7c5be4.png', '0910482bf79df5fd103e8383d61b387a.png', 'Test', 'Mount Carmel School', 'test dmit card2', 'aa9c7087e68c5af1d2c04946de1d3bd3.png', '782a71f53ea6bca213012d49e9d46d98.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-02-28 14:26:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_marksheets`
--

CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL,
  `template` varchar(200) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(1) DEFAULT 1,
  `is_name` int(1) DEFAULT 1,
  `is_father_name` int(1) DEFAULT 1,
  `is_mother_name` int(1) DEFAULT 1,
  `is_dob` int(1) DEFAULT 1,
  `is_admission_no` int(1) DEFAULT 1,
  `is_roll_no` int(1) DEFAULT 1,
  `is_photo` int(11) DEFAULT 1,
  `is_division` int(1) NOT NULL DEFAULT 1,
  `is_customfield` int(1) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_teacher_remark` int(11) NOT NULL DEFAULT 1,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_marksheets`
--

INSERT INTO `template_marksheets` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_customfield`, `background_img`, `date`, `is_class`, `is_teacher_remark`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Marksheet', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'f314cec3f688771ccaeddbcee6e52f7c.png', 'e824b2df53266266be2dbfd2001168b8.png', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION', 'Mount Carmel School', 'GOVT GIRLS H S SCHOOL', '331e0690e50f8c6b7a219a0a2b9667f7.png', '351f513d79ee5c0f642c2d36514a1ff4.png', 'fb79d2c0d163357d1706b78550a05e2c.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', NULL, 0, 1, 0, NULL, NULL, '2020-02-28 14:26:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `complete_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `class_section_id`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-07-27 18:51:49'),
(2, 'std1', 'student', 1, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-07-27 20:51:19'),
(3, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 12:32:54'),
(4, 'std1', 'student', 1, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 12:38:53'),
(5, 'parent1', 'parent', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 12:40:14'),
(6, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 13:00:49'),
(7, 'parent1', 'parent', NULL, '39.59.59.117', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 13:56:31'),
(8, 'admin@admin.com', 'Super Admin', NULL, '39.59.59.117', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 13:59:32'),
(9, 'admin@admin.com', 'Super Admin', NULL, '39.59.59.117', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 14:21:56'),
(10, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Firefox 102.0, Windows 10', '2022-07-28 14:28:36'),
(11, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 14:30:18'),
(12, 'admin@admin.com', 'Super Admin', NULL, '39.59.47.139', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 15:19:27'),
(13, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 15:50:11'),
(14, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 103.0.0.0, Windows 10', '2022-07-28 16:01:51'),
(15, 'admin@admin.com', 'Super Admin', NULL, '103.188.93.45', 'Chrome 103.0.0.0, Android', '2022-07-28 23:31:52'),
(16, 'admin@admin.com', 'Super Admin', NULL, '119.160.58.160', 'Chrome 96.0.4664.104, Android', '2022-07-28 23:37:04'),
(17, 'admin@admin.com', 'Super Admin', NULL, '119.160.58.242', 'Chrome 103.0.0.0, Windows 10', '2022-07-29 17:32:45'),
(18, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 103.0.0.0, Windows 10', '2022-07-29 18:15:15'),
(19, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 103.0.0.0, Windows 10', '2022-08-01 13:00:41'),
(20, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 103.0.0.0, Windows 10', '2022-08-01 18:59:17'),
(21, 'admin@admin.com', 'Super Admin', NULL, '119.160.59.191', 'Chrome 103.0.0.0, Windows 10', '2022-08-02 10:42:33'),
(22, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 74.0.3729.108, Windows 10', '2022-08-03 01:40:14'),
(23, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-08-04 01:18:55'),
(24, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-08-04 06:01:15'),
(25, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-08-04 09:21:39'),
(26, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-08-05 06:35:55'),
(27, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 103.0.0.0, Windows 10', '2022-08-06 00:53:09'),
(28, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 104.0.0.0, Windows 10', '2022-08-11 13:01:47'),
(29, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 104.0.0.0, Windows 10', '2022-08-12 19:07:20'),
(30, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 104.0.0.0, Windows 10', '2022-08-15 14:32:00'),
(31, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 104.0.0.0, Windows 10', '2022-08-17 19:16:13'),
(32, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-23 17:47:25'),
(33, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-24 18:02:50'),
(34, 'parent3', 'parent', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-24 18:11:24'),
(35, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-25 14:46:26'),
(36, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-26 11:52:00'),
(37, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-26 11:52:25'),
(38, 'admindemo@gmail.com', 'Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-26 11:56:20'),
(39, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-26 16:10:07'),
(40, 'parent6', 'parent', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-08-26 17:16:40'),
(41, 'admindemo@gmail.com', 'Admin', NULL, '103.18.22.81', 'Chrome 104.0.0.0, Windows 10', '2022-08-29 16:22:22'),
(42, 'admin@admin.com', 'Super Admin', NULL, '39.59.95.46', 'Chrome 104.0.0.0, Windows 10', '2022-08-29 17:49:19'),
(43, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-01 11:56:25'),
(44, 'std2', 'student', 1, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-01 13:03:30'),
(45, 'hamza@gmail.com', 'Teacher', NULL, '103.217.178.174', 'Firefox 104.0, Windows 10', '2022-09-01 13:19:13'),
(46, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-01 16:29:27'),
(47, 'amar@gmail.com', 'Receptionist', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-01 16:47:55'),
(48, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 11:33:41'),
(49, 'std2', 'student', 1, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 11:41:23'),
(50, 'std2', 'student', 1, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 15:06:23'),
(51, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 16:01:15'),
(52, 'amar@gmail.com', 'Receptionist', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 18:26:40'),
(53, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 20:31:55'),
(54, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-02 20:32:51'),
(55, 'admin@admin.com', 'Super Admin', NULL, '103.217.178.174', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 12:15:15'),
(56, 'samad@gmail.com', 'Accountant', NULL, '39.59.58.16', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 12:54:36'),
(57, 'samad@gmail.com', 'Accountant', NULL, '39.59.58.16', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 13:00:17'),
(58, 'admin@admin.com', 'Super Admin', NULL, '39.59.115.204', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 15:21:05'),
(59, 'ayazhanifkhan@gmail.com', 'Super Admin', NULL, '39.59.115.204', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 15:21:53'),
(60, 'amar@gmail.com', 'Receptionist', NULL, '39.59.115.204', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 15:30:42'),
(61, 'hamza@gmail.com', 'Teacher', NULL, '39.59.104.2', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 16:43:11'),
(62, 'ayazhanifkhan@gmail.com', 'Super Admin', NULL, '39.59.104.2', 'Chrome 104.0.0.0, Windows 10', '2022-09-05 16:46:12'),
(63, 'samad@gmail.com', 'Accountant', NULL, '116.71.4.178', 'Chrome 57.0.2987.108, Android', '2022-09-05 16:46:55'),
(64, 'admindemo@gmail.com', 'Admin', NULL, '116.71.4.178', 'Chrome 57.0.2987.108, Android', '2022-09-05 16:49:00'),
(65, 'admindemo@gmail.com', 'Admin', NULL, '39.59.14.40', 'Chrome 104.0.0.0, Android', '2022-09-06 10:32:16'),
(66, 'ayazhanifkhan@gmail.com', 'Super Admin', NULL, '39.59.14.40', 'Chrome 104.0.0.0, Windows 10', '2022-09-06 10:59:34'),
(67, 'admindemo@gmail.com', 'Admin', NULL, '182.183.169.244', 'Chrome 104.0.0.0, Windows 10', '2022-09-06 18:16:45'),
(68, 'hamza@gmail.com', 'Teacher', NULL, '182.183.169.244', 'Chrome 104.0.0.0, Windows 10', '2022-09-06 18:35:48'),
(69, 'admin@admin.com', 'Super Admin', NULL, '58.27.213.34', 'Chrome 104.0.0.0, Android', '2022-09-08 11:47:59'),
(70, 'admin@admin.com', 'Super Admin', NULL, '39.59.81.150', 'Chrome 105.0.0.0, Windows 10', '2022-09-08 12:46:24'),
(71, 'admin@admin.com', 'Super Admin', NULL, '39.59.81.150', 'Chrome 105.0.0.0, Windows 10', '2022-09-08 13:34:05'),
(72, 'admin@admin.com', 'Super Admin', NULL, '39.59.96.22', 'Chrome 105.0.0.0, Windows 10', '2022-09-09 10:48:58'),
(73, 'admin@admin.com', 'Super Admin', NULL, '39.59.96.22', 'Chrome 105.0.0.0, Windows 10', '2022-09-09 11:20:44'),
(74, 'admin@admin.com', 'Super Admin', NULL, '39.59.96.22', 'Chrome 105.0.0.0, Windows 10', '2022-09-09 11:26:06'),
(75, 'admin@admin.com', 'Super Admin', NULL, '39.59.96.22', 'Chrome 105.0.0.0, Windows 10', '2022-09-09 11:30:36'),
(76, 'admin@admin.com', 'Super Admin', NULL, '39.59.96.22', 'Chrome 105.0.0.0, Windows 10', '2022-09-09 11:37:21'),
(77, 'admin@admin.com', 'Super Admin', NULL, '119.160.116.224', 'Chrome 105.0.0.0, Android', '2022-09-09 14:10:01'),
(78, 'admin@admin.com', 'Super Admin', NULL, '111.119.183.4', 'Chrome 105.0.0.0, Android', '2022-09-09 15:00:16'),
(79, 'admin@admin.com', 'Super Admin', NULL, '119.160.68.38', 'Chrome 99.0.4844.88, Android', '2022-09-10 12:51:02'),
(80, 'admin@admin.com', 'Super Admin', NULL, '182.189.231.23', 'Chrome 103.0.0.0, Android', '2022-09-10 17:49:19'),
(81, 'admin@admin.com', 'Super Admin', NULL, '43.245.8.110', 'Chrome 105.0.0.0, Windows 10', '2022-09-13 14:15:31'),
(82, 'admin@admin.com', 'Super Admin', NULL, '203.135.44.28', 'Chrome 105.0.0.0, Windows 10', '2022-09-13 16:00:14'),
(83, 'admin@admin.com', 'Super Admin', NULL, '39.59.118.194', 'Chrome 105.0.0.0, Windows 10', '2022-09-13 16:18:02'),
(84, 'admin@admin.com', 'Super Admin', NULL, '162.255.45.156', 'Chrome 105.0.0.0, Windows 10', '2022-09-14 14:23:38'),
(85, 'admin@admin.com', 'Super Admin', NULL, '37.111.136.209', 'Chrome 105.0.0.0, Android', '2022-09-14 15:53:44'),
(86, 'admin@admin.com', 'Super Admin', NULL, '111.119.187.52', 'Chrome 96.0.4664.104, Android', '2022-09-14 16:39:30'),
(87, 'Admin@admin.com', 'Super Admin', NULL, '111.119.183.54', 'Chrome 105.0.0.0, Android', '2022-09-14 16:48:26'),
(88, 'Admin@admin.com', 'Super Admin', NULL, '206.84.173.12', 'Chrome 105.0.0.0, Android', '2022-09-14 17:45:46'),
(89, 'admin@admin.com', 'Super Admin', NULL, '39.50.24.26', 'Chrome 105.0.0.0, Windows 10', '2022-09-14 17:58:23'),
(90, 'admin@admin.com', 'Super Admin', NULL, '39.46.240.120', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 14:36:00'),
(91, 'admin@admin.com', 'Super Admin', NULL, '39.59.120.110', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 14:42:45'),
(92, 'ayazhanifkhan@gmail.com', 'Super Admin', NULL, '39.59.120.110', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 14:52:54'),
(93, 'admin@admin.com', 'Super Admin', NULL, '121.52.157.44', 'Chrome 105.0.0.0, Android', '2022-09-15 16:01:24'),
(94, 'ayazhanifkhan@gmail.com', 'Super Admin', NULL, '182.185.252.19', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 16:49:21'),
(95, 'admin@admin.com', 'Super Admin', NULL, '103.228.156.74', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 18:03:18'),
(96, 'admin@admin.com', 'Super Admin', NULL, '103.228.156.74', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 19:40:26'),
(97, 'abcd@gmail.com', 'Accountant', NULL, '103.228.156.74', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 20:09:36'),
(98, 'admin@admin.com', 'Super Admin', NULL, '103.228.156.74', 'Chrome 105.0.0.0, Windows 10', '2022-09-15 20:10:36'),
(99, 'admin@admin.com', 'Super Admin', NULL, '39.59.1.235', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 16:06:59'),
(100, 'admin@admin.com', 'Super Admin', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 17:46:46'),
(101, 'gm@gmail.com', 'Receptionist', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 17:53:43'),
(102, 'abcd@gmail.com', 'Accountant', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 17:56:32'),
(103, 'admin@admin.com', 'Super Admin', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 17:57:04'),
(104, 'admin@admin.com', 'Super Admin', NULL, '39.59.26.75', 'Chrome 105.0.0.0, Android', '2022-09-16 19:13:25'),
(105, 'abcd@gmail.com', 'Accountant', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 19:36:20'),
(106, 'admin@admin.com', 'Super Admin', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 19:36:51'),
(107, 'gm@gmail.com', 'Receptionist', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 20:33:16'),
(108, 'abcd@gmail.com', 'Accountant', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 20:34:18'),
(109, 'gm@gmail.com', 'Receptionist', NULL, '119.152.123.135', 'Chrome 105.0.0.0, Windows 10', '2022-09-16 20:42:34'),
(110, 'admin@admin.com', 'Super Admin', NULL, '103.228.156.0', 'Chrome 105.0.0.0, Windows 10', '2022-09-17 10:46:06'),
(111, 'admin@admin.com', 'Super Admin', NULL, '103.228.158.199', 'Chrome 105.0.0.0, Windows 10', '2022-09-18 10:22:48'),
(112, 'admin@admin.com', 'Super Admin', NULL, '103.228.158.199', 'Chrome 105.0.0.0, Windows 10', '2022-09-18 10:38:14'),
(113, 'admin@admin.com', 'Super Admin', NULL, '72.255.40.249', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 10:34:21'),
(114, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Spartan 12.10240, Windows 10', '2022-09-19 11:23:07'),
(115, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 11:27:29'),
(116, 'noman@gmail.com', 'Receptionist', NULL, '182.183.218.99', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 11:53:20'),
(117, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 11:58:46'),
(118, 'kinat@gmail.com', 'Accountant', NULL, '182.183.218.99', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 12:01:17'),
(119, 'kinat@gmail.com', 'Accountant', NULL, '182.183.218.99', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 12:15:26'),
(120, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Chrome 105.0.0.0, Windows 10', '2022-09-19 12:21:42'),
(121, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Spartan 12.10240, Windows 10', '2022-09-19 12:51:59'),
(122, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Spartan 12.10240, Windows 10', '2022-09-19 15:14:08'),
(123, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Spartan 12.10240, Windows 10', '2022-09-19 15:21:58'),
(124, 'kinat@gmail.com', 'Accountant', NULL, '182.183.218.99', 'Spartan 12.10240, Windows 10', '2022-09-19 15:22:56'),
(125, 'admin@admin.com', 'Super Admin', NULL, '182.183.218.99', 'Spartan 12.10240, Windows 10', '2022-09-19 18:18:47'),
(126, 'admin@admin.com', 'Super Admin', NULL, '72.255.40.249', 'Chrome 105.0.0.0, Windows 10', '2022-09-20 17:44:21'),
(127, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 105.0.0.0, Windows 10', '2022-09-20 13:08:11'),
(128, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 105.0.0.0, Windows 10', '2022-09-21 01:01:24'),
(129, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 105.0.0.0, Windows 10', '2022-09-22 01:35:56'),
(130, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 105.0.0.0, Windows 10', '2022-09-23 00:40:33'),
(131, 'admin@admin.com', 'Super Admin', NULL, '::1', 'Chrome 105.0.0.0, Windows 10', '2022-09-28 04:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'std1', 'yjq6jo', '', 'student', '', 0, 'yes', '2022-07-27 13:49:58', NULL),
(3, 2, 'std2', 'jjfnua', '', 'student', '', 0, 'yes', '2022-07-28 10:51:41', NULL),
(5, 3, 'std3', 'kgwv3r', '', 'student', '', 0, 'yes', '2022-08-02 19:20:39', NULL),
(7, 4, 'std4', '4q53tm', '', 'student', '', 0, 'yes', '2022-08-24 13:07:09', NULL),
(8, 5, 'std5', '0z8fm7', '', 'student', '', 0, 'yes', '2022-08-26 11:29:38', NULL),
(10, 6, 'std6', 'pt2ao2', '', 'student', '', 0, 'yes', '2022-08-26 11:31:03', NULL),
(12, 7, 'std7', 'kby3mr', '', 'student', '', 0, 'yes', '2022-09-02 06:54:52', NULL),
(14, 8, 'std8', 'dka8mr', '', 'student', '', 0, 'yes', '2022-09-06 05:36:19', NULL),
(16, 9, 'std9', 'sxtkcx', '', 'student', '', 0, 'yes', '2022-09-13 11:03:36', NULL),
(24, 13, 'std13', '9neck0', '', 'student', '', 0, 'yes', '2022-09-19 06:57:26', NULL),
(25, 0, 'parent13', 'zva4mw', '13', 'parent', '', 0, 'yes', '2022-09-19 06:57:26', NULL),
(26, 14, 'std14', 'lfcmbs', '', 'student', '', 0, 'yes', '2022-09-19 07:45:17', NULL),
(27, 0, 'parent14', 'zahct9', '14', 'parent', '', 0, 'yes', '2022-09-19 07:45:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` int(11) NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visitors_purpose`
--

INSERT INTO `visitors_purpose` (`id`, `visitors_purpose`, `description`) VALUES
(1, 'Admission', 'Admission'),
(2, 'Parents Meeting', 'Parents Meeting'),
(3, 'Inquiry ', 'Inquiry ');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_settings`
--

CREATE TABLE `voucher_settings` (
  `id` int(11) NOT NULL,
  `bank_info` text DEFAULT NULL,
  `school_info` text DEFAULT NULL,
  `voucher_types` text DEFAULT NULL,
  `students` text DEFAULT NULL,
  `instructions` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voucher_settings`
--

INSERT INTO `voucher_settings` (`id`, `bank_info`, `school_info`, `voucher_types`, `students`, `instructions`, `created_at`, `updated_at`) VALUES
(1, '{\"name\":\".\",\"acInfo\":\"\"}', '{\"name\":\"Sound Foundation Group of School & College and Academy \",\"acInfo\":\"Main Brewery Road, Near Railway Society Wahdat Colony 3rd Stop Quetta.\",\"image\":\"c5dabff.jpg\"}', '{\"name\":\"bank,student,school\"}', '{\"name\":\"checked\",\"father_name\":\"checked\",\"admission_no\":\"checked\",\"roll_no\":\"checked\",\"class\":\"checked\",\"section\":\"checked\"}', '{\"instruction\":\"<h1>.<\\/h1>\",\"_wysihtml5_mode\":\"1\"}', '2022-08-02 19:35:55', '2022-09-13 09:23:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_statement`
--
ALTER TABLE `account_statement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_one` (`chat_user_one`),
  ADD KEY `chat_user_two` (`chat_user_two`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `chat_connection_id` (`chat_connection_id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `create_staff_id` (`create_staff_id`),
  ADD KEY `create_student_id` (`create_student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disable_reason`
--
ALTER TABLE `disable_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`);

--
-- Indexes for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`);

--
-- Indexes for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  ADD KEY `exam_group_student_id` (`exam_group_student_id`),
  ADD KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`);

--
-- Indexes for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedule_id` (`exam_schedule_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feecategory`
--
ALTER TABLE `feecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_vouchers`
--
ALTER TABLE `fee_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filetypes`
--
ALTER TABLE `filetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`);

--
-- Indexes for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_card`
--
ALTER TABLE `id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_loan`
--
ALTER TABLE `manage_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_class_students`
--
ALTER TABLE `multi_class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`);

--
-- Indexes for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`),
  ADD KEY `onlineexam_question_id` (`onlineexam_question_id`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_houses`
--
ALTER TABLE `school_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_attendance_staff` (`staff_id`),
  ADD KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_details_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_details_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_request_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_request_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_payslip_staff` (`staff_id`);

--
-- Indexes for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_rating_staff` (`staff_id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_timeline_staff` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `student_sibling`
--
ALTER TABLE `student_sibling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `subject_timetable_id` (`subject_timetable_id`);

--
-- Indexes for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_for` (`created_for`);

--
-- Indexes for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_settings`
--
ALTER TABLE `voucher_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_statement`
--
ALTER TABLE `account_statement`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_students`
--
ALTER TABLE `alumni_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_connections`
--
ALTER TABLE `chat_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disable_reason`
--
ALTER TABLE `disable_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feecategory`
--
ALTER TABLE `feecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_vouchers`
--
ALTER TABLE `fee_vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `filetypes`
--
ALTER TABLE `filetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_card`
--
ALTER TABLE `id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT for table `manage_loan`
--
ALTER TABLE `manage_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `multi_class_students`
--
ALTER TABLE `multi_class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permission_student`
--
ALTER TABLE `permission_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1486;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_houses`
--
ALTER TABLE `school_houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff_rating`
--
ALTER TABLE `staff_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_sibling`
--
ALTER TABLE `student_sibling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_timeline`
--
ALTER TABLE `student_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voucher_settings`
--
ALTER TABLE `voucher_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `multi_class_students`
--
ALTER TABLE `multi_class_students`
  ADD CONSTRAINT `multi_class_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `multi_class_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
