-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2019 a las 18:07:21
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `downtown`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blips`
--

CREATE TABLE `blips` (
  `id` int(250) NOT NULL,
  `type` int(250) NOT NULL,
  `color` int(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `business`
--

CREATE TABLE `business` (
  `id` int(255) NOT NULL,
  `owner` int(255) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT 'NO',
  `type` int(2) NOT NULL,
  `price` int(200) NOT NULL,
  `safeBox` int(200) NOT NULL DEFAULT '0',
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `area` varchar(250) NOT NULL,
  `number` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `business`
--

INSERT INTO `business` (`id`, `owner`, `name`, `type`, `price`, `safeBox`, `x`, `y`, `z`, `area`, `number`) VALUES
(1, 1, 'NO', 8, 1, 0, 170.500656, -972.9525, 29.9707413, 'LEGSQU', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `level` int(100) NOT NULL DEFAULT '0',
  `exp` int(255) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `register_date` varchar(30) NOT NULL,
  `last_login_date` varchar(30) NOT NULL,
  `x` double NOT NULL DEFAULT '0',
  `y` double NOT NULL DEFAULT '0',
  `z` double NOT NULL DEFAULT '0',
  `dimension` int(250) NOT NULL DEFAULT '0',
  `money` int(100) NOT NULL DEFAULT '0',
  `bank` double NOT NULL DEFAULT '0',
  `gender` int(100) NOT NULL,
  `faceFirst` int(100) NOT NULL,
  `faceSecond` int(100) NOT NULL,
  `faceMix` double NOT NULL,
  `skinFirst` int(100) NOT NULL,
  `skinSecond` int(100) NOT NULL,
  `skinMix` int(100) NOT NULL,
  `hairType` int(100) NOT NULL,
  `hairColor` int(100) NOT NULL,
  `hairHighlight` int(100) NOT NULL,
  `eyeColor` int(100) NOT NULL,
  `eyebrows` int(100) NOT NULL,
  `eyebrowsColor1` int(100) NOT NULL,
  `eyebrowsColor2` int(100) NOT NULL,
  `beard` int(100) DEFAULT '0',
  `beardColor` int(100) DEFAULT '0',
  `makeup` int(100) DEFAULT '0',
  `makeupColor` int(100) DEFAULT '0',
  `lipstick` int(100) DEFAULT '0',
  `lipstickColor` int(100) DEFAULT '0',
  `torso` int(100) NOT NULL,
  `topshirt` int(100) NOT NULL,
  `topshirtTexture` int(100) DEFAULT '0',
  `undershirt` int(100) NOT NULL,
  `legs` int(100) NOT NULL,
  `feet` int(100) NOT NULL,
  `accessory` int(100) DEFAULT '0',
  `faction` int(2) NOT NULL DEFAULT '0',
  `rank` int(1) NOT NULL DEFAULT '0',
  `job` int(2) NOT NULL DEFAULT '0',
  `health` int(100) NOT NULL DEFAULT '100',
  `armour` int(100) NOT NULL DEFAULT '100',
  `rotation` double NOT NULL DEFAULT '0',
  `dni` varchar(9) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `height` varchar(5) NOT NULL DEFAULT '0',
  `voiceMode` int(11) NOT NULL DEFAULT '0',
  `mpStatus` int(1) NOT NULL DEFAULT '0',
  `bankAccount` int(4) NOT NULL DEFAULT '0',
  `IBAN` varchar(8) NOT NULL DEFAULT '0',
  `slot1` int(11) NOT NULL DEFAULT '0',
  `slot2` int(11) NOT NULL DEFAULT '0',
  `slot3` int(11) NOT NULL DEFAULT '0',
  `slot4` int(11) NOT NULL DEFAULT '0',
  `slot5` int(11) NOT NULL DEFAULT '0',
  `slot6` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`id`, `user_id`, `level`, `exp`, `name`, `register_date`, `last_login_date`, `x`, `y`, `z`, `dimension`, `money`, `bank`, `gender`, `faceFirst`, `faceSecond`, `faceMix`, `skinFirst`, `skinSecond`, `skinMix`, `hairType`, `hairColor`, `hairHighlight`, `eyeColor`, `eyebrows`, `eyebrowsColor1`, `eyebrowsColor2`, `beard`, `beardColor`, `makeup`, `makeupColor`, `lipstick`, `lipstickColor`, `torso`, `topshirt`, `topshirtTexture`, `undershirt`, `legs`, `feet`, `accessory`, `faction`, `rank`, `job`, `health`, `armour`, `rotation`, `dni`, `age`, `height`, `voiceMode`, `mpStatus`, `bankAccount`, `IBAN`, `slot1`, `slot2`, `slot3`, `slot4`, `slot5`, `slot6`) VALUES
(1, 1, 1, 0, 'Albert Rosher', '17/12/2019', '17/12/2019', 169.3792, -967.8402, 29.98808, 0, 9999, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 3, 12, 0, 0, 3, 0, NULL, 0, NULL, 0, 0, 164, 0, 57, 2, 1, 0, 0, 0, 0, 100, 100, 0, '0', 0, '0', 0, 0, 0, '0', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` int(250) NOT NULL,
  `owner` int(250) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT 'NO',
  `type` int(2) NOT NULL,
  `price` int(200) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `area` varchar(40) NOT NULL,
  `number` int(100) NOT NULL,
  `safeBox` int(11) NOT NULL DEFAULT '0',
  `percentage` int(3) NOT NULL DEFAULT '0',
  `subsidy` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(250) NOT NULL,
  `userid` int(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` int(3) NOT NULL,
  `quantity` int(3) NOT NULL,
  `slot` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `email` varchar(100) NOT NULL,
  `socialName` varchar(100) NOT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `isLogged` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `name`, `password`, `salt`, `email`, `socialName`, `admin`, `status`, `isLogged`, `ip`) VALUES
(1, 'Muphy', '$2b$10$w87Df.QLJuHFgyZ6xfkUVeexdWyePH0BfpDb.BjcdCQ543YHTg3/q', '$2b$10$w87Df.QLJuHFgyZ6xfkUVe', 'contacto@muphy.es', 'Mxphyy', 5, 0, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles_business`
--

CREATE TABLE `vehicles_business` (
  `id` int(250) NOT NULL,
  `business` int(250) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` int(50) NOT NULL,
  `color1` int(3) NOT NULL,
  `color2` int(3) NOT NULL,
  `numberplate` varchar(8) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `rot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicles_business`
--

INSERT INTO `vehicles_business` (`id`, `business`, `type`, `price`, `color1`, `color2`, `numberplate`, `x`, `y`, `z`, `rot`) VALUES
(1, 1, 'carbonrs', 1, 1, 1, 'NEGOCIO', 166.37379455566406, -980.3388061523438, 30.091928482055664, 163.2241973876953);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blips`
--
ALTER TABLE `blips`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `vehicles_business`
--
ALTER TABLE `vehicles_business`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blips`
--
ALTER TABLE `blips`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `business`
--
ALTER TABLE `business`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vehicles_business`
--
ALTER TABLE `vehicles_business`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
