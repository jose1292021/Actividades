-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-09-2024 a las 17:44:49
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

DROP TABLE IF EXISTS `guia`;
CREATE TABLE IF NOT EXISTS `guia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `tipo_documento` tinyint NOT NULL,
  `documento` char(12) NOT NULL,
  `celular` char(12) NOT NULL,
  `correo` char(20) NOT NULL,
  `estracto` char(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `guia`
--

INSERT INTO `guia` (`id`, `fecha_sys`, `nombres`, `apellidos`, `fecha_nacimiento`, `tipo_documento`, `documento`, `celular`, `correo`, `estracto`) VALUES
(2, '2024-09-30 12:24:02', 'jose', 'moreno', '1992-05-28', 0, '1105683934', '3118756627', 'jmoreno@gmail,com', '1'),
(3, '2024-09-12 11:20:32', 'lina', 'lozano', '1991-04-12', 0, '122344658', '312748592', 'lina@gmail.com', '2'),
(4, '2024-09-30 12:30:12', 'laura', 'terreros', '2012-05-30', 0, '1122733636', '3204752345', 'laura@gmail.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

DROP TABLE IF EXISTS `transferencias`;
CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(13) NOT NULL,
  `num_destino` char(13) NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(2, '2024-09-30 12:08:12', '3118756627', '3127893693', 10000),
(3, '2024-09-30 12:38:12', '3127893693', '3133028075', 20000),
(4, '2024-09-30 12:40:12', '3248593623', '3123458590', 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `valor` int NOT NULL,
  `documento` char(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha_sys`, `valor`, `documento`) VALUES
(1, '2024-09-30 12:41:12', 120000, '1105683934'),
(2, '2024-09-30 12:42:12', 10000, '93121921'),
(3, '2024-09-30 12:43:12', 30000, '65740626');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
