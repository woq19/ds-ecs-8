/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 10.1.26-MariaDB : Database - ecs-8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecs-8` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ecs-8`;

/*Table structure for table `autos` */

DROP TABLE IF EXISTS `autos`;

CREATE TABLE `autos` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Marca` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `autos` */

insert  into `autos`(`Id`,`Marca`) values (1,'Ford\r\n'),(2,'Volkwagen'),(3,'Peugeot'),(4,'Mercedes Benz');

/*Table structure for table `pacientes` */

DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` text,
  `Apellido` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `pacientes` */

insert  into `pacientes`(`Id`,`Nombre`,`Apellido`) values (1,'Oscar','Quintana'),(2,'Lisandro','Chaui'),(3,'Luciano','Pecovich');

/*Table structure for table `turnos` */

DROP TABLE IF EXISTS `turnos`;

CREATE TABLE `turnos` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Fecha` text,
  `PacienteId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Fk_4` (`PacienteId`),
  CONSTRAINT `Fk_4` FOREIGN KEY (`PacienteId`) REFERENCES `pacientes` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `turnos` */

insert  into `turnos`(`Id`,`Fecha`,`PacienteId`) values (1,'1996-05-19',1),(2,'1995-02-25',1),(3,'1996-08-19\r\n',1),(4,'2023-09-29',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
