-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2021 a las 21:46:51
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisiclinicos`
--

CREATE TABLE `analisiclinicos` (
  `Codigo_Analisis` int(11) NOT NULL,
  `Codigo_Paciente` int(11) NOT NULL,
  `Fecha_Analisis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Codigo_CitaMedica` int(11) NOT NULL,
  `Numero_CitaMedica` varchar(15) NOT NULL,
  `Hora_cita_CitaMedica` varchar(15) NOT NULL,
  `Codigo_Paciente` int(11) NOT NULL,
  `Codigo_Personal` int(11) NOT NULL,
  `Estado_CitaMedica` varchar(15) NOT NULL,
  `Modalidad_CitaMedica` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleanalisiclinicos`
--

CREATE TABLE `detalleanalisiclinicos` (
  `Codigo_DetalleAnalisis` int(11) NOT NULL,
  `Codigo_AnalisisClinico` int(11) NOT NULL,
  `Codigo_Analisis` int(11) NOT NULL,
  `Muestra_DetalleAnalisis` varchar(50) NOT NULL,
  `Estado_DetalleAnalisis` varchar(20) NOT NULL,
  `Resultado_DetalleAnalisis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepago`
--

CREATE TABLE `detallepago` (
  `Codigo_DetallePago` int(11) NOT NULL,
  `Codigo_Pago` int(11) NOT NULL,
  `Codigo_Medicamento` int(11) NOT NULL,
  `Cantidad_DetallePago` int(11) NOT NULL,
  `Codigo_Analisis` int(11) NOT NULL,
  `Precio_DetallePago` double NOT NULL,
  `Total_DetallePago` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallereceta`
--

CREATE TABLE `detallereceta` (
  `Codigo_DetalleReceta` int(11) NOT NULL,
  `Codigo_Receta` int(11) NOT NULL,
  `Codigo_Medicamento` int(11) NOT NULL,
  `Cantidad_DetalleReceta` int(11) NOT NULL,
  `Indicaciones_DetalleReceta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historiaclinica`
--

CREATE TABLE `historiaclinica` (
  `Codigo_HisClinica` int(11) NOT NULL,
  `Numero_HisClinica` int(11) NOT NULL,
  `Codigo_Paciente` int(11) NOT NULL,
  `Tratamiento_HisClinica` varchar(50) NOT NULL,
  `Diganostico_HisClinica` varchar(50) NOT NULL,
  `Fecha_HisClinica` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `Codigo_Medicamento` int(11) NOT NULL,
  `Nombre_Mediamento` varchar(30) NOT NULL,
  `Descripcion_Medicamento` varchar(80) NOT NULL,
  `Precio_Medicamento` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Codigo_Paciente` int(11) NOT NULL,
  `Nombre_Paciente` varchar(50) NOT NULL,
  `LastaName_Paciente` varchar(30) NOT NULL,
  `ApellidoPat_Paciente` varchar(50) NOT NULL,
  `ApelluidoMat_Paciente` varchar(50) NOT NULL,
  `Correo_Paciente` varchar(50) NOT NULL,
  `DNI_Paciente` varchar(8) NOT NULL,
  `Username_Paciente` varchar(11) NOT NULL,
  `Password_Paciente` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `Codigo_Pago` int(11) NOT NULL,
  `Codigo_Cita` int(11) DEFAULT NULL,
  `Codigo_Analisis` int(11) DEFAULT NULL,
  `Estado_Pago` varchar(10) NOT NULL,
  `Fecha_Pago` date NOT NULL,
  `IGV_Pago` double NOT NULL,
  `SubTotal_Pago` double NOT NULL,
  `Total_Pago` double NOT NULL,
  `TipoPago_Pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `Codigo_Personal` int(11) NOT NULL,
  `Codigo_Rol` int(11) NOT NULL,
  `Nombre_Personal` varchar(50) NOT NULL,
  `LastName_Personal` varchar(30) NOT NULL,
  `ApellidoPat_Personal` varchar(50) NOT NULL,
  `ApellidoMat_Personal` varchar(50) NOT NULL,
  `Username_Personal` varchar(50) NOT NULL,
  `Password_Personal` varchar(30) NOT NULL,
  `correo_Personal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetamedica`
--

CREATE TABLE `recetamedica` (
  `Codigo_Receta` int(11) NOT NULL,
  `Codigo_Cita` int(11) NOT NULL,
  `fecha_Receta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Codigo_Rol` int(11) NOT NULL,
  `Nombre_Rol` varchar(50) NOT NULL,
  `Descripcion_Rol` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Codigo_Rol`, `Nombre_Rol`, `Descripcion_Rol`) VALUES
(1, 'Medico Externo', 'Persona encargada de consultorios Externos'),
(2, 'Informatica', 'Encargado de las TI'),
(3, 'Limpieza', 'Encargados de la Limpieza de la Clinica'),
(18, 'Planillas', 'Encargado de los pagos del Personal de todas las Areas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `Codigo_Paciente` int(11) NOT NULL,
  `Numero1_Paciente` varchar(10) NOT NULL,
  `Numero2_Paciente` varchar(10) NOT NULL,
  `Numero3_Paciente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoanalisis`
--

CREATE TABLE `tipoanalisis` (
  `Codigo_Analisis` int(11) NOT NULL,
  `Nombre_Analisis` varchar(30) NOT NULL,
  `Precio_Analisis` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Codigo` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `correo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analisiclinicos`
--
ALTER TABLE `analisiclinicos`
  ADD PRIMARY KEY (`Codigo_Analisis`),
  ADD KEY `fk_Analis_paci` (`Codigo_Paciente`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Codigo_CitaMedica`),
  ADD KEY `fk_Pac_Cit` (`Codigo_Paciente`),
  ADD KEY `fk_Per_Cit` (`Codigo_Personal`);

--
-- Indices de la tabla `detalleanalisiclinicos`
--
ALTER TABLE `detalleanalisiclinicos`
  ADD PRIMARY KEY (`Codigo_DetalleAnalisis`),
  ADD KEY `fk_Ana_Detalle` (`Codigo_AnalisisClinico`),
  ADD KEY `fk_Detalle_TipoAna` (`Codigo_Analisis`);

--
-- Indices de la tabla `detallepago`
--
ALTER TABLE `detallepago`
  ADD PRIMARY KEY (`Codigo_DetallePago`),
  ADD KEY `fk_Detalle_Pago` (`Codigo_Pago`);

--
-- Indices de la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  ADD PRIMARY KEY (`Codigo_DetalleReceta`),
  ADD KEY `fk_Detall_Receta` (`Codigo_DetalleReceta`),
  ADD KEY `fk_Detalle_Med` (`Codigo_Medicamento`),
  ADD KEY `fk_Detalle_Receta` (`Codigo_Receta`);

--
-- Indices de la tabla `historiaclinica`
--
ALTER TABLE `historiaclinica`
  ADD PRIMARY KEY (`Codigo_HisClinica`),
  ADD KEY `fk_pac_Hist` (`Codigo_Paciente`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`Codigo_Medicamento`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Codigo_Paciente`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Codigo_Pago`),
  ADD KEY `fk_Cita_Pago` (`Codigo_Cita`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Codigo_Personal`),
  ADD KEY `fk_Rol_Per` (`Codigo_Rol`);

--
-- Indices de la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  ADD PRIMARY KEY (`Codigo_Receta`),
  ADD KEY `fk_Rec_Cita` (`Codigo_Cita`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Codigo_Rol`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD KEY `fk_Tel_Pac` (`Codigo_Paciente`);

--
-- Indices de la tabla `tipoanalisis`
--
ALTER TABLE `tipoanalisis`
  ADD PRIMARY KEY (`Codigo_Analisis`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analisiclinicos`
--
ALTER TABLE `analisiclinicos`
  MODIFY `Codigo_Analisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Codigo_CitaMedica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleanalisiclinicos`
--
ALTER TABLE `detalleanalisiclinicos`
  MODIFY `Codigo_DetalleAnalisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallepago`
--
ALTER TABLE `detallepago`
  MODIFY `Codigo_DetallePago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  MODIFY `Codigo_DetalleReceta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historiaclinica`
--
ALTER TABLE `historiaclinica`
  MODIFY `Codigo_HisClinica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `Codigo_Medicamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `Codigo_Paciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `Codigo_Pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `Codigo_Personal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  MODIFY `Codigo_Receta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Codigo_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipoanalisis`
--
ALTER TABLE `tipoanalisis`
  MODIFY `Codigo_Analisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisiclinicos`
--
ALTER TABLE `analisiclinicos`
  ADD CONSTRAINT `fk_Analis_paci` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `paciente` (`Codigo_Paciente`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `fk_Pac_Cit` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `paciente` (`Codigo_Paciente`),
  ADD CONSTRAINT `fk_Per_Cit` FOREIGN KEY (`Codigo_Personal`) REFERENCES `personal` (`Codigo_Personal`);

--
-- Filtros para la tabla `detalleanalisiclinicos`
--
ALTER TABLE `detalleanalisiclinicos`
  ADD CONSTRAINT `fk_Ana_Detalle` FOREIGN KEY (`Codigo_AnalisisClinico`) REFERENCES `analisiclinicos` (`Codigo_Analisis`),
  ADD CONSTRAINT `fk_Detalle_TipoAna` FOREIGN KEY (`Codigo_Analisis`) REFERENCES `tipoanalisis` (`Codigo_Analisis`);

--
-- Filtros para la tabla `detallepago`
--
ALTER TABLE `detallepago`
  ADD CONSTRAINT `fk_Detalle_Pago` FOREIGN KEY (`Codigo_Pago`) REFERENCES `pagos` (`Codigo_Pago`);

--
-- Filtros para la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  ADD CONSTRAINT `fk_Detalle_Med` FOREIGN KEY (`Codigo_Medicamento`) REFERENCES `medicamentos` (`Codigo_Medicamento`),
  ADD CONSTRAINT `fk_Detalle_Receta` FOREIGN KEY (`Codigo_Receta`) REFERENCES `recetamedica` (`Codigo_Receta`);

--
-- Filtros para la tabla `historiaclinica`
--
ALTER TABLE `historiaclinica`
  ADD CONSTRAINT `fk_pac_Hist` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `paciente` (`Codigo_Paciente`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_Cita_Pago` FOREIGN KEY (`Codigo_Cita`) REFERENCES `citas` (`Codigo_CitaMedica`);

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `fk_Rol_Per` FOREIGN KEY (`Codigo_Rol`) REFERENCES `rol` (`Codigo_Rol`);

--
-- Filtros para la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  ADD CONSTRAINT `fk_Rec_Cita` FOREIGN KEY (`Codigo_Cita`) REFERENCES `citas` (`Codigo_CitaMedica`);

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `fk_Tel_Pac` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `paciente` (`Codigo_Paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
