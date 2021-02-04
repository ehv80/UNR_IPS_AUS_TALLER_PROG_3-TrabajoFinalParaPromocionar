DROP TABLE IF EXISTS Clinica.USUARIOS;

DROP TABLE IF EXISTS Clinica.DIAGNOSTICOS;

DROP TABLE IF EXISTS Clinica.PACIENTES;

DROP SCHEMA IF EXISTS Clinica;

CREATE DATABASE Clinica;

USE Clinica;

CREATE TABLE `Clinica`.`PACIENTES` (
	  `id_paciente` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  `nombre` VARCHAR(30)  NOT NULL,
	  `apellido` VARCHAR(30)  NOT NULL,
	  `fecha_nac` DATE  NOT NULL,
	  `tpo_doc` ENUM('DNI' , 'LC' , 'LE' )  NOT NULL,
	  `nro_doc` INTEGER UNSIGNED NOT NULL,
	  `obra_social` VARCHAR(50)  NOT NULL,
	  `sexo` ENUM ( 'F' , 'M' )  NOT NULL,
	  `estavivo` BOOLEAN  NOT NULL,
	  PRIMARY KEY (`id_paciente`)
)
ENGINE = InnoDB
CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `Clinica`.`DIAGNOSTICOS` (
	  `id_diagnostico` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	 `descripcion` VARCHAR(512) NOT NULL,
	 `fecha` DATE NOT NULL,
	  `id_paciente` INTEGER UNSIGNED NOT NULL,
	  PRIMARY KEY (`id_diagnostico`),
	  CONSTRAINT id_paciente_fk_constraint FOREIGN KEY id_paciente_fk_constraint (`id_paciente`)
	    REFERENCES PACIENTES (`id_paciente`)
	    ON DELETE RESTRICT
	    ON UPDATE RESTRICT
)
ENGINE = InnoDB
CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE Clinica.USUARIOS (
	  `id_usuario` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  `nombre_real` VARCHAR(30)  NOT NULL,
	  `apellido` VARCHAR(30)  NOT NULL,
	  `nombre_acceso` VARCHAR(30)  NOT NULL,
	  `clave_acceso` VARCHAR(30)  NOT NULL,
	  PRIMARY KEY (`id_usuario`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
CHARACTER SET utf8 COLLATE utf8_general_ci;



INSERT INTO Clinica.USUARIOS VALUES ( NULL , 'Gisel Gabriela' , 'Villanueva' , 'Gigi' , '123' );

INSERT INTO Clinica.USUARIOS VALUES ( NULL , 'Ezequiel Hernan' , 'Villanueva' , 'ehv80' , 'ehvmail' );



INSERT INTO Clinica.PACIENTES VALUES ( NULL , 'Arturo' , 'Pugliese' , '1967-10-23' , 'DNI' , '23224598' , 'AMECA' , 'M' , '1' );

INSERT INTO Clinica.PACIENTES VALUES ( NULL , 'Graciela' , 'Paez' , '1977-03-11' , 'DNI' , '23274596' , 'OSDE' , 'F' , '1' );

INSERT INTO Clinica.PACIENTES VALUES ( NULL , 'Carlos' , 'Trobiani' , '1967-09-12' , 'DNI' , '13284960' , 'FEDERADA SALUD' , 'M' , '0' );


INSERT INTO Clinica.DIAGNOSTICOS VALUES ( NULL , 'RADIOGRAFIA DE RODILLA' , '2006-08-02' , '1' );

INSERT INTO Clinica.DIAGNOSTICOS VALUES ( NULL , 'CONSULTA ODONTOLOGICA' , '2007-04-26' , '1' );

INSERT INTO Clinica.DIAGNOSTICOS VALUES ( NULL , 'ANALISIS DE SANGRE' , '2007-05-22' , '2' );
