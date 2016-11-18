-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 18 2016 г., 20:36
-- Версия сервера: 5.5.50
-- Версия PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `facebook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Comment_photo`
--

CREATE TABLE IF NOT EXISTS `Comment_photo` (
  `code_photo` date DEFAULT NULL,
  `count_comment` int(11) DEFAULT NULL,
  `slepok_comment` text,
  `date_update` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Comment_photo_info`
--

CREATE TABLE IF NOT EXISTS `Comment_photo_info` (
  `code_comment` text,
  `author_comment` text,
  `text` text,
  `date_add` datetime DEFAULT NULL,
  `who_like_comment` text,
  `like_comment_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `comment_posts`
--

CREATE TABLE IF NOT EXISTS `comment_posts` (
  `code_post` text,
  `count_comment` int(11) DEFAULT NULL,
  `slepok_comment` text,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Comment_posts_info`
--

CREATE TABLE IF NOT EXISTS `Comment_posts_info` (
  `code_comment` text,
  `author_comment` text,
  `text` text,
  `date_add` datetime DEFAULT NULL,
  `who_like_comment` text,
  `like_comment_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Friend`
--

CREATE TABLE IF NOT EXISTS `Friend` (
  `id_user` text,
  `all_friend` text,
  `recently_added` text,
  `friends_college` text,
  `friends_high_school` text,
  `friends_current_city` text,
  `friends_hometown` text,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Photo`
--

CREATE TABLE IF NOT EXISTS `Photo` (
  `code_photo` text,
  `date_add` date DEFAULT NULL,
  `src` text,
  `who_like` text,
  `who_super` text,
  `who_smile` text,
  `all_mark_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Posts`
--

CREATE TABLE IF NOT EXISTS `Posts` (
  `code_post` text,
  `date_add` date DEFAULT NULL,
  `context` text,
  `who_like` text,
  `who_super` text,
  `who_smile` text,
  `all_mark_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `slepoc_lenta`
--

CREATE TABLE IF NOT EXISTS `slepoc_lenta` (
  `id_user` text,
  `contex` text,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `User_info`
--

CREATE TABLE IF NOT EXISTS `User_info` (
  `id` text,
  `nikname` text NOT NULL,
  `work` text,
  `education` text NOT NULL,
  `residence` text,
  `pol` int(11) DEFAULT NULL,
  `family_status` text,
  `dop_inform` text,
  `events` text,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `User_info`
--

INSERT INTO `User_info` (`id`, `nikname`, `work`, `education`, `residence`, `pol`, `family_status`, `dop_inform`, `events`, `date_update`) VALUES
(NULL, '<span id="fb-timeline-cover-name">Булат Хадыров</span>', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'Булат Хадыров ', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'Булат Хадыров ', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'Булат Хадыров ', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'Артем Сытин ', 'Работа ГУ МЧС России по Оренбургской областиС 2015 г. по настоящее время ·  Оренбург, Оренбургская обл.УрИ ГПС МЧС России', 'Работа ГУ МЧС России по Оренбургской областиС 2015 г. по настоящее время ·  Оренбург, Оренбургская обл.УрИ ГПС МЧС России', NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'Булат Хадыров ', 'Работа не работаю', 'Образование учусьБеляевская СОШ', NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'Булат Хадыров ', 'Работа не работаю', 'Образование учусьБеляевская СОШ', NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
