-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 03:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ejerciciojsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `IdEstudiante` bigint(20) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `intensidad` int(11) DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE `notas` (
  `IdNota` bigint(20) NOT NULL,
  `IdEstudiante` bigint(20) DEFAULT NULL,
  `IdProfesor` bigint(20) DEFAULT NULL,
  `codigo` varchar(30) DEFAULT NULL,
  `nota1` float DEFAULT NULL,
  `nota2` float DEFAULT NULL,
  `nota3` float DEFAULT NULL,
  `Promedio` float DEFAULT NULL,
  `notaFinal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `IdProfesor` bigint(20) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `especialidad` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`IdEstudiante`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`IdNota`),
  ADD KEY `IdEstudiante` (`IdEstudiante`),
  ADD KEY `IdProfesor` (`IdProfesor`),
  ADD KEY `codigo` (`codigo`);

--
-- Indexes for table `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`IdProfesor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `IdNota` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`IdEstudiante`) REFERENCES `estudiantes` (`IdEstudiante`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`IdProfesor`) REFERENCES `profesores` (`IdProfesor`),
  ADD CONSTRAINT `notas_ibfk_3` FOREIGN KEY (`codigo`) REFERENCES `materias` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
