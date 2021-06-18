-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2021 a las 21:37:53
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
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `Codigo_Almacen` int(11) NOT NULL,
  `Codigo_Medicamento` int(11) NOT NULL,
  `Ingreso_Almacen` int(11) NOT NULL,
  `Salida_Almacen` int(11) NOT NULL,
  `fecha_Almacen` date NOT NULL,
  `Stock_Almacen` int(11) NOT NULL,
  `Cod_Operacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`Codigo_Almacen`, `Codigo_Medicamento`, `Ingreso_Almacen`, `Salida_Almacen`, `fecha_Almacen`, `Stock_Almacen`, `Cod_Operacion`) VALUES
(1, 4, 30, 0, '2021-06-05', 30, 0),
(2, 2, 25, 0, '2021-06-05', 25, 0),
(3, 10, 9, 0, '2021-06-05', 9, 0),
(4, 2, 30, 0, '2021-06-05', 55, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisiclinicos_orden`
--

CREATE TABLE `analisiclinicos_orden` (
  `Codigo_OrdenAnalisis` int(11) NOT NULL,
  `Codigo_Paciente` int(11) NOT NULL,
  `Codigo_Analisis` int(11) NOT NULL,
  `Muestra_OrdenAnalisis` varchar(50) NOT NULL,
  `Resultado_OrdenAnalisis` varchar(50) NOT NULL,
  `Estado_OrdenAnalisi` varchar(20) NOT NULL,
  `EstadoPago_OrdenAnalisis` varchar(20) NOT NULL,
  `FechaEntrega_OrdenAnalisis` date DEFAULT NULL,
  `FechaSolicitud_OrdenAnalisis` date DEFAULT NULL,
  `CodCita_Referencia` int(11) DEFAULT NULL,
  `FechaRecepcionMuestra_OrdenAnalisis` date DEFAULT NULL,
  `Codigo_Recipiente` int(11) NOT NULL,
  `Codigo_Laboratista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `analisiclinicos_orden`
--

INSERT INTO `analisiclinicos_orden` (`Codigo_OrdenAnalisis`, `Codigo_Paciente`, `Codigo_Analisis`, `Muestra_OrdenAnalisis`, `Resultado_OrdenAnalisis`, `Estado_OrdenAnalisi`, `EstadoPago_OrdenAnalisis`, `FechaEntrega_OrdenAnalisis`, `FechaSolicitud_OrdenAnalisis`, `CodCita_Referencia`, `FechaRecepcionMuestra_OrdenAnalisis`, `Codigo_Recipiente`, `Codigo_Laboratista`) VALUES
(1, 5, 1, '', '', 'Pendiente', 'Pendiente', NULL, '2021-06-04', 25, NULL, 4, 1),
(2, 5, 2, 'Color Amarillento', '	Bacterias', 'Atendido', 'Pendiente', '2021-06-05', '2021-06-05', 25, '2021-06-05', 4, 5),
(4, 5, 1, 'Color verdoso', 'Infeccion Stomacal', 'Atendido', 'Pendiente', '2021-06-11', '2021-06-11', 27, '2021-06-11', 4, 5),
(5, 18, 1, 'Amarillento ', 'Leucocitos altos', 'Atendido', 'Pendiente', '2021-06-11', '2021-06-11', 32, '2021-06-11', 5, 5),
(6, 18, 2, 'Espesa rojisa', 'Hemoglobina baja ', 'Atendido', 'Pendiente', '2021-06-11', '2021-06-11', 32, '2021-06-11', 2, 5),
(7, 20, 1, '', '', 'Pendiente', 'Pendiente', NULL, '2021-06-13', 41, NULL, 1, 1),
(8, 5, 1, '', '', 'Pendiente', 'Pendiente', NULL, '2021-06-13', 39, NULL, 1, 1),
(9, 18, 1, '', '', 'Pendiente', 'Pendiente', NULL, '2021-06-13', 31, NULL, 1, 1),
(10, 18, 2, '', '', 'Pendiente', 'Pendiente', NULL, '2021-06-13', 31, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Codigo_CitaMedica` int(11) NOT NULL,
  `Codigo_DetalleHorario` int(11) NOT NULL,
  `Codigo_Paciente` int(11) NOT NULL,
  `Codigo_Personal` int(11) NOT NULL,
  `Estado_CitaMedica` varchar(15) NOT NULL,
  `Modalidad_CitaMedica` varchar(50) NOT NULL,
  `Fecha_CitaMedica` date NOT NULL,
  `Numero_Cita` varchar(11) DEFAULT NULL,
  `Tratamiento_Cita` varchar(150) DEFAULT NULL,
  `Diagnostico_Cita` varchar(150) DEFAULT NULL,
  `FechaAtencion_Cita` date DEFAULT NULL,
  `Indicaciones_Cita` varchar(150) DEFAULT NULL,
  `EstadoReceta_Cita` varchar(15) DEFAULT NULL,
  `Estado_Pago_Cita` varchar(20) DEFAULT NULL,
  `Oxigenacion_Cita` varchar(10) DEFAULT NULL,
  `Precion_Cita` varchar(10) DEFAULT NULL,
  `Peso_Cita` varchar(10) DEFAULT NULL,
  `Talla_Cita` varchar(10) DEFAULT NULL,
  `Temperatura_Cita` varchar(10) DEFAULT NULL,
  `MotivoConsulta_Cita` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`Codigo_CitaMedica`, `Codigo_DetalleHorario`, `Codigo_Paciente`, `Codigo_Personal`, `Estado_CitaMedica`, `Modalidad_CitaMedica`, `Fecha_CitaMedica`, `Numero_Cita`, `Tratamiento_Cita`, `Diagnostico_Cita`, `FechaAtencion_Cita`, `Indicaciones_Cita`, `EstadoReceta_Cita`, `Estado_Pago_Cita`, `Oxigenacion_Cita`, `Precion_Cita`, `Peso_Cita`, `Talla_Cita`, `Temperatura_Cita`, `MotivoConsulta_Cita`) VALUES
(11, 6, 7, 4, 'Reservado', 'Precencial', '2021-05-24', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', '', '', '', '', '', ''),
(12, 11, 8, 4, 'Atendido', 'Precencial', '2021-05-18', 'Cl-000012', 'Pastillas expectorantes', 'Covid', '2021-05-18', 'No exponerse a cambios de temperatura', 'Generado', 'Falta', '', '', '', '', '', ''),
(13, 13, 9, 3, 'Reservado', 'Precencial', '2021-05-20', NULL, 'Amoxicilina 600 para los nervios', 'Desequilibrio emocional', NULL, 'No exponerse a cambios de temperatura', 'Falta', 'Falta', '', '', '', '', '', ''),
(14, 13, 2, 3, 'Reservado', 'Emergencia', '2021-05-20', NULL, 'Amoxicilina 600 para los nervios', 'Desequilibrio emocional', NULL, 'No exponerse a cambios de temperatura', 'Falta', 'Falta', '', '', '', '', '', ''),
(15, 14, 16, 15, 'Atendido', 'Precencial', '2021-05-22', 'Cl-000015', 'Amoxicilina 600 para los nervios', 'Desequilibrio emocional', '2021-05-19', 'Tomar cada tableta cada 12 horas', 'Generado', 'Falta', '', '', '', '', '', ''),
(16, 14, 17, 15, 'Reservado', 'Emergencia', '2021-05-22', NULL, NULL, NULL, NULL, 'Tomar cada tableta cada 12 horas', 'Falta', 'Falta', '', '', '', '', '', ''),
(17, 17, 5, 4, 'Reservado', 'Seleccione', '2021-05-21', NULL, NULL, NULL, NULL, 'Tomar cada tableta cada 12 horas', 'Falta', 'Falta', '', '', '', '', '', ''),
(18, 17, 16, 4, 'Reservado', 'Virtual', '2021-05-21', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', '', '', '', '', '', ''),
(19, 17, 18, 4, 'Atendido', 'Precencial', '2021-05-21', 'Cl-000019', 'Antiflamatorios', 'Covid', '2021-05-21', 'CAda  8 horas', 'Generado', 'Falta', '', '', '', '', '', ''),
(20, 17, 7, 4, 'Reservado', 'Emergencia', '2021-05-21', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', '', '', '', '', '', ''),
(21, 16, 18, 13, 'Atendido', 'Precencial', '2021-05-21', 'Cl-000021', 'Amoxicilina por 4 dias', 'Infeccion Bacterial', '2021-05-21', 'Despues del almuerzo', 'Generado', 'Falta', '', '', '', '', '', ''),
(22, 17, 18, 4, 'Atendido', 'Precencial', '2021-05-21', 'Cl-000022', 'Antiestaminicos', 'Leusemia', '2021-05-21', 'Tomar pastillas cada 8 horas', 'Generado', 'Falta', '', '', '', '', '', ''),
(23, 17, 19, 4, 'Atendido', 'Precencial', '2021-05-21', 'Cl-000023', 'Paracetamol para aliviar el dolor', 'Dolor Intermuscular', '2021-05-21', 'No exponerse a corrientes de aire ni hacer ejercicio', 'Generado', 'Falta', '', '', '', '', '', ''),
(24, 13, 5, 3, 'Proceso', 'Precencial', '2021-06-03', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', '1', '2', '22', '222', '222', '22'),
(25, 9, 5, 3, 'Reservado', 'Precencial', '2021-06-04', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 9, 5, 3, 'Reservado', 'Precencial', '2021-06-04', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 9, 5, 3, 'Atendido', 'Precencial', '2021-06-11', 'Cl-000027', 'Aspirina', 'Dolro de barriga', '2021-06-11', 'Tomar agua caliente', 'Generado', 'Falta', '95', '102', '95', '102', '45', 'Dolor de Barriga'),
(28, 18, 2, 3, 'Reservado', 'Precencial', '2021-06-12', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 9, 2, 3, 'Reservado', 'Emergencia', '2021-06-11', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 9, 5, 3, 'Reservado', 'Precencial', '2021-06-11', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 18, 18, 3, 'Reservado', 'Precencial', '2021-06-12', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 9, 18, 3, 'Atendido', 'Virtual', '2021-06-11', 'Cl-000032', 'Aspirirna X 6 Dias', 'Migrana', '2021-06-11', 'Beber mucha agua', 'Generado', 'Falta', '93', '101', '50', '1.70', '35', 'Dolor de Cabeza'),
(36, 14, 5, 15, 'Reservado', 'Precencial', '2021-06-12', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 10, 5, 3, 'Reservado', 'Precencial', '2021-06-12', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 10, 5, 6, 'Reservado', 'Precencial', '2021-06-12', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 14, 5, 3, 'Atendido', 'Seleccione', '2021-06-12', 'Cl-000039', 'Paracetamol', 'Tos', '2021-06-13', 'No cambios de Temperatura', 'Generado', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 14, 18, 15, 'Reservado', 'Seleccione', '2021-06-12', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 18, 20, 3, 'Atendido', 'Precencial', '2021-06-12', 'Cl-000041', 'Paracetamol 600mg', 'Covid', '2021-06-13', 'Tomar pastillas y no exponerse a cambios de temperatura', 'Generado', 'Falta', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes_analisis`
--

CREATE TABLE `componentes_analisis` (
  `Codigo_ComponenteAnalisis` int(11) NOT NULL,
  `Codigo_OrdenAnalisis` int(11) NOT NULL,
  `Apecto_ComponenteAnalisis` varchar(25) NOT NULL,
  `Color__ComponenteAnalisis` varchar(25) NOT NULL,
  `PH_ComponenteAnalisis` varchar(20) NOT NULL,
  `Densidad_ComponenteAnalisis` varchar(20) NOT NULL,
  `Leucocitos_ComponenteAnalisis` varchar(20) NOT NULL,
  `Hematies_ComponenteAnalisis` varchar(20) NOT NULL,
  `CelulasEpit_ComponenteAnalisis` varchar(20) NOT NULL,
  `MucusFibras_ComponenteAnalisis` varchar(20) NOT NULL,
  `CristalesUra_ComponenteAnalisis` varchar(20) NOT NULL,
  `CristalesOxx_ComponenteAnalisis` varchar(20) NOT NULL,
  `CristalesFoss_ComponenteAnalisis` varchar(20) NOT NULL,
  `CristalesColes_ComponenteAnalisis` varchar(20) NOT NULL,
  `CilindrosHialinos_ComponenteAnalisis` varchar(20) NOT NULL,
  `CilindrosGranu_ComponenteAnalisis` varchar(20) NOT NULL,
  `CilindrosLeuco_ComponenteAnalisis` varchar(20) NOT NULL,
  `EsponjasMico_ComponenteAnalisis` varchar(20) NOT NULL,
  `TrichomonasVa_ComponenteAnalisis` varchar(20) NOT NULL,
  `Bacterias_ComponenteAnalisis` varchar(20) NOT NULL,
  `Piocitos_ComponenteAnalisis` varchar(20) NOT NULL,
  `Acumulos_ComponenteAnalisis` varchar(20) NOT NULL,
  `Leucocitarios_ComponenteAnalisis` varchar(20) NOT NULL,
  `Glucosa_ComponenteAnalisis` varchar(20) NOT NULL,
  `Proteina_ComponenteAnalisis` varchar(20) NOT NULL,
  `Cetona_ComponenteAnalisis` varchar(20) NOT NULL,
  `Urobilinogeno_ComponenteAnalisis` varchar(20) NOT NULL,
  `Billrubina_ComponenteAnalisis` varchar(20) NOT NULL,
  `Sangre_ComponenteAnalisis` varchar(20) NOT NULL,
  `Nitrito_ComponenteAnalisis` varchar(20) NOT NULL,
  `Hemoglobina_ComponenteAnalisis` varchar(20) NOT NULL,
  `Hematrocito_ComponenteAnalisis` varchar(20) NOT NULL,
  `Plaquetas_ComponenteAnalisis` varchar(20) NOT NULL,
  `NeutrofilosSegmentales_ComponenteAnalisis` varchar(20) NOT NULL,
  `Linfocitos_ComponenteAnalisis` varchar(20) NOT NULL,
  `Monocitos_ComponenteAnalisis` varchar(20) NOT NULL,
  `Basofitos_ComponenteAnalisis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes_analisis`
--

INSERT INTO `componentes_analisis` (`Codigo_ComponenteAnalisis`, `Codigo_OrdenAnalisis`, `Apecto_ComponenteAnalisis`, `Color__ComponenteAnalisis`, `PH_ComponenteAnalisis`, `Densidad_ComponenteAnalisis`, `Leucocitos_ComponenteAnalisis`, `Hematies_ComponenteAnalisis`, `CelulasEpit_ComponenteAnalisis`, `MucusFibras_ComponenteAnalisis`, `CristalesUra_ComponenteAnalisis`, `CristalesOxx_ComponenteAnalisis`, `CristalesFoss_ComponenteAnalisis`, `CristalesColes_ComponenteAnalisis`, `CilindrosHialinos_ComponenteAnalisis`, `CilindrosGranu_ComponenteAnalisis`, `CilindrosLeuco_ComponenteAnalisis`, `EsponjasMico_ComponenteAnalisis`, `TrichomonasVa_ComponenteAnalisis`, `Bacterias_ComponenteAnalisis`, `Piocitos_ComponenteAnalisis`, `Acumulos_ComponenteAnalisis`, `Leucocitarios_ComponenteAnalisis`, `Glucosa_ComponenteAnalisis`, `Proteina_ComponenteAnalisis`, `Cetona_ComponenteAnalisis`, `Urobilinogeno_ComponenteAnalisis`, `Billrubina_ComponenteAnalisis`, `Sangre_ComponenteAnalisis`, `Nitrito_ComponenteAnalisis`, `Hemoglobina_ComponenteAnalisis`, `Hematrocito_ComponenteAnalisis`, `Plaquetas_ComponenteAnalisis`, `NeutrofilosSegmentales_ComponenteAnalisis`, `Linfocitos_ComponenteAnalisis`, `Monocitos_ComponenteAnalisis`, `Basofitos_ComponenteAnalisis`) VALUES
(4, 2, '', '', '84', '25', '', '', '', '', '', '', '', '', '45', '', '', '', '', '35/2', '', '', '15', '15', '', '', '', '', '', '', '', '', '', '', '1', '', ''),
(7, 4, '', '', '', '', '', '', '', '', '', '', '', '', '15', '', '', '', '', 'positivo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 5, '', '', '', '', '54', '', '', '', '', '', '5', '9', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 6, '', '', '', '', '54', '', '', '', '', '', '5', '9', '', '', '1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '50', '', '', '2', '', '5', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallehorario`
--

CREATE TABLE `detallehorario` (
  `Codigo_DetalleHorario` int(11) NOT NULL,
  `Codigo_Horario` int(11) NOT NULL,
  `Codigo_Persona` int(11) NOT NULL,
  `Estado_Horario` varchar(20) NOT NULL,
  `FechaAsignacion_Horario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallehorario`
--

INSERT INTO `detallehorario` (`Codigo_DetalleHorario`, `Codigo_Horario`, `Codigo_Persona`, `Estado_Horario`, `FechaAsignacion_Horario`) VALUES
(6, 2, 4, 'Activo', '2021-05-18'),
(7, 2, 3, 'Activo', '2021-05-18'),
(8, 1, 6, 'Activo', '2021-05-18'),
(9, 3, 3, 'Activo', '2021-05-18'),
(10, 4, 6, 'Activo', '2021-05-18'),
(11, 6, 4, 'Activo', '2021-05-18'),
(12, 5, 6, 'Activo', '2021-05-18'),
(13, 9, 3, 'Activo', '2021-05-18'),
(14, 11, 15, 'Activo', '2021-05-19'),
(15, 3, 13, 'Activo', '2021-05-21'),
(16, 14, 13, 'Activo', '2021-05-21'),
(17, 14, 4, 'Activo', '2021-05-21'),
(18, 15, 3, 'Activo', '2021-05-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallemenu`
--

CREATE TABLE `detallemenu` (
  `Codigo_Rol` int(11) NOT NULL,
  `Codigo_Menu` int(11) NOT NULL,
  `Observaciones` varchar(30) DEFAULT NULL,
  `Estado_MenuDetalle` varchar(20) NOT NULL,
  `Fecha_Asignado_Menu` date NOT NULL,
  `Codigo_DetalleMenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallemenu`
--

INSERT INTO `detallemenu` (`Codigo_Rol`, `Codigo_Menu`, `Observaciones`, `Estado_MenuDetalle`, `Fecha_Asignado_Menu`, `Codigo_DetalleMenu`) VALUES
(1, 3, NULL, 'Activo', '2021-05-16', 1),
(1, 4, NULL, 'Activo', '2021-05-16', 2),
(1, 5, NULL, 'Activo', '2021-05-16', 3),
(1, 6, NULL, 'Activo', '2021-05-16', 4),
(1, 9, NULL, 'Activo', '2021-05-16', 5),
(1, 10, NULL, 'Activo', '2021-05-16', 6),
(1, 11, NULL, 'Activo', '2021-05-16', 7),
(1, 12, NULL, 'Activo', '2021-05-16', 8),
(1, 13, NULL, 'Activo', '2021-05-16', 9),
(1, 14, NULL, 'Activo', '2021-05-16', 10),
(1, 15, NULL, 'Activo', '2021-05-16', 11),
(1, 16, NULL, 'Activo', '2021-05-16', 12),
(1, 17, NULL, 'Activo', '2021-05-16', 13),
(1, 18, NULL, 'Activo', '2021-05-16', 14),
(1, 19, NULL, 'Activo', '2021-05-16', 15),
(1, 20, NULL, 'Activo', '2021-05-16', 16),
(1, 21, NULL, 'Activo', '2021-05-16', 17),
(1, 22, NULL, 'Activo', '2021-05-16', 18),
(1, 23, NULL, 'Activo', '2021-05-16', 19),
(1, 24, NULL, 'Activo', '2021-05-16', 20),
(1, 25, 'Crear Vista Faltante', 'Activo', '2021-05-17', 21),
(1, 26, 'Para el creado 18-05-2021', 'Activo', '2021-05-18', 22),
(2, 14, NULL, 'Activo', '2021-05-16', 23),
(3, 15, '', 'Activo', '2021-05-17', 24),
(3, 18, '', 'Inactivo', '2021-05-18', 25),
(3, 19, '', 'Inactivo', '2021-05-18', 26),
(4, 20, 'Menu asignado por prueba', 'Activo', '2021-05-17', 27),
(3, 18, 'Con fines de prueba', 'Activo', '2021-05-18', 28),
(3, 19, 'Con fines de prueba', 'Activo', '2021-05-18', 29),
(1, 27, '', 'Activo', '2021-05-18', 30),
(1, 28, '', 'Activo', '2021-05-18', 31),
(1, 29, '', 'Activo', '2021-05-19', 32),
(3, 27, '', 'Activo', '2021-05-19', 33),
(3, 29, '', 'Activo', '2021-05-19', 34),
(3, 28, '', 'Activo', '2021-05-19', 35),
(3, 9, '', 'Activo', '2021-05-21', 36),
(1, 30, '', 'Activo', '2021-05-21', 37),
(3, 12, '', 'Activo', '2021-05-21', 38),
(1, 31, 'Creacion Menu', 'Activo', '2021-06-03', 39),
(1, 32, '', 'Activo', '2021-06-03', 40),
(1, 33, '', 'Activo', '2021-06-03', 41),
(1, 23, '', 'Inactivo', '2021-06-12', 42),
(1, 34, '', 'Activo', '2021-06-04', 43),
(1, 35, '', 'Activo', '2021-06-05', 44),
(1, 36, '', 'Inactivo', '2021-06-05', 45),
(1, 37, '', 'Inactivo', '2021-06-05', 46),
(1, 36, '', 'Activo', '2021-06-05', 47),
(1, 37, '', 'Activo', '2021-06-05', 48),
(1, 38, '', 'Activo', '2021-06-05', 49),
(1, 40, '', 'Activo', '2021-06-05', 50),
(3, 31, '', 'Activo', '2021-06-11', 51),
(3, 30, '', 'Activo', '2021-06-11', 52),
(1, 41, 'Contruccion', 'Activo', '2021-06-12', 53);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `Codigo_DetallePedido` int(11) NOT NULL,
  `Codigo_Pedido` int(11) DEFAULT NULL,
  `Codigo_Medicamento` int(11) DEFAULT NULL,
  `Cantidad_DetallePedido` int(11) DEFAULT NULL,
  `Codigo_Analisis` int(11) DEFAULT NULL,
  `Precio_DetallePedido` double DEFAULT NULL,
  `Total_DetallePedido` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`Codigo_DetallePedido`, `Codigo_Pedido`, `Codigo_Medicamento`, `Cantidad_DetallePedido`, `Codigo_Analisis`, `Precio_DetallePedido`, `Total_DetallePedido`) VALUES
(1, 6, 2, 2, 0, 1.8, 3.6),
(2, 6, 4, 5, 0, 9.6, 48),
(3, 7, 2, 5, 0, 1.8, 9),
(4, 7, 4, 5, 0, 9.6, 48),
(5, 7, 4, 2, 0, 9.6, 19.2),
(6, 7, 7, 2, 0, 3.5, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallereceta`
--

CREATE TABLE `detallereceta` (
  `Codigo_DetalleReceta` int(11) NOT NULL,
  `Codigo_Receta` int(11) NOT NULL,
  `Codigo_Medicamento` int(11) NOT NULL,
  `Cantidad_DetalleReceta` int(11) NOT NULL,
  `Indicaciones_DetalleReceta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallereceta`
--

INSERT INTO `detallereceta` (`Codigo_DetalleReceta`, `Codigo_Receta`, `Codigo_Medicamento`, `Cantidad_DetalleReceta`, `Indicaciones_DetalleReceta`) VALUES
(9, 6, 1, 2, 'tomar despues de la cena'),
(10, 7, 1, 20, 'Cada 12 Horas'),
(11, 8, 2, 2, 'antes del almuerzo'),
(12, 8, 4, 5, 'antes del desayuno'),
(13, 9, 1, 5, 'Cada 9 Horas'),
(14, 9, 2, 6, 'Cada 8 Horas'),
(15, 10, 10, 3, 'Cada 7horas'),
(16, 11, 1, 8, 'Cada 8horas'),
(17, 12, 4, 2, '45+'),
(18, 13, 4, 12, 'Cada 8 Horas'),
(19, 14, 1, 5, 'cada 8horas'),
(20, 15, 1, 4, 'Cada 8 horas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `Codigo_Especialidad` int(11) NOT NULL,
  `Nombre_Especialidad` varchar(25) NOT NULL,
  `Descripcion_Especialidad` varchar(40) NOT NULL,
  `Costo_Especialidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`Codigo_Especialidad`, `Nombre_Especialidad`, `Descripcion_Especialidad`, `Costo_Especialidad`) VALUES
(1, 'Persona Natural', 'Pacientes', 0),
(2, 'Medicina General', 'Encargados de los consultorios', 100),
(3, 'Psicologia', 'Salud Mental', 120),
(4, 'Pediatria', 'Encargado de salud infantil', 110),
(5, 'Oncologia', 'Oncologos Especializados', 190),
(6, 'Cardiologia', 'Enfermedades cardiovasculares', 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Codigo_Horario` int(11) NOT NULL,
  `Hora_inicio_Horario` varchar(10) NOT NULL,
  `Hora_Fin_Horario` varchar(10) NOT NULL,
  `Dia_Horario` varchar(15) NOT NULL,
  `estado_Horario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Codigo_Horario`, `Hora_inicio_Horario`, `Hora_Fin_Horario`, `Dia_Horario`, `estado_Horario`) VALUES
(1, '12:30', '13:30', 'Jueves', 'Activo'),
(2, '18:02', '18:06', 'Lunes', 'Activo'),
(3, '08:30', '12:00', 'Viernes', 'Activo'),
(4, '08:30', '12:00', 'Sabado', 'Activo'),
(5, '08:30', '12:00', 'Miercoles', 'Activo'),
(6, '17:00', '18:00', 'Martes', 'Activo'),
(7, '17:00', '18:00', 'Miercoles', 'Activo'),
(8, '17:00', '18:00', 'Jueves', 'Activo'),
(9, '14:00', '15:00', 'Jueves', 'Activo'),
(10, '17:00', '18:00', 'Sabado', 'Activo'),
(11, '20:00', '21:00', 'Sabado', 'Activo'),
(12, '08:00', '12:00', 'Viernes', 'Activo'),
(13, '19:14', '20:14', 'Viernes', 'Activo'),
(14, '23:15', '00:30', 'Viernes', 'Activo'),
(15, '20:13', '23:13', 'Sabado', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `Codigo_Medicamento` int(11) NOT NULL,
  `Nombre_Medicamento` varchar(30) NOT NULL,
  `Descripcion_Medicamento` varchar(80) NOT NULL,
  `Precio_Medicamento` double NOT NULL,
  `Unidad_Medicamento` varchar(20) NOT NULL,
  `Laboratorio_Medicamento` varchar(40) NOT NULL,
  `Activo_Medicamento` varchar(30) NOT NULL,
  `Estado_Medicamento` varchar(20) NOT NULL,
  `Stock_Medicamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`Codigo_Medicamento`, `Nombre_Medicamento`, `Descripcion_Medicamento`, `Precio_Medicamento`, `Unidad_Medicamento`, `Laboratorio_Medicamento`, `Activo_Medicamento`, `Estado_Medicamento`, `Stock_Medicamento`) VALUES
(1, 'Paracetamol', 'Paracetamol 500mg', 1.8, 'blitzers ', 'Portugal', 'Paracetamol', 'Activo', 0),
(2, 'Naproxeno ', 'Naproxeno 600 mg', 1.8, 'blitzers ', 'Portugal', 'Naproxeno ', 'Activo', 55),
(3, 'Omeprazol ', 'Omeprazol 500mg', 9.9, 'blitzers ', 'Portugal', 'Omeprazol ', 'Activo', 0),
(4, 'Aspirina ', 'Aspirina 600mg', 9.6, 'Paquete', 'MediFarma', 'Acido acetilsalicalico', 'Activo', 30),
(5, 'Colecalciferol ', 'Vitamina D', 6.6, 'Frasco', 'MediFarma', 'colecalciferol ', 'Activo', 0),
(6, 'Glimepirida ', 'Antiestaminico', 3.3, 'blitzers ', 'MediFarma', 'Glimepirida', 'Activo', 0),
(7, 'Adrenalina', 'Antiestaminico', 3.5, 'blitzers ', 'Porutgal', 'Adrenalina', 'Activo', 0),
(8, 'Noradrenalina', 'Antiestaminico', 9.3, 'blitzers ', 'Portugal', 'Noradrenalina', 'Activo', 0),
(9, 'Clorotiazida', 'Clorotiazida 600 mg', 9.8, 'Frasco', 'Portugal', 'Clorotiazida', 'Activo', 0),
(10, 'Amoxicilina', 'Amoxicilina 500 mg', 3.3, 'blitzers ', 'Portugal', 'Amoxicilina', 'Activo', 9),
(11, 'Midamor', 'Midamor 300mg', 9.3, 'blitzers ', 'Portugal', 'Amilorida ', 'Activo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `Codigo_Menu` int(11) NOT NULL,
  `Nombre_Menu` varchar(50) NOT NULL,
  `Estado_Menu` varchar(20) NOT NULL,
  `Codigo_MenuPadre` int(11) NOT NULL,
  `Url_Menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`Codigo_Menu`, `Nombre_Menu`, `Estado_Menu`, `Codigo_MenuPadre`, `Url_Menu`) VALUES
(3, 'Registrar Rol', 'Activo', 2, 'page.jsp?view=rol-create'),
(4, 'Mantenimiento  de Rol', 'Activo', 2, 'page.jsp?view=rol-edit'),
(5, 'Registrar Persona', 'Activo', 1, 'page.jsp?view=persona-create'),
(6, 'Mantenimiento de Persona', 'Activo', 1, 'page.jsp?view=persona-edit'),
(9, 'Registrar Horario', 'Activo', 7, 'page.jsp?view=horario-create'),
(10, 'Mantenimiento  de Horarios', 'Activo', 7, 'page.jsp?view=horario-edit'),
(11, 'Asignar Horario', 'Activo', 7, 'page.jsp?view=asignarHorario-create'),
(12, 'Registrar Especialdiad', 'Activo', 3, 'page.jsp?view=especialidadMedica-create'),
(13, 'Mantenimiento  de Especialidades', 'Activo', 3, 'page.jsp?view=especialidadMedica-edit'),
(14, 'Citas Medicas', 'Activo', 4, 'page.jsp?view=citas-create'),
(15, 'Atencion de Pacientes', 'Activo', 6, 'page.jsp?view=atencion-create'),
(16, 'Registrar Medicamento', 'Activo', 5, 'page.jsp?view=medicamento-create'),
(17, 'Mantenimiento de Medicamentos', 'Activo', 5, 'page.jsp?view=medicamento-edit'),
(18, 'Registrar Medicos', 'Activo', 8, 'page.jsp?view=medico-create'),
(19, 'Mantenimiento de Medicos', 'Activo', 8, 'page.jsp?view=medico-edit'),
(20, 'Registrar Menu', 'Activo', 9, 'page.jsp?view=menuPanel-create'),
(21, 'Mantenimiento Menu', 'Activo', 9, 'page.jsp?view=menuPanel-edit'),
(22, 'Registrar Vista', 'Activo', 9, 'page.jsp?view=menuView-create'),
(23, 'Mantenimiento Vista', 'Activo', 9, 'page.jsp?view=menuView-edit'),
(24, 'Asignar Menu', 'Activo', 9, 'page.jsp?view=asignarMenu-create'),
(25, 'Asignar Rol Usuario', 'Activo', 2, 'page.jsp?view=asignarRol-create'),
(26, 'Perfil', 'Activo', 1, 'page.jsp?view=perfil-edit'),
(27, 'Emergencia', 'Activo', 1, 'page.jsp?view=pacienteEmergencia-create'),
(28, 'Mantenimiento Emergencia', 'Activo', 1, 'page.jsp?view=pacienteEmergencia-edit'),
(29, 'Citas Emergencia ', 'Activo', 4, 'page.jsp?view=citasEmergencia-create'),
(30, 'Historia Clinica', 'Activo', 6, 'page.jsp?view=historia-create'),
(31, 'Triaje', 'Activo', 6, 'page.jsp?view=triaje-create'),
(32, 'Registrar Tipo de Analisis', 'Activo', 11, 'page.jsp?view=tAnalisis-create'),
(33, 'Mantenimiento Tipo Analisis', 'Activo', 11, 'page.jsp?view=tAnalisis-edit'),
(34, 'Laboratorio', 'Activo', 11, 'page.jsp?view=laboratorio-create'),
(35, 'Mantenimiento Laboratorio', 'Activo', 11, 'page.jsp?view=laboratorioMod-edit'),
(36, 'Registro de Recipiente', 'Activo', 11, 'page.jsp?view=tipoRecipiente-create'),
(37, 'Mantenimiento de Recipiente', 'Activo', 11, 'page.jsp?view=tipoRecipiente-edit'),
(38, 'Dispensa Medicamentos', 'Activo', 5, 'page.jsp?view=farmacia-create'),
(40, 'Ingreso Medicamento', 'Activo', 5, 'page.jsp?view=ingresoMedicamento-create'),
(41, 'Pago', 'Activo', 12, 'page.jsp?view=pago-create');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menupadre`
--

CREATE TABLE `menupadre` (
  `codigo_MenuPadre` int(11) NOT NULL,
  `Nombre_MenuPadre` varchar(40) NOT NULL,
  `Estado_MenuPadre` varchar(20) NOT NULL,
  `Icono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menupadre`
--

INSERT INTO `menupadre` (`codigo_MenuPadre`, `Nombre_MenuPadre`, `Estado_MenuPadre`, `Icono`) VALUES
(1, 'Persona', 'Activo', 'fa fa-user-o'),
(2, 'Rol', 'Activo', 'fa fa-list-alt'),
(3, 'Especialidad', 'Activo', 'fa fa-cogs'),
(4, 'Citas', 'Activo', 'fa fa-address-book-o'),
(5, 'Medicamentos', 'Activo', 'fa fa-medkit'),
(6, 'Atencion', 'Activo', 'fa fa-user-plus'),
(7, 'Horarios', 'Activo', 'fa fa-clock-o'),
(8, 'Medicos', 'Activo', 'fa fa-user-md'),
(9, 'Menu', 'Activo', 'fa fa-pencil-square-o'),
(10, 'Example', 'Inactivo', 'fa fa-example'),
(11, 'Analisis', 'Activo', 'fa fa-paperclip'),
(12, 'Pago', 'Activo', 'fa fa-usd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Codigo_Pedido` int(11) NOT NULL,
  `Ref_Codigo_Receta` int(11) DEFAULT NULL,
  `Ref_Codigo_Analisis` int(11) DEFAULT NULL,
  `Estado_Pedido` varchar(10) DEFAULT NULL,
  `Fecha_Pedido` date DEFAULT NULL,
  `IGV_Pedido` double DEFAULT NULL,
  `SubTotal_Pedido` double DEFAULT NULL,
  `Total_Pedido` double DEFAULT NULL,
  `Tipo_Pedido` varchar(30) DEFAULT NULL,
  `Ref_Codigo_Cita` int(11) DEFAULT NULL,
  `Codigo_Paciente` int(11) NOT NULL,
  `FechaPago_Pedido` date DEFAULT NULL,
  `Cajero_Pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Codigo_Pedido`, `Ref_Codigo_Receta`, `Ref_Codigo_Analisis`, `Estado_Pedido`, `Fecha_Pedido`, `IGV_Pedido`, `SubTotal_Pedido`, `Total_Pedido`, `Tipo_Pedido`, `Ref_Codigo_Cita`, `Codigo_Paciente`, `FechaPago_Pedido`, `Cajero_Pedido`) VALUES
(6, 8, 0, 'Pagado', '2021-06-11', 9.29, 51.6, 60.89, 'Dispensa Medicamentos', 0, 18, '2021-06-12', 5),
(7, 8, 0, 'Pagado', '2021-06-11', 14.98, 83.2, 98.18, 'Dispensa Medicamentos', 0, 18, '2021-06-12', 5),
(14, 0, 0, 'Pendiente', '2021-06-12', 0, 0, 120, 'Cita Medica', 39, 5, NULL, NULL),
(15, 0, 0, 'Pagado', '2021-06-12', 0, 0, 120, 'Cita Medica', 40, 18, '2021-06-13', 5),
(16, 0, 0, 'Pagado', '2021-06-13', 0, 0, 100, 'Cita Medica', 41, 20, '2021-06-13', 5),
(17, 0, 9, 'Pendiente', '2021-06-13', 0, 0, 25.69, 'Analisis Medico', 0, 18, NULL, NULL),
(18, 0, 10, 'Pagado', '2021-06-13', 0, 0, 33.9, 'Analisis Medico', 0, 18, '2021-06-13', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `Codigo_Persona` int(11) NOT NULL,
  `Codigo_Especialidad` int(11) NOT NULL,
  `Nombre_Persona` varchar(50) NOT NULL,
  `SegundoNom_Persona` varchar(30) NOT NULL,
  `ApellidoPat_Persona` varchar(50) NOT NULL,
  `ApellidoMat_Persona` varchar(50) NOT NULL,
  `Correo_Persona` varchar(50) NOT NULL,
  `NColegiatura_Persona` varchar(10) DEFAULT NULL,
  `Fecha_Nac_Persona` date NOT NULL,
  `DocumentoIdentificacion_Persona` varchar(20) NOT NULL,
  `Estado_Persona` varchar(20) NOT NULL,
  `Codigo_Usuario` int(11) NOT NULL,
  `Tipo_Persona` int(11) NOT NULL,
  `Direccion_Persona` varchar(50) NOT NULL,
  `Tipo_Documento` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`Codigo_Persona`, `Codigo_Especialidad`, `Nombre_Persona`, `SegundoNom_Persona`, `ApellidoPat_Persona`, `ApellidoMat_Persona`, `Correo_Persona`, `NColegiatura_Persona`, `Fecha_Nac_Persona`, `DocumentoIdentificacion_Persona`, `Estado_Persona`, `Codigo_Usuario`, `Tipo_Persona`, `Direccion_Persona`, `Tipo_Documento`) VALUES
(1, 1, 'Default', 'Default', 'Default', 'Default', 'Default@example.com', '', '1971-05-18', '0', 'Activo', 1, 1, 'Default', 'DNI'),
(2, 1, 'Manuel', 'Gabriel', 'Torres', 'Valdivia', 'manuel@gmail.com', '', '1990-03-23', '12345678', 'Activo', 1, 2, 'Alto Selva Alegre', 'DNI'),
(3, 2, 'Eduardo', 'Alonso', 'Sanchez', 'Hallasi', 'edu.g@gmail.com', '999999999', '2006-06-30', '45678923', 'Activo', 4, 3, 'Mariano Melgar', 'DNI'),
(4, 2, 'Sandra', 'Margot', 'Gil', 'Hallasi', 'sMargot@gmail.com', '111232654', '2020-01-01', '989899889', 'Activo', 4, 3, 'Mariano Melgar', 'DNI'),
(5, 1, 'Alex', 'Martin', 'Palli', 'Uscamaita', 'Administrador@admin.com', NULL, '2020-01-01', '4848484848', 'Activo', 4, 3, 'Mariano Melgar', 'DNI'),
(6, 2, 'Juan', 'Gabriel', 'Quispe', 'Meza', 'jGabrie@gmail.com', '48589655', '2021-05-01', '45959874562', 'Activo', 4, 3, 'Nicaragua 506', 'Carnet'),
(7, 1, 'Andres', 'Miguel', 'Salas', 'Vasquez', 'Andres@gmail.com', NULL, '2021-05-12', '4598765231', 'Activo', 1, 2, 'Arequipa', 'DNI'),
(8, 1, 'Sharont', 'Jeanine', 'Laura', 'Pacheco', 'JSharont@gmail.com', NULL, '2020-11-18', '5959531214', 'Activo', 1, 2, 'Cercado 950', 'DNI'),
(9, 1, 'Gonzalo', 'Andres', 'Quispe', 'Meza', 'Gandras@gmail.com', '', '2021-05-01', '89555564', 'Activo', 4, 2, 'Puno', 'Pasaporte'),
(10, 1, 'Ignacio', 'Moises', 'Velarde', 'Luza', 'Ivelarde@gmail.com', NULL, '2021-05-01', '454554546', 'Activo', 1, 2, 'Calle puno 505', 'Carnet'),
(13, 4, 'Johana', 'Luisa', 'Amado', 'Vilca', 'Johana@gmail.com', '4589563221', '2021-05-01', '481887455', 'Activo', 4, 3, 'Calle Huancavelica', 'Carnet'),
(14, 4, 'Jason', 'Alberto', 'Chambi', 'Peredo', 'JChambi@gmail.coim', '2545588454', '2021-04-30', '45454545', 'Activo', 4, 3, 'Calle Mercaderes 905', 'DNI'),
(15, 3, 'Humberto', 'Ian', 'Mamani ', 'Robles', 'hMamani@gmail.com', '258963', '1997-05-19', '58965426', 'Activo', 4, 3, 'Calle Melgar 505', 'Carnet'),
(16, 1, 'Lian', 'Anuel', 'Vilca', 'Peredo', 'lVilca@gmail.com', '', '1998-06-19', '5896325487', 'Activo', 4, 2, 'Calle Alvares Micaela Bastidas 901', 'DNI'),
(17, 1, 'Sharont', 'Davalos', 'Torres', 'Quesada', 'sTorres@gmail.com', '', '2021-02-11', '45821698', 'Activo', 4, 2, 'Calle Peru 385', 'DNI'),
(18, 1, 'juan', 'manuel', 'quispe', 'torres', 'Juan@gmnail.com', NULL, '2021-05-20', '12345678', 'Activo', 1, 2, 'Arequipa', 'DNI'),
(19, 1, 'Alfonso', 'Manuel', 'Bellido', 'Angamos', 'Alfonso@gmail.com', NULL, '2021-05-22', '12345678', 'Activo', 1, 2, 'Arequipa', 'Carnet'),
(20, 1, 'Isabel', 'Miriam', 'Torres', 'Vera', 'ITorres@gmail.com', NULL, '2020-12-10', '45698754', 'Activo', 1, 2, 'Arequipa - Calle Mercaderes 905 ', 'DNI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetamedica`
--

CREATE TABLE `recetamedica` (
  `Codigo_Receta` int(11) NOT NULL,
  `Codigo_Cita` int(11) NOT NULL,
  `fecha_Receta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recetamedica`
--

INSERT INTO `recetamedica` (`Codigo_Receta`, `Codigo_Cita`, `fecha_Receta`) VALUES
(6, 12, '2021-05-18'),
(7, 15, '2021-05-19'),
(8, 19, '2021-05-21'),
(9, 22, '2021-05-21'),
(10, 21, '2021-05-21'),
(11, 23, '2021-05-21'),
(12, 27, '2021-06-11'),
(13, 32, '2021-06-11'),
(14, 41, '2021-06-13'),
(15, 39, '2021-06-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recipiente`
--

CREATE TABLE `recipiente` (
  `Codigo_Recipiente` int(11) NOT NULL,
  `Nombre_Recipiente` varchar(30) NOT NULL,
  `Descripcion_Recipiente` varchar(40) NOT NULL,
  `Estado_Recipiente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recipiente`
--

INSERT INTO `recipiente` (`Codigo_Recipiente`, `Nombre_Recipiente`, `Descripcion_Recipiente`, `Estado_Recipiente`) VALUES
(1, 'Seleccione', '', 'Activo'),
(2, 'Tubo de Sangre', 'Evaluacion de proteinas', 'Activo'),
(3, 'Tubo sin Aditivo', '', 'Activo'),
(4, 'Frasco Simple', '', 'Activo'),
(5, 'Frasco con Espatula', '', 'Activo'),
(6, 'Tubo de Plasma', '', 'Activo'),
(7, 'Recipiente Esterilizado', 'Para pruebas en vacio', 'Activo');

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
(1, 'Administrador', 'Encargado de todo el sistema'),
(2, 'Paciente', 'Clientes de la Clinica UTP'),
(3, 'Medico', 'Encargado de la atenciÃ³n de los pacientes'),
(4, 'Sistemas', 'Persona encargadas del mantenimiento del sistema'),
(5, 'Contabilidad', 'Personal encargado de los libros contables'),
(6, 'Finanzas', 'Encargados de la caja chica de la emnpresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `CodServicio` int(11) NOT NULL,
  `NombreServicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `CodigoTelefono` int(11) NOT NULL,
  `Codigo_Persona` int(11) NOT NULL,
  `Numero_Persona` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `telefonos`
--

INSERT INTO `telefonos` (`CodigoTelefono`, `Codigo_Persona`, `Numero_Persona`) VALUES
(1, 1, '3232332322'),
(1, 2, '6565151226'),
(1, 3, '261556132'),
(1, 4, '4848948484'),
(1, 5, '959595923'),
(1, 6, '98798987987'),
(1, 7, '4587632215'),
(1, 8, '9533262125'),
(1, 9, '959595995'),
(1, 10, '256321485'),
(1, 13, '9595959'),
(1, 14, '6587456962'),
(1, 15, '459632874'),
(1, 16, '589632541'),
(1, 17, '458963254'),
(1, 18, '125420155'),
(1, 19, '45896584112'),
(1, 20, '456512548'),
(2, 1, '3233233233'),
(2, 2, '1212312222'),
(2, 3, '6512612616'),
(2, 4, '9989855544'),
(2, 5, '456584558232'),
(2, 6, '4564564555'),
(2, 7, '326695222'),
(2, 8, '2123326'),
(2, 9, '1212121'),
(2, 10, '541236987'),
(2, 13, '9999999'),
(2, 14, '13694651125'),
(2, 15, '589632145'),
(2, 16, '58962555662'),
(2, 17, '225412254'),
(2, 18, '3203653'),
(2, 19, '12546695821'),
(2, 20, '632154785');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoanalisis`
--

CREATE TABLE `tipoanalisis` (
  `Codigo_Analisis` int(11) NOT NULL,
  `Nombre_Analisis` varchar(30) NOT NULL,
  `Precio_Analisis` double NOT NULL,
  `Descripcion_Analisis` varchar(40) NOT NULL,
  `Estado_Analisis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoanalisis`
--

INSERT INTO `tipoanalisis` (`Codigo_Analisis`, `Nombre_Analisis`, `Precio_Analisis`, `Descripcion_Analisis`, `Estado_Analisis`) VALUES
(1, 'Analisis de Sangre', 25.69, 'Leucocitos', 'Inactivo'),
(2, 'Analisis de Orina', 33.9, 'Nivel de PH', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `Codigo_TipoPersona` int(11) NOT NULL,
  `Nombre_TipoPersona` varchar(30) NOT NULL,
  `Observaciones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`Codigo_TipoPersona`, `Nombre_TipoPersona`, `Observaciones`) VALUES
(1, 'Default', 'Default'),
(2, 'Paciente', 'Personal que recibe Atencion'),
(3, 'Medico', 'Personal que brinda Atencion'),
(4, 'Administrador', 'Personal Encargado del Ssitema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Codigo_Usuario` int(11) NOT NULL,
  `Username_Usuario` varchar(15) NOT NULL,
  `Password_Usuario` varchar(20) NOT NULL,
  `Correo__Usuario` varchar(50) NOT NULL,
  `Estado_Usuario` varchar(10) NOT NULL,
  `Codigo_Rol` int(11) NOT NULL,
  `Codigo_Persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Codigo_Usuario`, `Username_Usuario`, `Password_Usuario`, `Correo__Usuario`, `Estado_Usuario`, `Codigo_Rol`, `Codigo_Persona`) VALUES
(1, 'Admin', 'Admin', 'Admin@gmail.com', 'Activo', 1, 1),
(2, 'Eduardo', 'Eduardo', 'edu.g@gmail.com', 'Activo', 3, 3),
(3, 'Sandra', 'Sandra', 'smirian@gmail.com', 'Activo', 3, 4),
(4, 'Alex', 'Alex', 'Administrador@admin.com', 'Activo', 1, 5),
(5, 'Marco', 'Marco', 'Marco@gmail.com', 'Activo', 2, 1),
(6, 'Andres', 'Andres', 'Andres@gmail.com', 'Activo', 2, 7),
(7, 'Sharont', 'Sharont', 'JSharont@gmail.com', 'Activo', 2, 8),
(8, 'Ignacio', 'Ignacio', 'Ivelarde@gmail.com', 'Activo', 2, 10),
(12, 'Johana', 'Johana', 'Johana@gmail.com', 'Activo', 3, 13),
(13, 'Jason', 'Jason', 'JChambi@gmail.coim', 'Activo', 3, 14),
(14, 'Humberto', 'Humberto', 'hMamani@gmail.com', 'Activo', 3, 15),
(15, 'Lian', 'Lian', 'lVilca@gmail.com', 'Activo', 2, 16),
(16, 'Juan', 'Juan', 'Juan@gmnail.com', 'Activo', 2, 18),
(17, 'Alfonso', 'Alfonso', 'Alfonso@gmail.com', 'Activo', 2, 19),
(18, 'Isabel', 'Isabel', 'ITorres@gmail.com', 'Activo', 2, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`Codigo_Almacen`),
  ADD KEY `fk_Almancen_Medicamento` (`Codigo_Medicamento`);

--
-- Indices de la tabla `analisiclinicos_orden`
--
ALTER TABLE `analisiclinicos_orden`
  ADD PRIMARY KEY (`Codigo_OrdenAnalisis`),
  ADD KEY `fk_OrdenAnalisi_Persona` (`Codigo_Paciente`),
  ADD KEY `fk_OrdenAnalisi_TipoAnalisis` (`Codigo_Analisis`),
  ADD KEY `fk_OrdenAnalisis_Recipiente` (`Codigo_Recipiente`),
  ADD KEY `fk_OrdenAnalisis_Laboratista` (`Codigo_Laboratista`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Codigo_CitaMedica`),
  ADD KEY `fk_Pac_Cit` (`Codigo_Paciente`),
  ADD KEY `fk_Per_Cit` (`Codigo_Personal`),
  ADD KEY `fk_Cita_Horario` (`Codigo_DetalleHorario`);

--
-- Indices de la tabla `componentes_analisis`
--
ALTER TABLE `componentes_analisis`
  ADD PRIMARY KEY (`Codigo_ComponenteAnalisis`),
  ADD KEY `fk_OrdenAnalisis_ComponentesAnalisis` (`Codigo_OrdenAnalisis`);

--
-- Indices de la tabla `detallehorario`
--
ALTER TABLE `detallehorario`
  ADD PRIMARY KEY (`Codigo_DetalleHorario`),
  ADD KEY `fk_DetalleHorario_Persona` (`Codigo_Persona`),
  ADD KEY `fk:_DetalleHorario_Horario` (`Codigo_Horario`);

--
-- Indices de la tabla `detallemenu`
--
ALTER TABLE `detallemenu`
  ADD PRIMARY KEY (`Codigo_DetalleMenu`),
  ADD KEY `fk_DetalleMenu_Menu` (`Codigo_Menu`),
  ADD KEY `fk_DetalleMenu_Rol` (`Codigo_Rol`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`Codigo_DetallePedido`),
  ADD KEY `fkDetalle_Pedido` (`Codigo_Pedido`),
  ADD KEY `fkDetalle_Medicamento` (`Codigo_Medicamento`);

--
-- Indices de la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  ADD PRIMARY KEY (`Codigo_DetalleReceta`),
  ADD KEY `fk_Detall_Receta` (`Codigo_DetalleReceta`),
  ADD KEY `fk_Detalle_Med` (`Codigo_Medicamento`),
  ADD KEY `fk_Detalle_Receta` (`Codigo_Receta`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`Codigo_Especialidad`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Codigo_Horario`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`Codigo_Medicamento`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Codigo_Menu`),
  ADD KEY `fk_MenuPadre_Menu` (`Codigo_MenuPadre`);

--
-- Indices de la tabla `menupadre`
--
ALTER TABLE `menupadre`
  ADD PRIMARY KEY (`codigo_MenuPadre`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Codigo_Pedido`),
  ADD KEY `fk_Paciente_Persona` (`Codigo_Paciente`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`Codigo_Persona`),
  ADD KEY `fk_TipoPersona_Persona` (`Tipo_Persona`),
  ADD KEY `fk_Usuario_Persona` (`Codigo_Usuario`),
  ADD KEY `fk_Persona_Especialidad` (`Codigo_Especialidad`);

--
-- Indices de la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  ADD PRIMARY KEY (`Codigo_Receta`),
  ADD KEY `fk_Rec_Cita` (`Codigo_Cita`);

--
-- Indices de la tabla `recipiente`
--
ALTER TABLE `recipiente`
  ADD PRIMARY KEY (`Codigo_Recipiente`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Codigo_Rol`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD PRIMARY KEY (`CodigoTelefono`,`Codigo_Persona`,`Numero_Persona`),
  ADD KEY `fk_Tel_Pac` (`Codigo_Persona`);

--
-- Indices de la tabla `tipoanalisis`
--
ALTER TABLE `tipoanalisis`
  ADD PRIMARY KEY (`Codigo_Analisis`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`Codigo_TipoPersona`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Codigo_Usuario`),
  ADD KEY `fk_Rol_Usuario` (`Codigo_Rol`),
  ADD KEY `fk_Persona_Usuario` (`Codigo_Persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `Codigo_Almacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `analisiclinicos_orden`
--
ALTER TABLE `analisiclinicos_orden`
  MODIFY `Codigo_OrdenAnalisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Codigo_CitaMedica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `componentes_analisis`
--
ALTER TABLE `componentes_analisis`
  MODIFY `Codigo_ComponenteAnalisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detallehorario`
--
ALTER TABLE `detallehorario`
  MODIFY `Codigo_DetalleHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `detallemenu`
--
ALTER TABLE `detallemenu`
  MODIFY `Codigo_DetalleMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `Codigo_DetallePedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  MODIFY `Codigo_DetalleReceta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `Codigo_Especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `Codigo_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `Codigo_Medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `Codigo_Menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `menupadre`
--
ALTER TABLE `menupadre`
  MODIFY `codigo_MenuPadre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Codigo_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `Codigo_Persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  MODIFY `Codigo_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `recipiente`
--
ALTER TABLE `recipiente`
  MODIFY `Codigo_Recipiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Codigo_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipoanalisis`
--
ALTER TABLE `tipoanalisis`
  MODIFY `Codigo_Analisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `Codigo_TipoPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Codigo_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `fk_Almancen_Medicamento` FOREIGN KEY (`Codigo_Medicamento`) REFERENCES `medicamentos` (`Codigo_Medicamento`);

--
-- Filtros para la tabla `analisiclinicos_orden`
--
ALTER TABLE `analisiclinicos_orden`
  ADD CONSTRAINT `fk_OrdenAnalisi_Persona` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `persona` (`Codigo_Persona`),
  ADD CONSTRAINT `fk_OrdenAnalisi_TipoAnalisis` FOREIGN KEY (`Codigo_Analisis`) REFERENCES `tipoanalisis` (`Codigo_Analisis`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OrdenAnalisis_Laboratista` FOREIGN KEY (`Codigo_Laboratista`) REFERENCES `persona` (`Codigo_Persona`),
  ADD CONSTRAINT `fk_OrdenAnalisis_Recipiente` FOREIGN KEY (`Codigo_Recipiente`) REFERENCES `recipiente` (`Codigo_Recipiente`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `fk_Cita_Horario` FOREIGN KEY (`Codigo_DetalleHorario`) REFERENCES `detallehorario` (`Codigo_DetalleHorario`),
  ADD CONSTRAINT `fk_PersonaDoctor_CitaMedica` FOREIGN KEY (`Codigo_Personal`) REFERENCES `persona` (`Codigo_Persona`),
  ADD CONSTRAINT `fk_PersonaPaciente_CitaMedica` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `persona` (`Codigo_Persona`);

--
-- Filtros para la tabla `componentes_analisis`
--
ALTER TABLE `componentes_analisis`
  ADD CONSTRAINT `fk_OrdenAnalisis_ComponentesAnalisis` FOREIGN KEY (`Codigo_OrdenAnalisis`) REFERENCES `analisiclinicos_orden` (`Codigo_OrdenAnalisis`);

--
-- Filtros para la tabla `detallehorario`
--
ALTER TABLE `detallehorario`
  ADD CONSTRAINT `fk:_DetalleHorario_Horario` FOREIGN KEY (`Codigo_Horario`) REFERENCES `horario` (`Codigo_Horario`),
  ADD CONSTRAINT `fk_DetalleHorario_Persona` FOREIGN KEY (`Codigo_Persona`) REFERENCES `persona` (`Codigo_Persona`);

--
-- Filtros para la tabla `detallemenu`
--
ALTER TABLE `detallemenu`
  ADD CONSTRAINT `fk_DetalleMenu_Menu` FOREIGN KEY (`Codigo_Menu`) REFERENCES `menu` (`Codigo_Menu`),
  ADD CONSTRAINT `fk_DetalleMenu_Rol` FOREIGN KEY (`Codigo_Rol`) REFERENCES `rol` (`Codigo_Rol`);

--
-- Filtros para la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `fkDetalle_Medicamento` FOREIGN KEY (`Codigo_Medicamento`) REFERENCES `medicamentos` (`Codigo_Medicamento`),
  ADD CONSTRAINT `fkDetalle_Pedido` FOREIGN KEY (`Codigo_Pedido`) REFERENCES `pedidos` (`Codigo_Pedido`);

--
-- Filtros para la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  ADD CONSTRAINT `fk_Detalle_Med` FOREIGN KEY (`Codigo_Medicamento`) REFERENCES `medicamentos` (`Codigo_Medicamento`),
  ADD CONSTRAINT `fk_Detalle_Receta` FOREIGN KEY (`Codigo_Receta`) REFERENCES `recetamedica` (`Codigo_Receta`);

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_MenuPadre_Menu` FOREIGN KEY (`Codigo_MenuPadre`) REFERENCES `menupadre` (`codigo_MenuPadre`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_Paciente_Persona` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `persona` (`Codigo_Persona`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_Persona_Especialidad` FOREIGN KEY (`Codigo_Especialidad`) REFERENCES `especialidad` (`Codigo_Especialidad`),
  ADD CONSTRAINT `fk_TipoPersona_Persona` FOREIGN KEY (`Tipo_Persona`) REFERENCES `tipo_persona` (`Codigo_TipoPersona`);

--
-- Filtros para la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  ADD CONSTRAINT `fk_Rec_Cita` FOREIGN KEY (`Codigo_Cita`) REFERENCES `citas` (`Codigo_CitaMedica`);

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `fk_Persona_Telefono` FOREIGN KEY (`Codigo_Persona`) REFERENCES `persona` (`Codigo_Persona`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Persona_Usuario` FOREIGN KEY (`Codigo_Persona`) REFERENCES `persona` (`Codigo_Persona`),
  ADD CONSTRAINT `fk_Rol_Usuario` FOREIGN KEY (`Codigo_Rol`) REFERENCES `rol` (`Codigo_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
