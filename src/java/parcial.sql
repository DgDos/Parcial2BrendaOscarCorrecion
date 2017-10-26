-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.25a - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para ´parcial´
CREATE DATABASE IF NOT EXISTS `parcial` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `parcial`;

-- Volcando estructura para tabla ´parcial´.departamento
CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.departamento: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` (`id`, `nombre`) VALUES
	(1, 'Sistemas'),
	(2, 'Contabilidad');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `lugarN` varchar(30) NOT NULL,
  `idE` int(2) NOT NULL,
  `fechaI` varchar(30) NOT NULL,
  `idTC` int(2) NOT NULL,
  `idD` int(2) NOT NULL,
  `idP` int(2) NOT NULL,
  `idT` int(2) NOT NULL,
  `idS` int(2) NOT NULL,
  `idR` int(2) NOT NULL,
  `Salario` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTC` (`idTC`),
  KEY `idP` (`idP`),
  KEY `idS` (`idS`),
  KEY `idR` (`idR`),
  KEY `idE` (`idE`),
  KEY `idT` (`idT`),
  KEY `idD` (`idD`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idTC`) REFERENCES `tipocontrato` (`id`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`idP`) REFERENCES `puesto` (`id`),
  CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`idS`) REFERENCES `sueldo` (`id`),
  CONSTRAINT `empleado_ibfk_4` FOREIGN KEY (`idR`) REFERENCES `regimen` (`id`),
  CONSTRAINT `empleado_ibfk_5` FOREIGN KEY (`idE`) REFERENCES `estatus` (`id`),
  CONSTRAINT `empleado_ibfk_6` FOREIGN KEY (`idT`) REFERENCES `turno` (`id`),
  CONSTRAINT `empleado_ibfk_7` FOREIGN KEY (`idD`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.empleado: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`id`, `nombre`, `lugarN`, `idE`, `fechaI`, `idTC`, `idD`, `idP`, `idT`, `idS`, `idR`, `Salario`) VALUES
	(1, 'Oscar', 'Bogota', 1, 'Septiembre 5 del 2011', 1, 1, 2, 1, 1, 1, 2800000),
	(2, 'Brenda', 'Bogota', 1, 'Marzo 2 del 2015', 2, 2, 1, 1, 1, 1, 2500000),
	(3, 'Fabian', 'Medellin', 2, 'Agosto 8 del 2005', 2, 1, 1, 2, 2, 2, 2000000);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.estatus
CREATE TABLE IF NOT EXISTS `estatus` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.estatus: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `estatus` DISABLE KEYS */;
INSERT INTO `estatus` (`id`, `nombre`) VALUES
	(1, 'Activo'),
	(2, 'Inactivo');
/*!40000 ALTER TABLE `estatus` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.puesto
CREATE TABLE IF NOT EXISTS `puesto` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.puesto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` (`id`, `nombre`) VALUES
	(1, 'Gerente'),
	(2, 'Administrador');
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.regimen
CREATE TABLE IF NOT EXISTS `regimen` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.regimen: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `regimen` DISABLE KEYS */;
INSERT INTO `regimen` (`id`, `nombre`) VALUES
	(1, 'Contratacion'),
	(2, 'Servicios');
/*!40000 ALTER TABLE `regimen` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.sueldo
CREATE TABLE IF NOT EXISTS `sueldo` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.sueldo: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sueldo` DISABLE KEYS */;
INSERT INTO `sueldo` (`id`, `nombre`) VALUES
	(1, 'Fijo'),
	(2, 'Integral');
/*!40000 ALTER TABLE `sueldo` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.tipocontrato
CREATE TABLE IF NOT EXISTS `tipocontrato` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.tipocontrato: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipocontrato` DISABLE KEYS */;
INSERT INTO `tipocontrato` (`id`, `nombre`) VALUES
	(1, 'Indeterminado'),
	(2, 'Prestacion de Servicios');
/*!40000 ALTER TABLE `tipocontrato` ENABLE KEYS */;

-- Volcando estructura para tabla ´parcial´.turno
CREATE TABLE IF NOT EXISTS `turno` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla ´parcial´.turno: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` (`id`, `nombre`) VALUES
	(1, 'Diurno'),
	(2, 'Nocturno');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
