CREATE SCHEMA `estudiantes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

CREATE TABLE `estudiantes`.`tipos_sangre` (
  `id_tipo_sangre` INT NOT NULL AUTO_INCREMENT,
  `sangre_descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_sangre`));

CREATE TABLE `estudiantes`.`estudiante` (
  `id_estudiante` INT NOT NULL AUTO_INCREMENT,
  `carne` INT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellidos` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `correo_electronico` VARCHAR(45) NULL,
  `id_tipo_sangre` INT NULL,
  `fecha_nacimiento` VARCHAR(45) NULL,
  PRIMARY KEY (`id_estudiante`),
  INDEX `fk_estudiante_sangre_idx` (`id_tipo_sangre` ASC) VISIBLE,
  CONSTRAINT `fk_estudiante_sangre`
    FOREIGN KEY (`id_tipo_sangre`)
    REFERENCES `estudiantes`.`tipos_sangre` (`id_tipo_sangre`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
