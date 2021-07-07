-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 12:07 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myrefappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `myrefappdrivlic`
--

CREATE TABLE `myrefappdrivlic` (
  `dl_id` int(11) NOT NULL,
  `dl_cat` varchar(50) NOT NULL,
  `dl_acdate` date NOT NULL,
  `dl_expdate` date NOT NULL,
  `dl_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefappdrivlic`
--

INSERT INTO `myrefappdrivlic` (`dl_id`, `dl_cat`, `dl_acdate`, `dl_expdate`, `dl_uid`) VALUES
(1, 'B', '2016-04-20', '2025-02-27', 1),
(2, 'A1', '2019-08-01', '2025-02-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefappeduc`
--

CREATE TABLE `myrefappeduc` (
  `edu_id` int(11) NOT NULL,
  `edu_startdate` varchar(50) NOT NULL,
  `edu_enddate` varchar(50) NOT NULL,
  `edu_schoolnamehun` varchar(150) NOT NULL,
  `edu_schoolnameeng` varchar(150) NOT NULL,
  `edu_eduhun` varchar(50) NOT NULL,
  `edu_edueng` varchar(50) NOT NULL,
  `edu_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefappeduc`
--

INSERT INTO `myrefappeduc` (`edu_id`, `edu_startdate`, `edu_enddate`, `edu_schoolnamehun`, `edu_schoolnameeng`, `edu_eduhun`, `edu_edueng`, `edu_uid`) VALUES
(1, '2017.09. ', '2019.10. ', 'Pécsi SZC Simonyi Károly Szakgimnáziuma és Szakközépiskola ', 'Pécsi SZC Simonyi Károly Szakgimnáziuma és Szakközépiskola ', 'szoftverfejlesztő (OKJ 54-213-05)', 'software developer (OKJ 54-213-05)', 1),
(5, '2016.09.', '2017.05.', 'PSZC Mohácsi Radnóti Miklós Szakgimnáziuma és Szakközépiskolája', 'PSZC Mohácsi Radnóti Miklós Szakgimnáziuma és Szakközépiskolája', 'hegesztő', 'welder', 1),
(6, '2011.09.', '2015.07.', 'PSZC Mohácsi Radnóti Miklós Szakgimnáziuma és Szakközépiskolája rendészet', 'PSZC Mohácsi Radnóti Miklós Szakgimnáziuma és Szakközépiskolája rendészet', 'érettségi', 'graduation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefappexp`
--

CREATE TABLE `myrefappexp` (
  `exp_id` int(11) NOT NULL,
  `exp_deschun` varchar(50) NOT NULL,
  `exp_desceng` varchar(50) NOT NULL,
  `exp_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefappexp`
--

INSERT INTO `myrefappexp` (`exp_id`, `exp_deschun`, `exp_desceng`, `exp_uid`) VALUES
(1, 'C#, ASP.Net, MySQL ', 'C#, ASP.Net, MySQL ', 1),
(2, 'Visual Studio 2019, Unity3d, Blender 2.8 ', 'Visual Studio 2019, Unity3d, Blender 2.8 ', 1),
(3, 'GitHub, Bitbucket verziókezelő ', 'GitHub, Bitbucket verziókezelő ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefapplang`
--

CREATE TABLE `myrefapplang` (
  `lang_id` int(11) NOT NULL,
  `lang_namehun` varchar(50) NOT NULL,
  `lang_nameeng` varchar(50) NOT NULL,
  `lang_levelhun` varchar(50) NOT NULL,
  `lang_leveleng` varchar(50) NOT NULL,
  `lang_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefapplang`
--

INSERT INTO `myrefapplang` (`lang_id`, `lang_namehun`, `lang_nameeng`, `lang_levelhun`, `lang_leveleng`, `lang_uid`) VALUES
(1, 'Angol', 'English', 'haladó (beszéd & írás)', 'advanced (speach & writing)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefappnews`
--

CREATE TABLE `myrefappnews` (
  `myrefappnewsid` int(11) NOT NULL,
  `myrefappnewsnamehun` varchar(200) NOT NULL,
  `myrefappnewsnameeng` varchar(200) NOT NULL,
  `myrefappnewsdate` date NOT NULL,
  `myrefappnewsdeschun` mediumtext NOT NULL,
  `myrefappnewsdesceng` mediumtext NOT NULL,
  `myrefappnewsuserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefappnews`
--

INSERT INTO `myrefappnews` (`myrefappnewsid`, `myrefappnewsnamehun`, `myrefappnewsnameeng`, `myrefappnewsdate`, `myrefappnewsdeschun`, `myrefappnewsdesceng`, `myrefappnewsuserid`) VALUES
(1, 'Első', 'First', '2021-02-05', 'Hír', 'News', 1),
(2, 'Második Teszt Hír', 'Secon Test News', '2021-07-01', 'Teszt2', 'Test2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefapppersonaldesc`
--

CREATE TABLE `myrefapppersonaldesc` (
  `pd_id` int(11) NOT NULL,
  `pd_deschun` varchar(2000) NOT NULL,
  `pd_desceng` varchar(2000) NOT NULL,
  `pd_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefapppersonaldesc`
--

INSERT INTO `myrefapppersonaldesc` (`pd_id`, `pd_deschun`, `pd_desceng`, `pd_uid`) VALUES
(1, 'Szabadidőmet többnyire sporttal, motorozással és saját projektjeim fejlesztésével (használt szoftverek: Visual Studio, Unity, Blender, Visual Studio Code) és egyéb hobbim űzésével töltöm. Számomra hobbi és szórakozás az informatika, minden téren érdekel. Szívesen tanulok és fejlődök. Érdekelnek az újdonságok és az új technológiák. Törekszem az igényes és precíz munkára. Ha munkáról van szó céltudatos és motivált vagyok. Szeretem a kihívásokat és úgy gondolom, jó problémamegoldó képességgel rendelkezem. A szakmát igyekszem angol nyelven tanulni illetve ahol csak tudom fejleszteni az angol nyelvtudásom (pl.: Udemy, Stackoverflow). Eddig főként C# nyelven programozást tanultam/tanulok. Java-t és PHP-t (CodeIgniter, Phalcon) írtam már viszont nincs bennük nagyon tapasztalatom, viszont szívesen megtanulok más nyelveket is. Hálózat terén is rendelkezem alapszintű ismeretekkel (pl.: MikroTik, hálózatépítés, konfigurálás).  ', 'I usually spend my free time working out, riding motorcycle and developing my own project’s (used software’s: Visual Studio, Unity, Blender, Visual Studio Code). For me, hobbie and entertainment the IT, I am interested in all areas. I like to learn and develop myself. I am interested in new technologies and programming languages. I strive for demanding and precise work. When it comes to work, I am purposeful and motivated. I love challenges and I think I have a good problem solving skill. I try to learn the profession in English and wherever I can improve my English skills (eg Udemy, Stackoverflow) I do. So far, I have mainly studied programming in C # but I’m interested in other programing language as well. I wrote Java and PHP (CodeIgniter, Phalcon) before but I don\'t have much experience with them. I also have some basic knowledge in the field of networking and IT system administrator (eg: MikroTik, networking, configuration).', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefapppersonalinf`
--

CREATE TABLE `myrefapppersonalinf` (
  `pi_id` int(11) NOT NULL,
  `pi_name` varchar(50) NOT NULL,
  `pi_birthp` varchar(50) NOT NULL,
  `pi_birtht` date NOT NULL,
  `pi_address` varchar(50) NOT NULL,
  `pi_phonen` varchar(50) NOT NULL,
  `pi_email` varchar(50) NOT NULL,
  `pi_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefapppersonalinf`
--

INSERT INTO `myrefapppersonalinf` (`pi_id`, `pi_name`, `pi_birthp`, `pi_birtht`, `pi_address`, `pi_phonen`, `pi_email`, `pi_uid`) VALUES
(1, 'S. Nagy Zsolt', 'Mohács', '1997-02-27', '7759 Lánycsók Dózsa utca 36', '+36 30 188 6067', 'snagyzsolt97@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefapproles`
--

CREATE TABLE `myrefapproles` (
  `myrefapprole_id` int(11) NOT NULL,
  `myrefapprole_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefapproles`
--

INSERT INTO `myrefapproles` (`myrefapprole_id`, `myrefapprole_name`) VALUES
(1, 'master'),
(2, 'admin'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `myrefappusers`
--

CREATE TABLE `myrefappusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_e_mail` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `myrefrole_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefappusers`
--

INSERT INTO `myrefappusers` (`user_id`, `username`, `user_e_mail`, `password`, `myrefrole_id`) VALUES
(1, 'Zeki', 'snagyzsolt97@gmail.com', 'master', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myrefappworkp`
--

CREATE TABLE `myrefappworkp` (
  `wp_id` int(11) NOT NULL,
  `wp_startdate` varchar(50) NOT NULL,
  `wp_enddate` varchar(50) NOT NULL,
  `wp_wpnamehun` varchar(50) NOT NULL,
  `wp_wpnameeng` varchar(50) NOT NULL,
  `wp_rolehun` varchar(50) NOT NULL,
  `wp_roleeng` varchar(50) NOT NULL,
  `wp_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myrefappworkp`
--

INSERT INTO `myrefappworkp` (`wp_id`, `wp_startdate`, `wp_enddate`, `wp_wpnamehun`, `wp_wpnameeng`, `wp_rolehun`, `wp_roleeng`, `wp_uid`) VALUES
(1, '2020.07.', 'jelenleg / now', 'VIDIAN Kft.', 'VIDIAN Kft.', 'rendszergazda', 'IT system administrator', 1),
(2, '2019.12.', '2020.06.', 'Mohács Térségi Általános Iskola ', 'Mohács Térségi Általános Iskola ', 'rendszergazda', 'IT system administrator', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myrefappdrivlic`
--
ALTER TABLE `myrefappdrivlic`
  ADD PRIMARY KEY (`dl_id`),
  ADD KEY `dl_uid` (`dl_uid`);

--
-- Indexes for table `myrefappeduc`
--
ALTER TABLE `myrefappeduc`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `edu_uid` (`edu_uid`);

--
-- Indexes for table `myrefappexp`
--
ALTER TABLE `myrefappexp`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `exp_uid` (`exp_uid`);

--
-- Indexes for table `myrefapplang`
--
ALTER TABLE `myrefapplang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_uid` (`lang_uid`);

--
-- Indexes for table `myrefappnews`
--
ALTER TABLE `myrefappnews`
  ADD PRIMARY KEY (`myrefappnewsid`),
  ADD KEY `myrefappnewsuserid` (`myrefappnewsuserid`);

--
-- Indexes for table `myrefapppersonaldesc`
--
ALTER TABLE `myrefapppersonaldesc`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `pd_uid` (`pd_uid`);

--
-- Indexes for table `myrefapppersonalinf`
--
ALTER TABLE `myrefapppersonalinf`
  ADD PRIMARY KEY (`pi_id`),
  ADD KEY `pi_uid` (`pi_uid`);

--
-- Indexes for table `myrefapproles`
--
ALTER TABLE `myrefapproles`
  ADD PRIMARY KEY (`myrefapprole_id`);

--
-- Indexes for table `myrefappusers`
--
ALTER TABLE `myrefappusers`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `myrefrole_id` (`myrefrole_id`);

--
-- Indexes for table `myrefappworkp`
--
ALTER TABLE `myrefappworkp`
  ADD PRIMARY KEY (`wp_id`),
  ADD KEY `wp_uid` (`wp_uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myrefappdrivlic`
--
ALTER TABLE `myrefappdrivlic`
  MODIFY `dl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myrefappeduc`
--
ALTER TABLE `myrefappeduc`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myrefappexp`
--
ALTER TABLE `myrefappexp`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `myrefapplang`
--
ALTER TABLE `myrefapplang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myrefappnews`
--
ALTER TABLE `myrefappnews`
  MODIFY `myrefappnewsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myrefapppersonaldesc`
--
ALTER TABLE `myrefapppersonaldesc`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myrefapppersonalinf`
--
ALTER TABLE `myrefapppersonalinf`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myrefapproles`
--
ALTER TABLE `myrefapproles`
  MODIFY `myrefapprole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myrefappusers`
--
ALTER TABLE `myrefappusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myrefappworkp`
--
ALTER TABLE `myrefappworkp`
  MODIFY `wp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `myrefappdrivlic`
--
ALTER TABLE `myrefappdrivlic`
  ADD CONSTRAINT `myrefappdrivlic_ibfk_1` FOREIGN KEY (`dl_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefappeduc`
--
ALTER TABLE `myrefappeduc`
  ADD CONSTRAINT `myrefappeduc_ibfk_1` FOREIGN KEY (`edu_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefappexp`
--
ALTER TABLE `myrefappexp`
  ADD CONSTRAINT `myrefappexp_ibfk_1` FOREIGN KEY (`exp_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefapplang`
--
ALTER TABLE `myrefapplang`
  ADD CONSTRAINT `myrefapplang_ibfk_1` FOREIGN KEY (`lang_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefappnews`
--
ALTER TABLE `myrefappnews`
  ADD CONSTRAINT `myrefappnews_ibfk_1` FOREIGN KEY (`myrefappnewsuserid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefapppersonaldesc`
--
ALTER TABLE `myrefapppersonaldesc`
  ADD CONSTRAINT `myrefapppersonaldesc_ibfk_1` FOREIGN KEY (`pd_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefapppersonalinf`
--
ALTER TABLE `myrefapppersonalinf`
  ADD CONSTRAINT `myrefapppersonalinf_ibfk_1` FOREIGN KEY (`pi_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Constraints for table `myrefappusers`
--
ALTER TABLE `myrefappusers`
  ADD CONSTRAINT `myrefappusers_ibfk_1` FOREIGN KEY (`myrefrole_id`) REFERENCES `myrefapproles` (`myrefapprole_id`);

--
-- Constraints for table `myrefappworkp`
--
ALTER TABLE `myrefappworkp`
  ADD CONSTRAINT `myrefappworkp_ibfk_1` FOREIGN KEY (`wp_uid`) REFERENCES `myrefappusers` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
