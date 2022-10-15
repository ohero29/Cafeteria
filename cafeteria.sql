-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2022 a las 06:51:08
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoinventario`
--

CREATE TABLE `productoinventario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Referencia` varchar(50) NOT NULL,
  `Precio` int(10) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Cantidad` int(10) NOT NULL,
  `FechaCreacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productoinventario`
--

INSERT INTO `productoinventario` (`Id`, `Nombre`, `Referencia`, `Precio`, `Categoria`, `Cantidad`, `FechaCreacion`) VALUES
(1, 'Gaseosa Postobon', '2022001', 3000, 'Bebidas', 10, '2022-10-03'),
(2, 'Paquete de papas', '202202', 2000, 'Comidas', 13, '2022-10-01'),
(3, 'Chocolatina', '202203', 1500, 'Comidas', 20, '2022-10-05'),
(4, 'Yogurt', '2022004', 2500, 'Bebidas', 5, '2022-10-10'),
(5, 'Empanada', '2022005', 1000, 'Comidas', 15, '2022-10-13'),
(6, 'Agua botella', '2022006', 2000, 'Bebidas', 14, '2022-10-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoventas`
--

CREATE TABLE `productoventas` (
  `IdVenta` int(11) NOT NULL,
  `IdProductoVenta` int(50) NOT NULL,
  `CantidadVenta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productoventas`
--

INSERT INTO `productoventas` (`IdVenta`, `IdProductoVenta`, `CantidadVenta`) VALUES
(1, 2, 1),
(2, 5, 1),
(3, 1, 5),
(5, 2, 2),
(6, 2, 2),
(7, 2, 3),
(8, 6, 5),
(9, 6, 1),
(10, 6, 3),
(11, 6, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productoinventario`
--
ALTER TABLE `productoinventario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productoventas`
--
ALTER TABLE `productoventas`
  ADD PRIMARY KEY (`IdVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productoinventario`
--
ALTER TABLE `productoinventario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productoventas`
--
ALTER TABLE `productoventas`
  MODIFY `IdVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
