-- MySQL Workbench Forward Engineering
SET
	@OLD_UNIQUE_CHECKS = @ @UNIQUE_CHECKS,
	UNIQUE_CHECKS = 0;

SET
	@OLD_FOREIGN_KEY_CHECKS = @ @FOREIGN_KEY_CHECKS,
	FOREIGN_KEY_CHECKS = 0;

SET
	@OLD_SQL_MODE = @ @SQL_MODE,
	SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_anizete_turismo
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_anizete_turismo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_anizete_turismo` DEFAULT CHARACTER SET utf8;

USE `db_anizete_turismo`;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`destinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`destinos` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`tipo` ENUM(
		'PONTO_TURISTICO',
		'PARQUE_AQUATICO',
		'PARQUE_DE_DIVERSOES'
	) NOT NULL,
	`nome` VARCHAR(50) NOT NULL,
	`descricao` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefone` VARCHAR(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
	UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`fornecedores` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefone` VARCHAR(11) NOT NULL,
	`cnpj` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
	UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE,
	UNIQUE INDEX `cnpj_UNIQUE` (`cnpj` ASC) VISIBLE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`transportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`transportes` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`tipo` ENUM('MICRO_ONIBUS', 'VAN', 'ONIBUS') NOT NULL,
	`fornecedores_id` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `fk_transportes_fornecedores1_idx` (`fornecedores_id` ASC) VISIBLE,
	CONSTRAINT `fk_transportes_fornecedores1` FOREIGN KEY (`fornecedores_id`) REFERENCES `db_anizete_turismo`.`fornecedores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`viagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`viagens` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`data_saida` DATETIME NOT NULL,
	`data_chegada` DATETIME NOT NULL,
	`qtd_passagens` INT NOT NULL,
	`valor_minimo` DOUBLE NOT NULL,
	`destinos_id` INT UNSIGNED NOT NULL,
	`transportes_id` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `fk_viagens_destinos_idx` (`destinos_id` ASC) VISIBLE,
	INDEX `fk_viagens_transportes1_idx` (`transportes_id` ASC) VISIBLE,
	CONSTRAINT `fk_viagens_destinos` FOREIGN KEY (`destinos_id`) REFERENCES `db_anizete_turismo`.`destinos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `fk_viagens_transportes1` FOREIGN KEY (`transportes_id`) REFERENCES `db_anizete_turismo`.`transportes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`clientes` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefone` VARCHAR(11) NOT NULL,
	`cpf` VARCHAR(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
	UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE,
	UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`vendedores` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefone` VARCHAR(11) NOT NULL,
	`cpf` VARCHAR(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
	UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE,
	UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_anizete_turismo`.`vendas` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`data_venda` DATETIME NOT NULL,
	`valor_venda` DOUBLE NOT NULL,
	`viagens_id` INT UNSIGNED NOT NULL,
	`clientes_id` INT UNSIGNED NOT NULL,
	`vendedores_id` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `fk_vendas_viagens1_idx` (`viagens_id` ASC) VISIBLE,
	INDEX `fk_vendas_clientes1_idx` (`clientes_id` ASC) VISIBLE,
	INDEX `fk_vendas_vendedores1_idx` (`vendedores_id` ASC) VISIBLE,
	CONSTRAINT `fk_vendas_viagens1` FOREIGN KEY (`viagens_id`) REFERENCES `db_anizete_turismo`.`viagens` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `db_anizete_turismo`.`clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `fk_vendas_vendedores1` FOREIGN KEY (`vendedores_id`) REFERENCES `db_anizete_turismo`.`vendedores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB;

SET
	SQL_MODE = @OLD_SQL_MODE;

SET
	FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;

SET
	UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;