-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2022 a las 02:29:57
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
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dept2`
--

CREATE TABLE `dept2` (
  `dept_no` int(10) UNSIGNED NOT NULL,
  `hospital_cod` int(10) UNSIGNED NOT NULL,
  `dnombre` varchar(14) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `loc` varchar(14) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `dept2`
--

INSERT INTO `dept2` (`dept_no`, `hospital_cod`, `dnombre`, `loc`) VALUES
(1, 1, 'Cirugias', 'Bloque 10'),
(2, 1, 'Traumas y frac', 'Bloque 12'),
(3, 1, 'Pedriatria', 'Bloque 13'),
(4, 2, 'Urgencias', 'Bloque 15'),
(5, 2, 'Radiografia', 'Bloque 20'),
(6, 2, 'Neurologia', 'Bloque 3'),
(7, 3, 'Psicologia', 'Bloque 8'),
(8, 3, 'Laboratorio', 'Bloque 2'),
(9, 3, 'Cardiologia', 'Bloque 5'),
(10, 4, 'MedicinaGenera', 'Bloque 1'),
(11, 4, 'Psicologia', 'Bloque 8'),
(12, 4, 'Laboratorio', 'Bloque 2'),
(13, 5, 'Cardiologia', 'Bloque 5'),
(14, 5, 'Urgencias', 'Bloque 40'),
(15, 5, 'Psicologia', 'Bloque 8'),
(16, 6, 'Cirugias', 'Bloque 10'),
(17, 6, 'Traumas y frac', 'Bloque 12'),
(18, 6, 'Pedriatria', 'Bloque 13'),
(19, 7, 'Urgencias', 'Bloque 15'),
(20, 7, 'Radiografia', 'Bloque 20'),
(21, 7, 'Neurologia', 'Bloque 3'),
(22, 8, 'Psicologia', 'Bloque 8'),
(23, 8, 'Laboratorio', 'Bloque 2'),
(24, 8, 'Cardiologia', 'Bloque 5'),
(25, 9, 'MedicinaGenera', 'Bloque 1'),
(26, 9, 'Psicologia', 'Bloque 8'),
(27, 9, 'Laboratorio', 'Bloque 2'),
(28, 10, 'Cardiologia', 'Bloque 5'),
(29, 10, 'Urgencias', 'Bloque 40'),
(30, 10, 'Psicologia', 'Bloque 8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `doctor_no` int(10) UNSIGNED NOT NULL,
  `hospital_cod` int(10) UNSIGNED NOT NULL,
  `apellido` varchar(13) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `especialidad` varchar(16) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`doctor_no`, `hospital_cod`, `apellido`, `especialidad`) VALUES
(1, 1, 'Ramelet', 'Medico General'),
(2, 2, 'Abrami', 'Pediatra'),
(3, 3, 'Rosenzveig', 'Cirujano'),
(4, 4, 'Janas', 'Neurologo'),
(5, 5, 'Redmayne', 'Psicologo'),
(6, 6, 'Dibbs', 'Bacteriologo'),
(7, 7, 'Boydell', 'Cardiologo'),
(8, 8, 'Scoggins', 'Bacteriologo'),
(9, 9, 'Way', 'Medico General'),
(10, 10, 'Scatcher', 'Cirujano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `empleado_no` int(10) UNSIGNED NOT NULL,
  `dept2_hospital_cod` int(10) UNSIGNED NOT NULL,
  `dept2_dept_no` int(10) UNSIGNED NOT NULL,
  `apellido` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `oficio` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `dir` int(4) UNSIGNED DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `salario` int(10) UNSIGNED DEFAULT NULL,
  `comision` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`empleado_no`, `dept2_hospital_cod`, `dept2_dept_no`, `apellido`, `oficio`, `dir`, `fecha_alta`, `salario`, `comision`) VALUES
(11, 1, 1, 'Wholeswort', 'Despacho', 12, '2022-01-19', 1419, 4987),
(12, 1, 2, 'Aguirrezab', 'Conserje', 22, '2022-08-07', 2381, 4235),
(13, 1, 3, 'Raynham', 'Auxiliar', 13, '2022-01-15', 2481, 33161),
(14, 2, 4, 'Vanns', 'Conserje', 423, '2022-09-14', 3384, 2252),
(15, 2, 5, 'Pinnigar', 'Cocinero', 5, '2022-03-05', 3796, 2415),
(16, 2, 6, 'Urwin', 'Tecnico', 6, '2021-11-13', 1901, 4140),
(17, 3, 7, 'Bernet', 'Despacho', 7, '2021-12-04', 2843, 1039),
(18, 3, 8, 'Whichelow', 'Cocinero', 548, '2022-06-08', 1612, 3590),
(19, 3, 9, 'Lohering', 'Auxiliar', 9, '2022-09-06', 3088, 1315),
(20, 4, 10, 'Dionsetti', 'Despacho', 10, '2022-03-16', 1235, 1453),
(21, 4, 11, 'Wholeswort', 'Despacho', 12, '2022-01-19', 1419, 4987),
(22, 4, 12, 'Aguirrezab', 'Conserje', 22, '2022-08-07', 2381, 4235),
(23, 5, 13, 'Raynham', 'Auxiliar', 13, '2022-01-15', 2481, 33161),
(24, 5, 14, 'Vanns', 'Conserje', 423, '2022-09-14', 3384, 2252),
(25, 5, 15, 'Pinnigar', 'Cocinero', 5, '2022-03-05', 3796, 2415),
(26, 6, 16, 'Urwin', 'Tecnico', 6, '2021-11-13', 1901, 4140),
(27, 6, 17, 'Bernet', 'Despacho', 7, '2021-12-04', 2843, 1039),
(28, 6, 18, 'Whichelow', 'Cocinero', 548, '2022-06-08', 1612, 3590),
(29, 7, 19, 'Lohering', 'Auxiliar', 9, '2022-09-06', 3088, 1315),
(30, 7, 20, 'Wholeswort', 'Despacho', 12, '2022-01-19', 1419, 4987),
(31, 7, 21, 'Aguirrezab', 'Conserje', 22, '2022-08-07', 2381, 4235),
(32, 8, 22, 'Raynham', 'Auxiliar', 13, '2022-01-15', 2481, 33161),
(33, 8, 23, 'Vanns', 'Conserje', 423, '2022-09-14', 3384, 2252),
(34, 8, 24, 'Pinnigar', 'Cocinero', 5, '2022-03-05', 3796, 2415),
(35, 9, 25, 'Urwin', 'Tecnico', 6, '2021-11-13', 1901, 4140),
(36, 9, 26, 'Bernet', 'Despacho', 7, '2021-12-04', 2843, 1039),
(37, 9, 27, 'Whichelow', 'Cocinero', 548, '2022-06-08', 1612, 3590),
(38, 10, 28, 'Lohering', 'Auxiliar', 9, '2022-09-06', 3088, 1315),
(39, 10, 29, 'Dionsetti', 'Despacho', 10, '2022-03-16', 1235, 1453),
(40, 10, 30, 'Wholeswort', 'Despacho', 12, '2022-01-19', 1419, 4987);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermo`
--

CREATE TABLE `enfermo` (
  `inscripcion` int(10) UNSIGNED NOT NULL,
  `sala_hospital_cod` int(10) UNSIGNED NOT NULL,
  `sala_cod` int(10) UNSIGNED NOT NULL,
  `apellido` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `s` varchar(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `nss` int(9) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `enfermo`
--

INSERT INTO `enfermo` (`inscripcion`, `sala_hospital_cod`, `sala_cod`, `apellido`, `direccion`, `fecha_nac`, `s`, `nss`) VALUES
(1, 1, 1, 'Cherry Holme', '4754 AmothCourt', '2022-09-03', 'M', 331),
(2, 2, 2, 'Mogg', '6689 Nevada Trail', '2022-03-03', 'M', 44352),
(3, 3, 3, 'Dowding', '9 Rockefeller', '2022-05-14', 'M', 324323),
(4, 4, 4, 'Brunel', '22856 Burning', '2022-08-04', 'F', 23424),
(5, 5, 5, 'Bascomb', '2574 Beilfuss Way', '2022-03-30', 'F', 2345),
(6, 6, 6, 'Cooley', '30 Prairieview Way', '2021-12-13', 'F', 25436),
(7, 7, 7, 'Eisikovitsh', '05 Fieldstone', '2022-03-05', 'M', 54347),
(8, 8, 8, 'Inchboard', '574 Westport Pass', '2022-08-28', 'M', 45648),
(9, 9, 9, 'Regnard', '2393 Johnson', '2022-07-03', 'F', 4559),
(10, 10, 10, 'Agdahl', '93 1st Point', '2021-12-29', 'F', 67510);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospital`
--

CREATE TABLE `hospital` (
  `hospital_cod` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono` varchar(8) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `num_cama` int(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `hospital`
--

INSERT INTO `hospital` (`hospital_cod`, `nombre`, `direccion`, `telefono`, `num_cama`) VALUES
(1, 'Hephzibah', '6 Gateway', '82868221', 139),
(2, 'Zena', '606 Manufacturers ', '11564661', 320),
(3, 'Jarrett', '920 Knutson', '38314387', 391),
(4, 'Edmon', '93 Golf Terrace', '15736724', 340),
(5, 'Elvin', '8 Loftsgordon Way', '88120230', 999),
(6, 'Ev', '86 Cambridge Trail', '95901070', 165),
(7, 'Frederique', '201 Blackbird', '51664216', 217),
(8, 'Cynthea', '5 Grasska Plaza', '16188795', 818),
(9, 'Lenka', '9261 Saint Paul', '51374965', 199),
(10, 'Fidelity', '13 Anthes Circle', '38770189', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion`
--

CREATE TABLE `ocupacion` (
  `ocupacion_id` int(10) UNSIGNED NOT NULL,
  `enfermo_sala_cod` int(10) UNSIGNED NOT NULL,
  `enfermo_sala_hospital_cod` int(10) UNSIGNED NOT NULL,
  `enfermo_inscripcion` int(10) UNSIGNED NOT NULL,
  `cama` int(4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ocupacion`
--

INSERT INTO `ocupacion` (`ocupacion_id`, `enfermo_sala_cod`, `enfermo_sala_hospital_cod`, `enfermo_inscripcion`, `cama`) VALUES
(1, 1, 1, 1, 21),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 15),
(6, 6, 6, 6, 6),
(7, 7, 7, 7, 7),
(8, 8, 8, 8, 42),
(9, 9, 9, 9, 9),
(10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `plantilla_cod` int(10) UNSIGNED NOT NULL,
  `sala_hospital_cod` int(10) UNSIGNED NOT NULL,
  `sala_cod` int(10) UNSIGNED NOT NULL,
  `apellido` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `funcion` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `turno` varchar(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `salario` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`plantilla_cod`, `sala_hospital_cod`, `sala_cod`, `apellido`, `funcion`, `turno`, `salario`) VALUES
(1, 1, 1, 'Garthland', 'Auxiliar', 'T', 4713),
(2, 2, 2, 'Rosenwasser', 'Enfermero', 'M', 4601),
(3, 3, 3, 'Simco', 'JefeEnferm', 'T', 4904),
(4, 4, 4, 'Chamberlain', 'Regemte', 'M', 2614),
(5, 5, 5, 'Belitz', 'Enfermero', 'T', 4499),
(6, 6, 6, 'Woolcocks', 'Aux.Bacte', 'M', 4206),
(7, 7, 7, 'Juza', 'Ax.Pediat', 'T', 1467),
(8, 8, 8, 'Colliver', 'Voluntario', 'M', 1547),
(9, 9, 9, 'Coot', 'FR', 'V', 1580),
(10, 10, 10, 'Goggins', 'Auxiliar', 'M', 3119);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `sala_cod` int(10) UNSIGNED NOT NULL,
  `hospital_cod` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `num_cama` int(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`sala_cod`, `hospital_cod`, `nombre`, `num_cama`) VALUES
(1, 1, 'Urgencias', 30),
(2, 2, 'Fracturas I', 15),
(3, 3, 'Lab Bacteriologia II', 6),
(4, 4, 'Neurologia III', 10),
(5, 5, 'Urgencias II', 40),
(6, 6, 'General IV', 5),
(7, 7, 'Pedriatria V', 10),
(8, 8, 'Psicologia', 2),
(9, 9, 'Urgencias', 30),
(10, 10, 'Neurolodia I', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dept2`
--
ALTER TABLE `dept2`
  ADD PRIMARY KEY (`dept_no`,`hospital_cod`),
  ADD KEY `dept2_FKIndex1` (`hospital_cod`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_no`,`hospital_cod`),
  ADD KEY `doctor_FKIndex1` (`hospital_cod`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`empleado_no`,`dept2_hospital_cod`,`dept2_dept_no`),
  ADD KEY `empleado_FKIndex1` (`dept2_dept_no`,`dept2_hospital_cod`);

--
-- Indices de la tabla `enfermo`
--
ALTER TABLE `enfermo`
  ADD PRIMARY KEY (`inscripcion`,`sala_hospital_cod`,`sala_cod`),
  ADD KEY `enfermo_FKIndex1` (`sala_cod`,`sala_hospital_cod`);

--
-- Indices de la tabla `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_cod`);

--
-- Indices de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  ADD PRIMARY KEY (`ocupacion_id`,`enfermo_sala_cod`,`enfermo_sala_hospital_cod`,`enfermo_inscripcion`),
  ADD KEY `ocupacion_FKIndex1` (`enfermo_inscripcion`,`enfermo_sala_hospital_cod`,`enfermo_sala_cod`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`plantilla_cod`,`sala_hospital_cod`,`sala_cod`),
  ADD KEY `plantilla_FKIndex1` (`sala_cod`,`sala_hospital_cod`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`sala_cod`,`hospital_cod`),
  ADD KEY `sala_FKIndex1` (`hospital_cod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dept2`
--
ALTER TABLE `dept2`
  MODIFY `dept_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `empleado_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `enfermo`
--
ALTER TABLE `enfermo`
  MODIFY `inscripcion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_cod` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  MODIFY `ocupacion_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `plantilla_cod` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `sala_cod` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dept2`
--
ALTER TABLE `dept2`
  ADD CONSTRAINT `dept2_ibfk_1` FOREIGN KEY (`hospital_cod`) REFERENCES `hospital` (`hospital_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`hospital_cod`) REFERENCES `hospital` (`hospital_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`dept2_dept_no`,`dept2_hospital_cod`) REFERENCES `dept2` (`dept_no`, `hospital_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `enfermo`
--
ALTER TABLE `enfermo`
  ADD CONSTRAINT `enfermo_ibfk_1` FOREIGN KEY (`sala_cod`,`sala_hospital_cod`) REFERENCES `sala` (`sala_cod`, `hospital_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  ADD CONSTRAINT `ocupacion_ibfk_1` FOREIGN KEY (`enfermo_inscripcion`,`enfermo_sala_hospital_cod`,`enfermo_sala_cod`) REFERENCES `enfermo` (`inscripcion`, `sala_hospital_cod`, `sala_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD CONSTRAINT `plantilla_ibfk_1` FOREIGN KEY (`sala_cod`,`sala_hospital_cod`) REFERENCES `sala` (`sala_cod`, `hospital_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`hospital_cod`) REFERENCES `hospital` (`hospital_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
