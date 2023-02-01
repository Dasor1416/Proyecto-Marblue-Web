-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2023 a las 19:13:26
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_proyecto` int(20) NOT NULL,
  `Nombre` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_c` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_f` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `presupuesto` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre_extra` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `valor_extra` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `usuario_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_proyecto`, `Nombre`, `fecha_c`, `fecha_f`, `presupuesto`, `nombre_extra`, `valor_extra`, `total`, `usuario_id`) VALUES
(1, 'Venta de cabello', '2023-01-16', '2023-02-09', '600000', 'Puntos de fuga minimizados', '200000', '800000', 1),
(2, 'Pepitolepiu', '2023-01-16', '2023-02-08', '600000', 'Puntos de fuga minimizados', '200000', '800000', 2),
(3, 'Daniel', '2023-01-22', '2023-02-09', '1300000', 'Formulario para captura de Leads', '200000', '1500000', 1),
(4, 'Daniel', '2023-01-22', '2023-02-09', '1300000', 'Formulario para captura de Leads', '200000', '1500000', 1),
(5, 'Venta de arena ', '2023-01-30', '2023-02-11', '1800000', 'Tienda Online 100% Administrable', '1000000', '2800000', 1),
(6, 'Venta de arena ', '2023-01-30', '2023-02-11', '1800000', 'Tienda Online 100% Administrable', '1000000', '2800000', 1),
(7, 'Daniel', '2023-01-22', '2023-01-31', '1300000', 'Landing Page administrable', '200000', '1500000', 1),
(8, 'Testing', '2023-01-23', '2023-02-11', '600000', 'Banner de Testimonios', '200000', '800000', 1),
(9, 'Testing', '2023-01-23', '2023-02-11', '1300000', 'Puntos de fuga minimizados', '200000', '1500000', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_proyecto`),
  ADD KEY `Nombre` (`Nombre`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_proyecto` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
