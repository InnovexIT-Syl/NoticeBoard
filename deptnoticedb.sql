-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 07:26 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deptnoticedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Final Exam', '2018-07-12 02:57:23', '2018-07-12 02:57:23'),
(2, 'Exam', '2018-07-12 02:59:03', '2018-07-12 02:59:03'),
(3, 'Dept Iftar', '2018-07-15 01:12:18', '2018-07-15 01:12:18'),
(4, 'Alumni', '2018-07-15 02:24:11', '2018-07-15 02:24:11'),
(5, 'CSE Carnival', '2018-07-15 02:57:44', '2018-07-15 02:57:44'),
(6, 'Contest', '2018-08-08 03:11:54', '2018-08-08 03:11:54'),
(7, 'Class', '2018-08-12 20:20:36', '2018-08-12 20:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_12_063333_create_posts_table', 2),
(4, '2018_07_12_063536_create_categories_table', 2),
(5, '2018_07_12_063723_create_comments_table', 2),
(6, '2018_07_12_063745_create_likes_table', 2),
(7, '2018_07_12_063809_create_dislikes_table', 2),
(8, '2018_07_12_064237_create_profiles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_body`, `category_id`, `post_image`, `created_at`, `updated_at`, `status`) VALUES
(9, 4, 'SCDN Intra SUST Developing Contest', 'Dear All,\r\nThis August SUST CSE Developer Network or SCDN Lab is going to arrange a bunch of developing a contest for all undergraduate SUSTians in both Web and Android Platform. Here to mention that the developing contest will be a team contest.\r\n\r\nContests List:\r\n1. 8 Hours of Developing contest in\r\ni) Web platform(Where a problem list on web platform will be given)\r\nii) Android platform(Where a problem list on the android platform will be given)\r\n2. UI Design contest for SUST Online Judge(Contestant need to design an User Interface for the judge using photoshop or other design software)\r\n3. Prototype Design Contest for only SUST CSE 2016 Batch.\r\n\r\nRules:\r\n# Developing contest: It is open for 15,16 and 17 batches.We will open problem sets on Thursday, August 09 so that can get enough time to design prototype.\r\nsome feature will be hidden and they need to develop it on contest day.\r\n#UI design contest is open for all.\r\n# Each team can have maximum 3 members. Individual participants are also allowed.\r\n#Prototype Design Contest: Here the contestant needs to design a prototype of their software using prototyping software like \"Just in mind\" and \"Balsamic\" etc.\r\n#Details contest rule will be given to the selected teams before the contest.\r\n# Only the undergraduate students of SUST can participate in the contests.\r\n\r\nPrize Money will be declared later.', 2, 'http://localhost/deptnotice/public/posts/38631853_1883951218581051_3768306397435920384_n.jpg', '2018-08-08 02:58:07', '2018-08-08 02:58:07', 1),
(10, 3, 'Computer Science & Engineering', 'Department of Computer Science & Engineering got down to its journey along with that of School of Applied Science in 1992, the time from which till today it heaves the strength with non-breaking waves. This department has brought numerous graduates into reality that are speeding up not only Bangladesh but also the whole world in various IT fields by their skill that they have gathered from this department. CSE department mainly offers four-year undergraduate course in Computer Science & Engineering where courses are designed in such a way so that students graduating from this department have a balance of theory and practical skills t...', 4, 'http://localhost/deptnotice/public/posts/dept-1461838354-8.jpg', '2018-08-08 04:40:17', '2018-08-08 04:40:17', 1),
(11, 3, 'Message From Head', 'Professor Dr. Mohammad Reza Selim\r\n\r\nHead of the Department\r\n\r\nWelcome to Department of Computer Science and Engineering, ShahJalal University of Science & Technology (SUST) website. CSE-SUST is one of the finest departments in Bangladesh of its arena with the mark of its magnificent progress. Various kinds of activities, academic and extra-curriculum, have brought this department to both national and international focus. Both teachers and students spontaneously participate in different programs to make the department a centre for excellence. Research activities have earned fame of the department at both home and aboard. We are contented and committed to take the department along with the university forward with the help of the teachers, students, officers and employees who have been toiling hard to retain peace and order in the campus. We strongly adhere to all forms of progressive ideas as we bear the spirit of freedom, conscience and liberal thought. The department established in 1992 currently has around 300 students who are pursuing the academic deliberations and enhancement of research capabilities.\r\n\r\nOur promise is that we shall continue our endeavor to place the name of this department along with the university at the frontier in the international arena.\r\n\r\nThis website aims at providing the user with the latest information related to what we stand for, what we offer and how we operate our academic and research arena. We believe you will enjoy browsing through this website and use this information available on it in productive manner as per your requirement and expectation.', 2, 'http://localhost/deptnotice/public/posts/1457010456-8.png', '2018-08-08 05:32:59', '2018-08-08 05:32:59', 1),
(12, 3, 'Every Graduate students(general, thesis and engineering) has to complete at least 16 hours of theory course work during the first two semesters.', 'CSE department mainly offers four-year undergraduate course in Computer Science & Engineering where courses are designed in such a way so that students graduating from this department have a balance of theory and practical skills to prepare them for the highly competitive workplace.\r\n\r\nA one year M.Sc. (General) and one-and-half year M.Sc.(Thesis) and two years M.Sc. (Engineering) programs in Computer Science and Engineering are also being run by the department. Usually, every year we advertise in the national news papers for admission in the Masters programs.\r\n\r\nBesides, the department also offers Ph.D. degrees in the relevant fields. Students fulfilling the requirements can apply for admission in the Ph.D. program at any time of the year. Here is the application form for Ph.D. admission.  \r\n\r\nBesides undergraduate and Masters and Ph.D. programs, this department is also successfully running one year (four semesters) certification program CCNA (CISCO Certified Network Associate) in collaboration with UNDP and CISCO).', 5, 'http://localhost/deptnotice/public/posts/dept-1462144094-8.jpg', '2018-08-08 05:34:41', '2018-08-08 05:34:41', 1),
(13, 12, 'All Classes are off', 'Eid vacation from 15th', 2, 'http://127.0.0.1:8000/posts/1464454211.jpg', '2018-08-12 23:23:35', '2018-08-12 23:23:35', 1),
(14, 12, 'testing', 'gkjnlnlnn l k ljjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjkb ljknnnnnnnnnnnnnnn ;nkkkkkkkkkkkkkkkkkkkkkk', 5, 'http://127.0.0.1:8000/posts/65294107.jpg', '2018-08-13 00:39:52', '2018-08-13 00:39:52', 1),
(15, 13, 'Eid vaction from 15 august', 'Eid vaction from 15 august', 7, 'http://127.0.0.1:8000/posts/16938940_1326898537377505_3662278073152613122_n.jpg', '2018-08-14 13:26:52', '2018-08-14 13:26:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `designation`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bad Kingo', 'Associate Professor', 'http://localhost/deptnotice/public/uploads/Gorillaz_band_photo.jpg', '2018-07-14 20:58:41', '2018-07-14 20:58:41'),
(2, 1, 'Bad King', 'Associate Professor', 'http://localhost/deptnotice/public/uploads/16938940_1326898537377505_3662278073152613122_n.jpg', '2018-07-14 21:29:15', '2018-07-14 21:29:15'),
(4, 2, 'Bad Queen', 'Lecturer', 'http://localhost/deptnotice/public/uploads/img-01.png', '2018-07-14 22:55:46', '2018-07-14 22:55:46'),
(5, 2, 'Bad Queen', 'Lecturer', 'http://localhost/deptnotice/public/uploads/img-01.png', '2018-07-14 22:56:08', '2018-07-14 22:56:08'),
(6, 2, 'Bad Queen', 'Lecturer', 'http://localhost/deptnotice/public/uploads/user.png', '2018-07-14 22:58:13', '2018-07-14 22:58:13'),
(7, 3, 'Saiful Saif', 'Assistant Professor', 'http://localhost/deptnotice/public/uploads/1464454192.jpg', '2018-07-15 01:09:32', '2018-07-15 01:09:32'),
(8, 4, 'Marium-E-Jannat', 'Assistant Professor', 'http://localhost/deptnotice/public/uploads/1464454211.jpg', '2018-07-15 01:11:30', '2018-07-15 01:11:30'),
(9, 5, 'Poekmon', 'Student', 'http://localhost/deptnotice/public/uploads/Amazing_Apple.png', '2018-08-08 03:07:01', '2018-08-08 03:07:01'),
(10, 5, 'Poekmon1', 'Stu', 'http://localhost/deptnotice/public/uploads/13940141271385061948232px-green_light_icon.svg-th.png', '2018-08-08 03:08:03', '2018-08-08 03:08:03'),
(11, 5, 'jannat 2', 'Stuudent', 'http://localhost/deptnotice/public/uploads/1.png', '2018-08-08 03:08:42', '2018-08-08 03:08:42'),
(12, 10, NULL, NULL, NULL, '2018-08-10 21:44:19', '2018-08-10 21:44:19'),
(13, 11, 'tonmoy@tonmoy.com', NULL, NULL, '2018-08-10 21:48:08', '2018-08-10 21:48:08'),
(14, 12, 'imon@imon.com', NULL, NULL, '2018-08-12 19:48:57', '2018-08-12 19:48:57'),
(15, 13, 'mojid', NULL, NULL, '2018-08-14 13:24:49', '2018-08-14 13:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `teacherassign`
--

CREATE TABLE `teacherassign` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `catagory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherassign`
--

INSERT INTO `teacherassign` (`id`, `teacher_id`, `catagory_id`) VALUES
(1, 12, 5),
(2, 13, 7),
(3, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'Bad King', 'badking@gmail.com', '$2y$10$/1uYb6PgZ1Qvq1yxaOw7hOGAEtM8mJ/QEmlGxW3gJUpAzfmCitH3m', '0g7AYKVg51gxGB8bZMcLbxJlj1iBZm6iLQ6ncw3JPAyZVEh66LJi5Rqf8mbB', '2018-07-11 23:34:59', '2018-07-11 23:34:59', 0),
(2, 'Bad Queen', 'badqueen@gmail.com', '$2y$10$FU6QNdW4ZBUJvxDFIQId3evVSlya864jHhHX0yKpw56DjgBrpMmGW', '1nUGqZ4uJFJ4lf6BeoDaJsXpZe3OACUMe07JAkmVgIWxIDDFiJzIIeOkeH3a', '2018-07-14 22:52:49', '2018-07-14 22:52:49', 2),
(3, 'Saiful Saif', 'saiful@gmail.com', '$2y$10$xOL9nA7nqncKF7CN3rTDUe5IpRK8F2O4y6Hhz36GbcSbaz6r9UHGm', 'luhBaOClHw74OWu64lliabCeRIGM1ULFxu4FAPbArjpIP5NP7VahAUh8FHKP', '2018-07-15 01:07:56', '2018-07-15 01:07:56', 2),
(4, 'Marium-E-Jannat', 'marium@gmail.com', '$2y$10$Q0FFuNCCvj9KXvKCDOie6eITUBrfWw.6txv0ONyIfDG/t6v.Owpcy', 'vmVKP8Ok47qh8rGKeJ3fZJsSpFInEK3LpkckHP9a91AbQzK7vk0usSALLTbU', '2018-07-15 01:10:33', '2018-07-15 01:10:33', 0),
(5, 'jannat', 'jannat123@gmail.com', '$2y$10$Jhylzi1FD/u0skGgAJNtT.87EVAUS3PYxIwJHU.YIrp1AdWfMMrjy', 'PvRqGyJh6pcHqgHQdIRT6MEyfzvjfYHcmJ2DOHKPuKFzAi0QYleFFVe6eNV5', '2018-08-08 01:50:20', '2018-08-08 01:50:20', 0),
(10, 'testing@test.com', 'testing@test.com', '$2y$10$mY1FoJDXr.NYySXGgjiFouCOZRovpghZVILCu4VMSIPVYOQTXlMya', 'waXsKMTFYBjMKVpRboq9024R330u5PisZL5zcHn7AbIJvySGNucvBFs9DGEt', '2018-08-10 21:44:19', '2018-08-10 21:44:19', 1),
(11, 'tonmoy@tonmoy.com', 'tonmoy@tonmoy.com', '$2y$10$AmVXqKIIgWogMfmCE5fjyepBfD/dZ6Cmu4c019y.EmUanIyu/JRxa', NULL, '2018-08-10 21:48:08', '2018-08-10 21:48:08', 1),
(12, 'imon@imon.com', 'imon@imon.com', '$2y$10$KUBRtD5Uc3iMRJGcbX5SU.sblH1SlhhM2l9K1UN5j0RubHJ7RUDia', 'QnotPeY3W93kB7TSpvLlSD6FW3eu6gMkjB3t8WoTPTdu8UUBzrSYs5EYBt07', '2018-08-12 19:48:57', '2018-08-12 19:48:57', 2),
(13, 'mojid', 'mojid@mojid.com', '$2y$10$R1mJbW.yeKEbIXuzi6kSpeqqRi4vRNF.BiDVeFZGX8Kd22uoO2E76', NULL, '2018-08-14 13:24:49', '2018-08-14 13:24:49', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherassign`
--
ALTER TABLE `teacherassign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `teacherassign`
--
ALTER TABLE `teacherassign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
