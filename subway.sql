-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2022 a las 15:25:17
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `subway`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fechanac` date NOT NULL,
  `sexo` varchar(11) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(5) NOT NULL,
  `pais` varchar(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `codigopostal` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `code` varchar(225) NOT NULL,
  `name` varchar(70) NOT NULL,
  `image` varchar(225) NOT NULL,
  `category` varchar(70) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`pid`, `code`, `name`, `image`, `category`, `price`, `discount`) VALUES
(1, 'EDNALAN01', 'SUBWAY ATUN', '1.jpg', 'SANDWICH', 136, 15),
(2, 'EDNALAN02', 'SUBWAY PIZZA', '2.jpg', 'SANDWICH', 146, 15),
(3, 'EDNALAN03', 'SUBWAY COSTILLA BBQ', '3.jpg', 'SANDWICH', 149, 15),
(4, 'EDNALAN04', 'SUBWAY TERIYAKI', '4.jpg', 'SANDWICH', 146, 15),
(5, 'EDNALAN05', 'SUBWAY MELT', '5.jpg', 'SANDWICH', 149, 15),
(6, 'EDNALAN06', 'SUBWAY JAMON', '6.jpg', 'SANDWICH', 136, 15),
(7, 'EDNALAN07', 'ENSALADA ATUN', '7.jpg', 'ENSALADAS', 134, 15),
(8, 'EDNALAN08', 'ENSALADA POLLO', '8.jpg', 'ENSALADAS', 144, 15),
(9, 'EDNALAN09', 'ENSALADA RES', '9.jpg', 'ENSALADAS', 146, 0),
(10, 'EDNALAN10', 'AGUA', '10.jpg', 'BEBIDAS', 30, 0),
(11, 'EDNALAN11', 'CAFE', '11.jpg', 'BEBIDAS', 55, 0),
(12, 'EDNALAN12', 'REFRESCOS', '12.jpg', 'BEBIDAS', 45, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`idDireccion`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
