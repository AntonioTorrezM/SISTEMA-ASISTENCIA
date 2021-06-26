-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2021 a las 18:35:18
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `idadministrativo` int(11) NOT NULL,
  `idcargo` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `ci` char(8) NOT NULL,
  `telefono` char(9) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(10) NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrativo`
--

INSERT INTO `administrativo` (`idadministrativo`, `idcargo`, `nombres`, `apellidos`, `ci`, `telefono`, `direccion`, `email`, `sexo`, `fecha_ingreso`) VALUES
(1, 1, 'Jose', 'Luna Ramirez', '2422322', '76543444', 'calle Espinoza Salas', 'jluna@gmail.com', 'M', '2021-06-23'),
(2, 1, 'Maura', 'Dominguez Villazon', '7546554', '7045446', 'zona Senkata', 'maura@hotmail.com', 'F', '2021-06-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idalumno` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `ci` char(8) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_registro` date NOT NULL,
  `grado` varchar(20) NOT NULL,
  `seccion` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idalumno`, `nombres`, `apellidos`, `ci`, `direccion`, `sexo`, `fecha_nacimiento`, `fecha_registro`, `grado`, `seccion`) VALUES
(1, 'Margarita', 'Mullisaca Mamani', '4845551', 'calacoto #455', 'F', '2000-05-10', '2021-05-22', 'Primero', 'A'),
(2, 'Delia', 'Mamani Carasani', '89525666', 'los sauces #655', 'F', '1999-05-13', '2021-05-19', 'Cuarto', 'B'),
(3, 'Denilson', 'Condori Mamani', '59886566', 'av. Charrapaki', 'M', '2003-06-07', '2021-06-03', 'Segunto', 'B'),
(4, 'Francisco', 'Soto Callisaya', '9895655', 'av Los Pinos', 'M', '2007-06-02', '2021-06-03', 'Primero', 'B'),
(5, 'Alfredo', 'Martines Quispe', '554654', 'Uyustus', 'M', '2007-06-15', '2021-06-26', 'Cuarto', 'A'),
(6, 'Roberto', 'Callisaca', '265864', 'Los Pinos', 'M', '2009-06-13', '2021-06-26', 'Cuarto', 'C'),
(7, 'Fraulia', 'Rodrigues', '546543', 'av. Topater', 'F', '2011-06-11', '2021-06-26', 'Quinto', 'B'),
(8, 'Wilson', 'Sarsuri', '5498432', 'Z. Munaypata', 'M', '2015-06-13', '2021-06-04', 'Segunto', 'C'),
(9, 'Beimar', 'Villazon', '5454545', 'San Luis', 'M', '2016-06-25', '2021-06-26', 'Primero', 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_alumnos`
--

CREATE TABLE `asistencia_alumnos` (
  `idasistencia_alumnos` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `hora_ingreso` varchar(50) DEFAULT NULL,
  `hora_salida` varchar(50) DEFAULT NULL,
  `idtrabajador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencia_alumnos`
--

INSERT INTO `asistencia_alumnos` (`idasistencia_alumnos`, `idalumno`, `fecha`, `hora_ingreso`, `hora_salida`, `idtrabajador`) VALUES
(1, 1, '25/6/2021', '0:16:57', '0:17:26', NULL),
(2, 2, '25/6/2021', '22:45:13', '22:45:21', NULL),
(3, 1, '26/6/2021', '13:34:13', '4:18:14', NULL),
(4, 3, '26/6/2021', '9:25:22', '', NULL),
(5, 3, '26/6/2021', '12:18:10', '12:18:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_docentes`
--

CREATE TABLE `asistencia_docentes` (
  `idasistencia_docentes` int(11) NOT NULL,
  `idadministrativo` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `hora_ingreso` varchar(50) DEFAULT NULL,
  `hora_salida` varchar(50) DEFAULT NULL,
  `idtrabajador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencia_docentes`
--

INSERT INTO `asistencia_docentes` (`idasistencia_docentes`, `idadministrativo`, `fecha`, `hora_ingreso`, `hora_salida`, `idtrabajador`) VALUES
(1, 1, '25/6/2021', '0:21:20', '13:18:14', NULL),
(3, 1, '26/6/2021', '13:33:53', '4:17:52', NULL),
(4, 1, '26/6/2021', '14:56:7', '4:17:56', NULL),
(5, 1, '25/6/2021', '22:44:56', '22:45:5', NULL),
(6, 2, '26/6/2021', '9:24:55', '12:17:58', NULL),
(7, 1, '26/6/2021', '12:17:8', '12:17:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idcargo`, `descripcion`) VALUES
(1, 'Docente'),
(2, 'Técnico'),
(3, 'Auxiliar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE `licencia` (
  `idlicencia` int(11) NOT NULL,
  `idadministrativo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` varchar(45) NOT NULL,
  `tipo_licencia` varchar(45) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`idlicencia`, `idadministrativo`, `fecha`, `tiempo`, `tipo_licencia`, `descripcion`) VALUES
(1, 1, '2021-06-25', '3 meses', 'normal', 'vacaciones'),
(2, 1, '2021-06-04', '23', 'eseef', 'sfsfs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` varchar(30) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `idalumno`, `fecha`, `tiempo`, `descripcion`) VALUES
(1, 2, '2021-06-11', 'wwrer', 'wewrwe'),
(2, 4, '2021-06-26', '2 hora', 'motivos personales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `idtrabajador` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `ci` char(8) NOT NULL,
  `telefono` char(9) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(15) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `acceso` varchar(15) NOT NULL,
  `estado` char(1) NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idtrabajador`, `nombres`, `apellidos`, `ci`, `telefono`, `direccion`, `email`, `sexo`, `login`, `password`, `acceso`, `estado`, `fecha_ingreso`) VALUES
(1, 'Jhonny', 'Tarqui Suntura', '8433482', '60626622', 'los pinos #55', 'jtas@gmail.com', 'M', 'jtas@gmail.com', '8433482', 'Administrador', 'A', '1998-05-16'),
(2, 'Juan', 'Paz Quintana', '562322', '65181283', 'warnes #771', 'enelram@gmail.com', 'M', 'enelram@gmail.com', '562322', 'Visitante', 'A', '1992-05-02'),
(3, 'rider', 'yanarico cocarico', '1232334', '4555566', 'San Borja', 'rider@g,ail.com', 'M', 'rider@g,ail.com', '1232334', 'Administrador', 'A', '1997-06-07'),
(4, 'Diego', 'Quispe Limachi ', '8854566', '6258869', 'av, Villa Adela ', 'diego@hotmail.com', 'M', 'diego@hotmail.com', '8854566', 'Administrador', 'A', '1997-06-21'),
(5, 'Royer', 'Manzaneda', '9995446', '64888463', 'z. Alfonzo de la Cruz ', 'royer@hotmail', 'M', 'royer@hotmail', '9995446', 'Administrador', 'A', '1997-06-28'),
(6, 'Antonio', 'Torrez Mamani', '9949828', '7685555', 'z. 3 de mayo calle Luis Taborga', 'antonio@hotmail.com', 'M', 'antonio@hotmail.com', '9949828', 'Administrador', 'A', '1999-03-29'),
(7, 'Adolfo ', 'Apaza Quispe', '3454878', '7516844', 'av. Las Rosas', 'adolfo@hotmail.com', 'M', 'adolfo@hotmail.com', '3454878', 'Visitante', 'D', '1990-06-02'),
(8, 'Maria', 'Ramos Villca', '948489', '72654556', 'av. 16 de julio', 'maria@hotmail.com', 'F', 'maria@hotmail.com', '948489', 'Visitante', 'A', '1998-06-13'),
(9, 'Sara', 'Suntura Gutierrez', '8848465', '76528889', 'av. Cochabamba', 'sara@hotmail.com', 'F', 'sara@hotmail.com', '8848465', 'Administrador', 'A', '1997-06-08'),
(10, 'Hugo', 'Alvares Tola', '5456462', '62526221', 'calle Alfonzo Martinez', 'hugo@hotmail.com', 'M', 'hugo@hotmail.com', '5456462', 'Visitante', 'A', '1997-06-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD PRIMARY KEY (`idadministrativo`),
  ADD KEY `fk_administrativo_cargo_idx` (`idcargo`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idalumno`);

--
-- Indices de la tabla `asistencia_alumnos`
--
ALTER TABLE `asistencia_alumnos`
  ADD PRIMARY KEY (`idasistencia_alumnos`,`fecha`),
  ADD KEY `fk_asistencia_alumnos_alumno_idx` (`idalumno`),
  ADD KEY `fk_asistencia_docentes_trabajador_idx` (`idtrabajador`);

--
-- Indices de la tabla `asistencia_docentes`
--
ALTER TABLE `asistencia_docentes`
  ADD PRIMARY KEY (`idasistencia_docentes`),
  ADD KEY `fk_asistencia_docentes_administrativo_idx` (`idadministrativo`),
  ADD KEY `fk_asistencia_docentes_trabajador_idx` (`idtrabajador`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indices de la tabla `licencia`
--
ALTER TABLE `licencia`
  ADD PRIMARY KEY (`idlicencia`),
  ADD KEY `fk_licencia_administrativo_idx` (`idadministrativo`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `fk_permiso_alumno_idx` (`idalumno`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`idtrabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  MODIFY `idadministrativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idalumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `asistencia_alumnos`
--
ALTER TABLE `asistencia_alumnos`
  MODIFY `idasistencia_alumnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asistencia_docentes`
--
ALTER TABLE `asistencia_docentes`
  MODIFY `idasistencia_docentes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `licencia`
--
ALTER TABLE `licencia`
  MODIFY `idlicencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `idtrabajador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD CONSTRAINT `fk_administrativo_cargo` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia_alumnos`
--
ALTER TABLE `asistencia_alumnos`
  ADD CONSTRAINT `fk_asistencia_alumnos_alumno` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asistencia_alumnos_trabajador` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia_docentes`
--
ALTER TABLE `asistencia_docentes`
  ADD CONSTRAINT `fk_asistencia_docentes_administrativo` FOREIGN KEY (`idadministrativo`) REFERENCES `administrativo` (`idadministrativo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asistencia_docentes_trabajador` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `licencia`
--
ALTER TABLE `licencia`
  ADD CONSTRAINT `fk_licencia_administrativo` FOREIGN KEY (`idadministrativo`) REFERENCES `administrativo` (`idadministrativo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `fk_permiso_alumno` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
