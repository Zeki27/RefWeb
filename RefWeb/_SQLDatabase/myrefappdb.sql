-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Máj 25. 14:16
-- Kiszolgáló verziója: 10.4.19-MariaDB
-- PHP verzió: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `myrefappdb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappdrivlic`
--

CREATE TABLE `myrefappdrivlic` (
  `dl_id` int(11) NOT NULL,
  `dl_cat` varchar(50) NOT NULL,
  `dl_acdate` date NOT NULL,
  `dl_expdate` date NOT NULL,
  `dl_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappeduc`
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappexp`
--

CREATE TABLE `myrefappexp` (
  `exp_id` int(11) NOT NULL,
  `exp_deschun` varchar(50) NOT NULL,
  `exp_desceng` varchar(50) NOT NULL,
  `exp_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefapplang`
--

CREATE TABLE `myrefapplang` (
  `lang_id` int(11) NOT NULL,
  `lang_namehun` varchar(50) NOT NULL,
  `lang_nameeng` varchar(50) NOT NULL,
  `lang_levelhun` varchar(50) NOT NULL,
  `lang_leveleng` varchar(50) NOT NULL,
  `lang_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappnews`
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
-- A tábla adatainak kiíratása `myrefappnews`
--

INSERT INTO `myrefappnews` (`myrefappnewsid`, `myrefappnewsnamehun`, `myrefappnewsnameeng`, `myrefappnewsdate`, `myrefappnewsdeschun`, `myrefappnewsdesceng`, `myrefappnewsuserid`) VALUES
(1, 'Első', 'First', '2021-02-05', 'Hír', 'News', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefapppersonaldesc`
--

CREATE TABLE `myrefapppersonaldesc` (
  `pd_id` int(11) NOT NULL,
  `pd_deschun` varchar(2000) NOT NULL,
  `pd_desceng` varchar(2000) NOT NULL,
  `pd_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefapppersonalinf`
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefapproles`
--

CREATE TABLE `myrefapproles` (
  `myrefapprole_id` int(11) NOT NULL,
  `myrefapprole_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `myrefapproles`
--

INSERT INTO `myrefapproles` (`myrefapprole_id`, `myrefapprole_name`) VALUES
(1, 'master'),
(2, 'admin'),
(3, 'user');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappusers`
--

CREATE TABLE `myrefappusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_e_mail` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `myrefrole_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `myrefappusers`
--

INSERT INTO `myrefappusers` (`user_id`, `username`, `user_e_mail`, `password`, `myrefrole_id`) VALUES
(1, 'Zeki', 'snagyzsolt97@gmail.com', 'master', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappworkp`
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
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `myrefappdrivlic`
--
ALTER TABLE `myrefappdrivlic`
  ADD PRIMARY KEY (`dl_id`),
  ADD KEY `dl_uid` (`dl_uid`);

--
-- A tábla indexei `myrefappeduc`
--
ALTER TABLE `myrefappeduc`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `edu_uid` (`edu_uid`);

--
-- A tábla indexei `myrefappexp`
--
ALTER TABLE `myrefappexp`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `exp_uid` (`exp_uid`);

--
-- A tábla indexei `myrefapplang`
--
ALTER TABLE `myrefapplang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_uid` (`lang_uid`);

--
-- A tábla indexei `myrefappnews`
--
ALTER TABLE `myrefappnews`
  ADD PRIMARY KEY (`myrefappnewsid`),
  ADD KEY `myrefappnewsuserid` (`myrefappnewsuserid`);

--
-- A tábla indexei `myrefapppersonaldesc`
--
ALTER TABLE `myrefapppersonaldesc`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `pd_uid` (`pd_uid`);

--
-- A tábla indexei `myrefapppersonalinf`
--
ALTER TABLE `myrefapppersonalinf`
  ADD PRIMARY KEY (`pi_id`),
  ADD KEY `pi_uid` (`pi_uid`);

--
-- A tábla indexei `myrefapproles`
--
ALTER TABLE `myrefapproles`
  ADD PRIMARY KEY (`myrefapprole_id`);

--
-- A tábla indexei `myrefappusers`
--
ALTER TABLE `myrefappusers`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `myrefrole_id` (`myrefrole_id`);

--
-- A tábla indexei `myrefappworkp`
--
ALTER TABLE `myrefappworkp`
  ADD PRIMARY KEY (`wp_id`),
  ADD KEY `wp_uid` (`wp_uid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `myrefappdrivlic`
--
ALTER TABLE `myrefappdrivlic`
  MODIFY `dl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `myrefappeduc`
--
ALTER TABLE `myrefappeduc`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `myrefappexp`
--
ALTER TABLE `myrefappexp`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `myrefapplang`
--
ALTER TABLE `myrefapplang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `myrefappnews`
--
ALTER TABLE `myrefappnews`
  MODIFY `myrefappnewsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `myrefapppersonaldesc`
--
ALTER TABLE `myrefapppersonaldesc`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `myrefapppersonalinf`
--
ALTER TABLE `myrefapppersonalinf`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `myrefapproles`
--
ALTER TABLE `myrefapproles`
  MODIFY `myrefapprole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `myrefappusers`
--
ALTER TABLE `myrefappusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `myrefappworkp`
--
ALTER TABLE `myrefappworkp`
  MODIFY `wp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `myrefappdrivlic`
--
ALTER TABLE `myrefappdrivlic`
  ADD CONSTRAINT `myrefappdrivlic_ibfk_1` FOREIGN KEY (`dl_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefappeduc`
--
ALTER TABLE `myrefappeduc`
  ADD CONSTRAINT `myrefappeduc_ibfk_1` FOREIGN KEY (`edu_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefappexp`
--
ALTER TABLE `myrefappexp`
  ADD CONSTRAINT `myrefappexp_ibfk_1` FOREIGN KEY (`exp_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefapplang`
--
ALTER TABLE `myrefapplang`
  ADD CONSTRAINT `myrefapplang_ibfk_1` FOREIGN KEY (`lang_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefappnews`
--
ALTER TABLE `myrefappnews`
  ADD CONSTRAINT `myrefappnews_ibfk_1` FOREIGN KEY (`myrefappnewsuserid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefapppersonaldesc`
--
ALTER TABLE `myrefapppersonaldesc`
  ADD CONSTRAINT `myrefapppersonaldesc_ibfk_1` FOREIGN KEY (`pd_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefapppersonalinf`
--
ALTER TABLE `myrefapppersonalinf`
  ADD CONSTRAINT `myrefapppersonalinf_ibfk_1` FOREIGN KEY (`pi_uid`) REFERENCES `myrefappusers` (`user_id`);

--
-- Megkötések a táblához `myrefappusers`
--
ALTER TABLE `myrefappusers`
  ADD CONSTRAINT `myrefappusers_ibfk_1` FOREIGN KEY (`myrefrole_id`) REFERENCES `myrefapproles` (`myrefapprole_id`);

--
-- Megkötések a táblához `myrefappworkp`
--
ALTER TABLE `myrefappworkp`
  ADD CONSTRAINT `myrefappworkp_ibfk_1` FOREIGN KEY (`wp_uid`) REFERENCES `myrefappusers` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
