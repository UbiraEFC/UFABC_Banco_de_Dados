/* 
Descrições das tabelas e Relacionamentos

Destinos
	id (chave primária)
	tipo_destino (Ponto turístico, Parque aquático, Parque de diversões)
	nome
	descricao
	email (chave única)
	telefone (cheve única)

Transportes
	id (chave primária)
	tipo (Ônibus, Micro-ônibus, Van)
	id_fornecedor (chave estrangeira referenciando id da tabela Fornecedores)

Fornecedores
	id (chave primária)
	nome
	email (chave única)
	telefone (cheve única)
	cnpj (cheve única)

Viagens
	id (chave primária)
	id_destino (chave estrangeira referenciando id da tabela Destinos)
	id_transporte (chave estrangeira referenciando id da tabela Transportes)
	data_saida
	data_chegada
	quantidade_passagens
	valor_minimo

Clientes
	id (chave primária)
	nome
	email (chave única)
	telefone (chave única)
	cpf (chave única)

Vendas
	id (chave primária)
	id_viagem (chave estrangeira referenciando id da tabela Viagens)
	id_cliente (chave estrangeira referenciando id da tabela Clientes)
	id_vendedor (chave estrangeira referenciando id da tabela Vendedores)
	data_venda
	valor_venda

Vendedores
	id (chave primária)
	nome
	email (chave única)
	telefone (chave única)
	cpf (chave única)

*/

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


-- Inserindo dados nas tabelas
INSERT INTO destinos VALUES (null,'PONTO_TURISTICO', 'MASP', 'Museu de arte', 'email1@example.com', '1234567890'),
                            (null,'PARQUE_AQUATICO', 'Wet and wild', 'Brinquedos para crianças e adultos', 'email2@example.com', '2345678901'),
                            (null,'PARQUE_DE_DIVERSOES', 'Hopi Hari', 'Brinquedos para crianças e adultos', 'email3@example.com', '3456789012'),
                            (null,'PONTO_TURISTICO', 'Ponte estaiada', 'Construção urbana', 'email4@example.com', '4567890123'),
                            (null,'PARQUE_AQUATICO', 'Rio Jacaré Pepira', 'Opcao de RAFTING no centro de Brotas', 'email5@example.com', '5678901234'),
                            (null,'PARQUE_DE_DIVERSOES', 'Beto Carrero World', 'Referência Nacional', 'email6@example.com', '6789012345'),
                            (null,'PONTO_TURISTICO', 'Estrada Velha de Santos', 'Localizado na Serra do Mar, no parque Caminhos do mar', 'email7@example.com', '7890123456'),
                            (null,'PARQUE_AQUATICO', 'Piscina do Patati Patata', 'Apenas para crianças', 'email8@example.com', '8901234567'),
                            (null,'PARQUE_DE_DIVERSOES', 'Playcenter', 'Brinquedos em sua maioria para adolescentes e adultos', 'email9@example.com', '9012345678');


