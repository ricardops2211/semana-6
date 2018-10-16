-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2018 a las 06:52:08
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Clave_articulo` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  `Clave_fabricante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Clave_articulo`, `Nombre`, `Precio`, `Clave_fabricante`) VALUES
(1, 'Teclado', 100, 3),
(2, 'Disco duro 300 Gb', 500, 5),
(3, 'Mouse', 80, 3),
(4, 'Memoria USB', 140, 4),
(5, 'Memoria RAM', 290, 1),
(6, 'Disco duro extraÃ­ble 250 Gb', 650, 5),
(7, 'Memoria USB', 279, 1),
(8, 'DVD Rom', 450, 2),
(9, 'CD Rom', 200, 2),
(10, 'Tarjeta de red', 180, 3),
(11, 'Kylie', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `Clave_fabricante` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`Clave_fabricante`, `Nombre`) VALUES
(1, 'Kingston'),
(2, 'Adata'),
(3, 'Logitech'),
(4, 'Lexar'),
(5, 'Segate');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Clave_articulo`),
  ADD KEY `Clave_fabricante` (`Clave_fabricante`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`Clave_fabricante`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`Clave_fabricante`) REFERENCES `fabricantes` (`Clave_fabricante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
