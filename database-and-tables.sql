-- -----------------------------------------------------
-- Criando o banco de dados e as tabelas
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS db_anizete_turismo;

USE db_anizete_turismo;

DROP TABLE IF EXISTS destinos;

DROP TABLE IF EXISTS transportes;

DROP TABLE IF EXISTS fornecedores;

DROP TABLE IF EXISTS viagens;

DROP TABLE IF EXISTS clientes;

DROP TABLE IF EXISTS vendas;

DROP TABLE IF EXISTS vendedores;

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`destinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS destinos (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	tipo VARCHAR(50) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	descricao VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	telefone VARCHAR(11) NOT NULL UNIQUE,
	CONSTRAINT pk_destinos PRIMARY KEY (id)
);

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`transportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS transportes (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	tipo VARCHAR(50) NOT NULL,
	id_fornecedor INT NOT NULL,
	CONSTRAINT pk_transportes PRIMARY KEY (id),
	CONSTRAINT fk_transportes_fornecedores FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id)
);

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS fornecedores (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	telefone VARCHAR(11) NOT NULL UNIQUE,
	cnpj VARCHAR(50) NOT NULL UNIQUE,
	CONSTRAINT pk_fornecedores PRIMARY KEY (id)
);

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`viagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS viagens (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	id_destino INT NOT NULL,
	id_transporte INT NOT NULL,
	data_chegada DATE NOT NULL,
	data_saida DATE NOT NULL,
	quantidade_passagens INT NOT NULL,
	valor_minimo DOUBLE NOT NULL,
	CONSTRAINT pk_viagens PRIMARY KEY (id),
	CONSTRAINT fk_viagens_destinos FOREIGN KEY (id_destino) REFERENCES destinos (id),
	CONSTRAINT fk_viagens_transportes FOREIGN KEY (id_transporte) REFERENCES transportes (id)
);

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS clientes (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	telefone VARCHAR(11) NOT NULL UNIQUE,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	CONSTRAINT pk_clientes PRIMARY KEY (id)
);

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS vendas (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	id_viagem INT NOT NULL,
	id_cliente INT NOT NULL,
	id_vendedor INT NOT NULL,
	data_venda DATE NOT NULL,
	valor_venda DOUBLE NOT NULL,
	CONSTRAINT pk_vendas PRIMARY KEY (id),
	CONSTRAINT fk_vendas_viagens FOREIGN KEY (id_viagem) REFERENCES viagens (id),
	CONSTRAINT fk_vendas_clientes FOREIGN KEY (id_cliente) REFERENCES clientes (id),
	CONSTRAINT fk_vendas_vendedores FOREIGN KEY (id_vendedor) REFERENCES vendedores (id)
);

-- -----------------------------------------------------
-- Table `db_anizete_turismo`.`vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS vendedores (
	id INT NOT NULL UNSIGNED AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	telefone VARCHAR(11) NOT NULL UNIQUE,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	CONSTRAINT pk_vendedores PRIMARY KEY (id)
);