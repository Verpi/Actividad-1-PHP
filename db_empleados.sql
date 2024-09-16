-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_empresa
CREATE DATABASE IF NOT EXISTS `db_empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_empresa`;

-- Volcando estructura para tabla db_empresa.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `direccion` varchar(60) DEFAULT '',
  `telefono` varchar(10) DEFAULT '',
  `fecha_nacimiento` date DEFAULT NULL,
  `id_puesto` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `FKpuesto` (`id_puesto`),
  CONSTRAINT `FKpuesto` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id_puesto`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_empresa.empleados: ~8 rows (aproximadamente)
DELETE FROM `empleados`;
INSERT INTO `empleados` (`id_empleado`, `codigo`, `nombres`, `apellidos`, `direccion`, `telefono`, `fecha_nacimiento`, `id_puesto`) VALUES
	(1, 'E001', 'Dennys Stuar', 'Hernandez Moran', 'Boca del Monte', '47714712', '2024-06-16', 1),
	(2, 'E002', 'Prueba', 'Prueba', 'Prueba', '1111', '2001-02-25', 3),
	(3, 'E003', 'Melany', 'Jazmin', 'Boca', '2222', '2024-09-16', 2),
	(4, 'E004', 'Luis', 'Mena', 'Ciudad', '0293234', '0000-00-00', 1),
	(5, 'E005', 'Elizabeth', 'Chun', 'Zona 7', '23232323', '1999-06-12', 1),
	(6, 'E006', 'Henry', 'Estuardo', 'Boca', '41498723', '1997-01-15', 3),
	(7, 'E007', 'Milo', 'Flops', 'EEUU', '09128712', '1999-05-05', 2),
	(8, 'E008', 'Alizom', 'Ramirez', 'Ciudad', '342879158', '2001-12-24', 1),
	(9, 'E010', 'Katherin', 'Choc', 'Zona 7', '32547610', '2001-07-01', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
