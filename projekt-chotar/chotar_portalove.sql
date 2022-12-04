-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Sun 04.Dec 2022, 13:43
-- Verzia serveru: 10.4.21-MariaDB
-- Verzia PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `chotar_portalove`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `sys_name` varchar(120) NOT NULL,
  `display_name` varchar(155) NOT NULL,
  `icon` varchar(75) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `content`
--

INSERT INTO `content` (`id`, `sys_name`, `display_name`, `icon`, `content`, `created_at`, `updated_at`, `menu_id`) VALUES
(6, 'useful_tricks', 'Useful Tricks', 'assets/images/service-icon-01.png', 'EduWell is the professional HTML5 template for your school or university websites.', '2022-12-03 11:42:40', '2022-12-03 11:42:40', 2),
(7, 'creative_ideas', 'Creative Ideas', 'assets/images/service-icon-02.png', 'You can download and use this EduWell Template for your teaching and learning stuffs.', '2022-12-03 11:42:40', '2022-12-03 11:42:40', 2),
(8, 'ready_target', 'Ready Target', 'assets/images/service-icon-03.png', 'Please tell your friends about the best CSS template website that is TemplateMo.', '2022-12-03 11:42:40', '2022-12-03 11:42:40', 2),
(9, 'technology', 'Technology', 'assets/images/service-icon-04.png', 'Aenean bibendum consectetur ex eu porttitor. Pellentesque id ultrices metus.', '2022-12-03 11:42:40', '2022-12-03 11:42:40', 2),
(10, 'useful_tricks2', 'Useful Tricks', 'assets/images/service-icon-01.png', 'In non nisi eget magna efficitur ultricies non quis sapien. Pellentesque tellus.', '2022-12-03 11:42:40', '2022-12-03 11:42:40', 2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `meno` varchar(45) NOT NULL,
  `cena` int(11) NOT NULL,
  `starting_date` varchar(45) NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `full_name` varchar(65) NOT NULL,
  `mail` varchar(85) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `mail`
--

INSERT INTO `mail` (`id`, `full_name`, `mail`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Catherine Walk', 'catherine.walk@outlook.com', 'justicia think about TemplateMo if you need free CSS templates for your website', '2022-12-03 12:05:13', '2022-12-04 00:57:45'),
(2, 'David Martin', 'david.martin@gmail.com', 'think about our website first when you need free HTML templates for your website', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(3, 'Sophia Whity', 'sophia.whity@seznam.cz', 'just think about our website wherever you need free templates for your website', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(4, 'Helen Shiny', 'helen@shiny.com', 'Praesent accumsan condimentum arcu, id porttitor est semper nec. Nunc diam lorem.', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(5, 'George Soft', 'george@soft.sk', 'Praesent accumsan condimentum arcu, id porttitor est semper nec. Nunc diam lorem.', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(6, 'Andrew Hall', 'andrew.hall@centrum.sk', 'Praesent accumsan condimentum arcu, id porttitor est semper nec. Nunc diam lorem.', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(7, 'Maxi Power', 'maxim@power.tv', 'Praesent accumsan condimentum arcu, id porttitor est semper nec. Nunc diam lorem.', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(8, 'Oliver Toothless', 'oliver.toothless@dragon.com', 'Praesent accumsan condimentum arcu, id porttitor est semper nec. Nunc diam lorem.', '2022-12-03 12:05:13', '2022-12-03 12:05:13'),
(10, 'Johny Pebble', 'jpebble@ukf.sk', 'Tato sprava vôbec nie je eastereggom!!!\r\nNezabudajte je to strašne jednoduche. Hlavne kde ste mali Ačko', '2022-12-04 00:45:30', '2022-12-04 00:45:30'),
(11, 'Pravan Otravovic', 'otravovic914@gmail.com', 'Kosowo jest serbskie!!!!!!!!!!!!!!!!', '2022-12-04 01:42:58', '2022-12-04 01:42:58');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sys_name` varchar(80) NOT NULL,
  `display_name` varchar(155) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `site` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `menu`
--

INSERT INTO `menu` (`id`, `sys_name`, `display_name`, `created_at`, `updated_at`, `site`) VALUES
(2, 'Provided Services', 'Provided <em>Services</em>', '2022-12-03 10:10:21', '2022-12-03 10:10:21', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(80) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `tel.cislo` varchar(45) NOT NULL,
  `k.meno` varchar(45) DEFAULT NULL,
  `priezvisko` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users_has_courses`
--

CREATE TABLE `users_has_courses` (
  `users_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  `datum_zapisania` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_name_UNIQUE` (`sys_name`),
  ADD KEY `fk_content_menu_idx` (`menu_id`);

--
-- Indexy pre tabuľku `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_name_UNIQUE` (`sys_name`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `users_has_courses`
--
ALTER TABLE `users_has_courses`
  ADD PRIMARY KEY (`users_id`,`courses_id`),
  ADD KEY `fk_users_has_courses_courses1_idx` (`courses_id`),
  ADD KEY `fk_users_has_courses_users1_idx` (`users_id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pre tabuľku `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_content_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Obmedzenie pre tabuľku `users_has_courses`
--
ALTER TABLE `users_has_courses`
  ADD CONSTRAINT `fk_users_has_courses_courses1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_has_courses_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
