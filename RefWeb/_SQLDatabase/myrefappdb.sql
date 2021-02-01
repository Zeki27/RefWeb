-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Feb 01. 15:26
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.0

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
CREATE DATABASE IF NOT EXISTS `myrefappdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myrefappdb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `myrefappnews`
--

CREATE TABLE `myrefappnews` (
  `myrefappnewsid` int(11) NOT NULL,
  `myrefappnewsname` varchar(30) NOT NULL,
  `myrefappnewsdate` date NOT NULL,
  `myrefappnewsdescription` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `myrefappnews`
--

INSERT INTO `myrefappnews` (`myrefappnewsid`, `myrefappnewsname`, `myrefappnewsdate`, `myrefappnewsdescription`) VALUES
(1, 'First new', '2021-02-01', 'Test'),
(2, 'Second Test New', '1997-02-27', 'I was born');

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

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `myrefappnews`
--
ALTER TABLE `myrefappnews`
  ADD PRIMARY KEY (`myrefappnewsid`);

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
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `myrefappnews`
--
ALTER TABLE `myrefappnews`
  MODIFY `myrefappnewsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `myrefappusers`
--
ALTER TABLE `myrefappusers`
  ADD CONSTRAINT `myrefappusers_ibfk_1` FOREIGN KEY (`myrefrole_id`) REFERENCES `myrefapproles` (`myrefapprole_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
