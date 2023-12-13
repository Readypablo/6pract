-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2023 г., 17:37
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_six`
--

-- --------------------------------------------------------

--
-- Структура таблицы `csv`
--

CREATE TABLE `csv` (
  `id` int NOT NULL,
  `info` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `csv`
--

INSERT INTO `csv` (`id`, `info`) VALUES
(2, '10,3000');

-- --------------------------------------------------------

--
-- Структура таблицы `json`
--

CREATE TABLE `json` (
  `id` int NOT NULL,
  `info` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `json`
--

INSERT INTO `json` (`id`, `info`) VALUES
(9, '{\r\n    \"name\": \"John\",\r\n    \"age\": 30,\r\n    \"key\": 30,\r\n    \"city\": \"New York\"\r\n  }');

-- --------------------------------------------------------

--
-- Структура таблицы `xml`
--

CREATE TABLE `xml` (
  `id` int NOT NULL,
  `info` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `xml`
--

INSERT INTO `xml` (`id`, `info`) VALUES
(60, 'Продукт №315. Наименование: фрукт, цена: $55.90 скидка: 500%');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `csv`
--
ALTER TABLE `csv`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `json`
--
ALTER TABLE `json`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xml`
--
ALTER TABLE `xml`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `csv`
--
ALTER TABLE `csv`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `json`
--
ALTER TABLE `json`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `xml`
--
ALTER TABLE `xml`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
