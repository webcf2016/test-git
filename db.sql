-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema exe_session
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `exe_session` ;

-- -----------------------------------------------------
-- Schema exe_session
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exe_session` DEFAULT CHARACTER SET utf8 ;
USE `exe_session` ;

-- -----------------------------------------------------
-- Table `exe_session`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_session`.`article` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(80) NULL,
  `texte` TEXT NULL,
  `ladate` TIMESTAMP NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exe_session`.`utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_session`.`utilisateur` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `lelogin` VARCHAR(60) NULL,
  `lepass` VARCHAR(45) NULL,
  `ecrit` TINYINT(1) NULL DEFAULT 0,
  `modifie` TINYINT(1) NULL DEFAULT 0,
  `modifietous` TINYINT(1) NULL DEFAULT 0,
  `supprime` TINYINT(1) NULL DEFAULT 0,
  `supprimetous` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `lepass_UNIQUE` ON `exe_session`.`utilisateur` (`lepass` ASC);


-- -----------------------------------------------------
-- Table `exe_session`.`article_has_utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe_session`.`article_has_utilisateur` (
  `article_id` INT UNSIGNED NOT NULL,
  `utilisateur_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`article_id`, `utilisateur_id`),
  CONSTRAINT `fk_article_has_utilisateur_article`
    FOREIGN KEY (`article_id`)
    REFERENCES `exe_session`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_has_utilisateur_utilisateur1`
    FOREIGN KEY (`utilisateur_id`)
    REFERENCES `exe_session`.`utilisateur` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_article_has_utilisateur_utilisateur1_idx` ON `exe_session`.`article_has_utilisateur` (`utilisateur_id` ASC);

CREATE INDEX `fk_article_has_utilisateur_article_idx` ON `exe_session`.`article_has_utilisateur` (`article_id` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `exe_session`.`utilisateur`
-- -----------------------------------------------------
START TRANSACTION;
USE `exe_session`;
INSERT INTO `exe_session`.`utilisateur` (`id`, `lelogin`, `lepass`, `ecrit`, `modifie`, `modifietous`, `supprime`, `supprimetous`) VALUES (DEFAULT, 'admin', 'admin', 1, 1, 1, 1, 1);
INSERT INTO `exe_session`.`utilisateur` (`id`, `lelogin`, `lepass`, `ecrit`, `modifie`, `modifietous`, `supprime`, `supprimetous`) VALUES (DEFAULT, 'redac', 'redac', 1, 1, 0, 1, 0);
INSERT INTO `exe_session`.`utilisateur` (`id`, `lelogin`, `lepass`, `ecrit`, `modifie`, `modifietous`, `supprime`, `supprimetous`) VALUES (DEFAULT, 'util', 'util', 1, 0, 0, 0, 0);

COMMIT;

