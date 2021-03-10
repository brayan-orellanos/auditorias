-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2021 a las 19:53:54
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
-- Base de datos: `Auditorias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Auditoria`
--

CREATE TABLE `Auditoria` (
  `id` int(20) NOT NULL,
  `tipo` int(20) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Auditoria`
--

INSERT INTO `Auditoria` (`id`, `tipo`, `name`) VALUES
(1, 1, 'Auditoría externa'),
(2, 1, 'Auditoría interna'),
(3, 2, 'Auditoría financiera '),
(4, 2, 'Auditoría administrativa'),
(5, 2, 'Auditoría operacional'),
(6, 2, 'Auditoría integral'),
(7, 2, 'Auditoría gubernamental'),
(8, 2, 'Auditoría de sistemas'),
(9, 3, 'Auditoría al área médica (evaluación médico-sanitaria)'),
(10, 3, 'Auditoría al desarrollo de obras y construcciones (evaluación de ingeniería)'),
(11, 3, 'Auditoría fiscal'),
(12, 3, 'Auditoría laboral'),
(13, 3, 'Auditoría de proyectos de inversión'),
(14, 3, 'Auditoría a la caja chica o caja mayor (arqueos)'),
(15, 3, 'Auditoría al manejo de mercancías (inventarios)'),
(16, 3, 'Auditoría ambiental'),
(17, 3, 'Auditoría de sistemas'),
(18, 4, 'Auditoría informática'),
(19, 4, 'Auditoría con la computadora'),
(20, 4, 'Auditoría sin la computadora'),
(21, 4, 'Auditoría a la gestión informática'),
(22, 4, 'Auditoría al sistema de cómputo'),
(23, 4, 'Auditoría alrededor de la computadora'),
(24, 4, 'Auditoría de la seguridad de sistemas computacionales'),
(25, 4, 'Auditoría a los sistemas de redes'),
(26, 4, 'Auditoría integral a los centros de cómputo'),
(27, 4, 'Auditoría ISO-9000 a los sistemas computacionales'),
(28, 4, 'Auditoría outsourcing'),
(29, 4, 'Auditoría ergonómica de sistemas computacionales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoriaDescripcion`
--

CREATE TABLE `auditoriaDescripcion` (
  `id` int(20) NOT NULL,
  `auditoria` varchar(80) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoriaObjetivos`
--

CREATE TABLE `auditoriaObjetivos` (
  `id` int(20) NOT NULL,
  `auditoria` varchar(80) NOT NULL,
  `objetivo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TiposDeAuditoria`
--

CREATE TABLE `TiposDeAuditoria` (
  `id` int(20) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `TiposDeAuditoria`
--

INSERT INTO `TiposDeAuditoria` (`id`, `name`) VALUES
(1, 'Auditorías por su lugar de aplicación'),
(2, 'Auditorías por su área de aplicación'),
(3, 'Auditorías especializadas en áreas específicas'),
(4, 'Auditoría de sistemas computacionales');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Auditoria`
--
ALTER TABLE `Auditoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `auditoriaDescripcion`
--
ALTER TABLE `auditoriaDescripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auditoria` (`auditoria`);

--
-- Indices de la tabla `auditoriaObjetivos`
--
ALTER TABLE `auditoriaObjetivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auditoria` (`auditoria`);

--
-- Indices de la tabla `TiposDeAuditoria`
--
ALTER TABLE `TiposDeAuditoria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Auditoria`
--
ALTER TABLE `Auditoria`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `auditoriaDescripcion`
--
ALTER TABLE `auditoriaDescripcion`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auditoriaObjetivos`
--
ALTER TABLE `auditoriaObjetivos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TiposDeAuditoria`
--
ALTER TABLE `TiposDeAuditoria`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Auditoria`
--
ALTER TABLE `Auditoria`
  ADD CONSTRAINT `Auditoria_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `TiposDeAuditoria` (`id`);

--
-- Filtros para la tabla `auditoriaDescripcion`
--
ALTER TABLE `auditoriaDescripcion`
  ADD CONSTRAINT `auditoriaDescripcion_ibfk_1` FOREIGN KEY (`auditoria`) REFERENCES `Auditoria` (`name`);

--
-- Filtros para la tabla `auditoriaObjetivos`
--
ALTER TABLE `auditoriaObjetivos`
  ADD CONSTRAINT `auditoriaObjetivos_ibfk_1` FOREIGN KEY (`auditoria`) REFERENCES `Auditoria` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
