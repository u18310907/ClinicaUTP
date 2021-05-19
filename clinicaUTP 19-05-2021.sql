-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2021 a las 23:42:03
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

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
  `Estado_Pago_Cita` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`Codigo_CitaMedica`, `Codigo_DetalleHorario`, `Codigo_Paciente`, `Codigo_Personal`, `Estado_CitaMedica`, `Modalidad_CitaMedica`, `Fecha_CitaMedica`, `Numero_Cita`, `Tratamiento_Cita`, `Diagnostico_Cita`, `FechaAtencion_Cita`, `Indicaciones_Cita`, `EstadoReceta_Cita`, `Estado_Pago_Cita`) VALUES
(11, 6, 7, 4, 'Reservado', 'Precencial', '2021-05-24', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta'),
(12, 11, 8, 4, 'Atendido', 'Precencial', '2021-05-18', 'Cl-000012', 'Pastillas expectorantes', 'Covid', '2021-05-18', 'No exponerse a cambios de temperatura', 'Generado', 'Falta'),
(13, 13, 9, 3, 'Reservado', 'Precencial', '2021-05-20', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta'),
(14, 13, 2, 3, 'Reservado', 'Emergencia', '2021-05-20', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta'),
(15, 14, 16, 15, 'Atendido', 'Precencial', '2021-05-22', 'Cl-000015', 'Amoxicilina 600 para los nervios', 'Desequilibrio emocional', '2021-05-19', 'Tomar cada tableta cada 12 horas', 'Generado', 'Falta'),
(16, 14, 17, 15, 'Reservado', 'Emergencia', '2021-05-22', NULL, NULL, NULL, NULL, NULL, 'Falta', 'Falta');

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
(14, 11, 15, 'Activo', '2021-05-19');

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
(3, 28, '', 'Activo', '2021-05-19', 35);

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
  `Indicaciones_DetalleReceta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallereceta`
--

INSERT INTO `detallereceta` (`Codigo_DetalleReceta`, `Codigo_Receta`, `Codigo_Medicamento`, `Cantidad_DetalleReceta`, `Indicaciones_DetalleReceta`) VALUES
(9, 6, 1, 2, 'tomar despues de la cena'),
(10, 7, 1, 20, 'Cada 12 Horas');

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
(5, 'Oncologia', 'Oncologos Especializados', 190);

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
(11, '20:00', '21:00', 'Sabado', 'Activo');

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
  `Estado_Medicamento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`Codigo_Medicamento`, `Nombre_Medicamento`, `Descripcion_Medicamento`, `Precio_Medicamento`, `Unidad_Medicamento`, `Laboratorio_Medicamento`, `Activo_Medicamento`, `Estado_Medicamento`) VALUES
(1, 'Paracetamol', 'Paracetamol 500mg', 1.8, 'blitzers ', 'Portugal', 'Paracetamol', 'Activo'),
(2, 'Naproxeno ', 'Naproxeno 600 mg', 1.8, 'blitzers ', 'Portugal', 'Naproxeno ', 'Activo'),
(3, 'Omeprazol ', 'Omeprazol 500mg', 9.9, 'blitzers ', 'Portugal', 'Omeprazol ', 'Activo'),
(4, 'Aspirina ', 'Inflamacion y Dolor de Cabeza', 9.6, 'Paquete', 'MediFarma', 'Ã¡cido acetilsalicÃ­lico', 'Activo'),
(5, 'Colecalciferol ', 'Vitamina D', 6.6, 'Frasco', 'MediFarma', 'colecalciferol ', 'Activo'),
(6, 'Glimepirida ', 'Antiestaminico', 3.3, 'blitzers ', 'MediFarma', 'Glimepirida', 'Activo'),
(7, 'Adrenalina', 'Antiestaminico', 3.5, 'blitzers ', 'Porutgal', 'Adrenalina', 'Activo'),
(8, 'Noradrenalina', 'Antiestaminico', 9.3, 'blitzers ', 'Portugal', 'Noradrenalina', 'Activo'),
(9, 'Clorotiazida', 'Clorotiazida 600 mg', 9.8, 'Frasco', 'Portugal', 'Clorotiazida', 'Activo'),
(10, 'Amoxicilina', 'Amoxicilina 500 mg', 3.3, 'blitzers ', 'Portugal', 'Amoxicilina', 'Activo');

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
(29, 'Citas Emergencia ', 'Activo', 4, 'page.jsp?view=citasEmergencia-create');

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
(10, 'Example', 'Inactivo', 'fa fa-example');

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
(16, 1, 'Lian', 'Anuel', 'Vilca', 'Peredo', 'lVilca@gmail.com', NULL, '1998-06-19', '5896325487', 'Activo', 1, 2, 'Calle Alvares Tomas 901', 'Pasaporte'),
(17, 1, 'Sharont', 'Davalos', 'Torres', 'Quesada', 'sTorres@gmail.com', '', '2021-02-11', '45821698', 'Activo', 4, 2, 'Calle Peru 385', 'DNI');

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
(7, 15, '2021-05-19');

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
(2, 17, '225412254');

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
(15, 'Lian', 'Lian', 'lVilca@gmail.com', 'Activo', 2, 16);

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
  ADD KEY `fk_Per_Cit` (`Codigo_Personal`),
  ADD KEY `fk_Cita_Horario` (`Codigo_DetalleHorario`);

--
-- Indices de la tabla `detalleanalisiclinicos`
--
ALTER TABLE `detalleanalisiclinicos`
  ADD PRIMARY KEY (`Codigo_DetalleAnalisis`),
  ADD KEY `fk_Ana_Detalle` (`Codigo_AnalisisClinico`),
  ADD KEY `fk_Detalle_TipoAna` (`Codigo_Analisis`);

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
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Codigo_Pago`),
  ADD KEY `fk_Cita_Pago` (`Codigo_Cita`);

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
-- AUTO_INCREMENT de la tabla `analisiclinicos`
--
ALTER TABLE `analisiclinicos`
  MODIFY `Codigo_Analisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Codigo_CitaMedica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detalleanalisiclinicos`
--
ALTER TABLE `detalleanalisiclinicos`
  MODIFY `Codigo_DetalleAnalisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallehorario`
--
ALTER TABLE `detallehorario`
  MODIFY `Codigo_DetalleHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `detallemenu`
--
ALTER TABLE `detallemenu`
  MODIFY `Codigo_DetalleMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `detallepago`
--
ALTER TABLE `detallepago`
  MODIFY `Codigo_DetallePago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  MODIFY `Codigo_DetalleReceta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `Codigo_Especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `Codigo_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `Codigo_Medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `Codigo_Menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `menupadre`
--
ALTER TABLE `menupadre`
  MODIFY `codigo_MenuPadre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `Codigo_Pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `Codigo_Persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `recetamedica`
--
ALTER TABLE `recetamedica`
  MODIFY `Codigo_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Codigo_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipoanalisis`
--
ALTER TABLE `tipoanalisis`
  MODIFY `Codigo_Analisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `Codigo_TipoPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Codigo_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisiclinicos`
--
ALTER TABLE `analisiclinicos`
  ADD CONSTRAINT `fk_Analis_Persona` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `persona` (`Codigo_Persona`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `fk_Cita_Horario` FOREIGN KEY (`Codigo_DetalleHorario`) REFERENCES `detallehorario` (`Codigo_DetalleHorario`),
  ADD CONSTRAINT `fk_PersonaDoctor_CitaMedica` FOREIGN KEY (`Codigo_Personal`) REFERENCES `persona` (`Codigo_Persona`),
  ADD CONSTRAINT `fk_PersonaPaciente_CitaMedica` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `persona` (`Codigo_Persona`);

--
-- Filtros para la tabla `detalleanalisiclinicos`
--
ALTER TABLE `detalleanalisiclinicos`
  ADD CONSTRAINT `fk_Ana_Detalle` FOREIGN KEY (`Codigo_AnalisisClinico`) REFERENCES `analisiclinicos` (`Codigo_Analisis`),
  ADD CONSTRAINT `fk_Detalle_TipoAna` FOREIGN KEY (`Codigo_Analisis`) REFERENCES `tipoanalisis` (`Codigo_Analisis`);

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
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_MenuPadre_Menu` FOREIGN KEY (`Codigo_MenuPadre`) REFERENCES `menupadre` (`codigo_MenuPadre`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_Cita_Pago` FOREIGN KEY (`Codigo_Cita`) REFERENCES `citas` (`Codigo_CitaMedica`);

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
