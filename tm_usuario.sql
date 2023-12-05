-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2023 a las 22:44:38
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `envio_correos_masivos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario_nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario_apellidop` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario_apellidom` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario_correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `fecha_eliminacion` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellidop`, `usuario_apellidom`, `usuario_correo`, `fecha_creacion`, `fecha_modificacion`, `fecha_eliminacion`, `estado`) VALUES
(1, 'Jose', 'Gomez', 'Stark', 'davisanderson87@gmail.com', '2021-09-21 00:06:24', NULL, NULL, 1),
(2, 'Bruce', 'Banner', 'Roquefeler', 'anderson@gmail.com', '2021-09-21 00:06:24', NULL, NULL, 1),
(3, NULL, NULL, NULL, 'wzuniga@ranco.cl', '2021-09-22 23:01:31', NULL, NULL, 1),
(4, NULL, NULL, NULL, 'davisanderson87@gmail.com', '2021-09-22 23:04:04', NULL, NULL, 1),
(5, 'Más', 'Usuario', 'Ejemplo', 'mas_usuario@example.com', '2021-09-21 00:06:24', NULL, NULL, 1),
(6, NULL, NULL, NULL, 'luis@gmail.com', '2023-12-04 20:39:49', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
