-- --------------------------------------------------------------
-- Inserção de destinos
-- --------------------------------------------------------------
INSERT INTO destinos 
	VALUES 										
		(null,'PONTO_TURISTICO', 'MASP', 'Museu de arte', 'email1@example.com', '1234567890'),
    (null,'PARQUE_AQUATICO', 'Wet and wild', 'Brinquedos para crianças e adultos', 'email2@example.com', '2345678901'),
    (null,'PARQUE_DE_DIVERSOES', 'Hopi Hari', 'Brinquedos para crianças e adultos', 'email3@example.com', '3456789012'),
    (null,'PONTO_TURISTICO', 'Ponte estaiada', 'Construção urbana', 'email4@example.com', '4567890123'),
    (null,'PARQUE_AQUATICO', 'Rio Jacaré Pepira', 'Opcao de RAFTING no centro de Brotas', 'email5@example.com', '5678901234'),
    (null,'PARQUE_DE_DIVERSOES', 'Beto Carrero World', 'Referência Nacional', 'email6@example.com', '6789012345'),
    (null,'PONTO_TURISTICO', 'Estrada Velha de Santos', 'Localizado na Serra do Mar, no parque Caminhos do mar', 'email7@example.com', '7890123456'),
    (null,'PARQUE_AQUATICO', 'Piscina do Patati Patata', 'Apenas para crianças', 'email8@example.com', '8901234567'),
    (null,'PARQUE_DE_DIVERSOES', 'Playcenter', 'Brinquedos em sua maioria para adolescentes e adultos', 'email9@example.com', '9012345678');

-- --------------------------------------------------------------
-- Inserção de fornecedores
-- --------------------------------------------------------------
INSERT INTO fornecedores 
	VALUES 										
		(null,'Turismo Cometa', 'turismo.cometa@example.com', '1234567890'),
    (null,'Turismo Viação Catarinense', '  turismo.viacaocatarinense@example.com', '2345678901');

-- --------------------------------------------------------------
-- Inserção de transportes
-- --------------------------------------------------------------
INSERT INTO transportes 
	VALUES 										
		(null,'ONIBUS', 1),
    (null,'MICRO_ONIBUS', 1),
    (null,'VAN', 1),
    (null,'ONIBUS', 2),
    (null,'MICRO_ONIBUS', 2),
    (null,'VAN', 2);	

-- --------------------------------------------------------------
-- Inserção de viagens
-- --------------------------------------------------------------
INSERT INTO viagens 
	VALUES 										
		(null, 1, 1, '2019-01-01', '2019-01-01', 20, 50.0),
    (null, 2, 2, '2020-01-01', '2020-01-02', 30, 249.90),
    (null, 3, 3, '2020-01-01', '2020-01-02', 30, 289.90),
    (null, 4, 4, '2018-10-01', '2018-10-01', 50, 79.90),
    (null, 4, 5, '2019-09-01', '2019-09-01', 50, 79.90),
    (null, 5, 6, '2019-09-01', '2019-09-03', 20, 499.90),
    (null, 5, 1, '2023-09-01', '2023-09-03', 20, 499.90),
    (null, 5, 2, '2022-09-01', '2022-09-03', 20, 499.90);

-- --------------------------------------------------------------
-- Inserção de clientes
-- --------------------------------------------------------------
INSERT INTO clientes 
	VALUES 										
		(null, 'João', 'joao@example.com', '2345678901','42432999823'),
    (null, 'Maria', 'maria@example.com', '3456789012','42532999823'),
    (null, 'José', 'jose@example.com', '4567890123','42632999823'),
    (null, 'Ana', 'ana@example.com', '5678901234','42732999823'),
    (null, 'Pedro', 'pedro@example.com', '6789012345','42832999823'),
    (null, 'Paulo', 'paulo@example.com', '7890123456','42932999823'),
    (null, 'Carlos', 'carlos@example.com', '8901234567','43032999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823'),
    (null, 'Lucas', 'lucas@example.com', '9012345678','43132999823'),
    (null, 'Marcos', 'marcos@example.com', '0123456789','43232999823'),
    (null, 'Mateus', 'mateus@example.com', '1234567890','43332999823');

-- --------------------------------------------------------------
-- Inserção de vendedores
-- --------------------------------------------------------------
INSERT INTO vendedores 
	VALUES 										
		(null,'Adalberto', 'adalberto@example.com', '45612378955','48698711565'),
    (null,'Cristiano', 'cristiano@example.com', '11945682511', '95418622748'),
    (null,'Eduardo', 'eduardo@example.com','11957841685', '48139744926'),
    (null,'Fernando', 'fernando@example.com', '11948755968', '48132499825');

-- --------------------------------------------------------------
-- Inserção de vendas
-- --------------------------------------------------------------
INSERT INTO vendas 
	VALUES 										
		(null, 1, 1, 1, '2018-10-10', 50),
    (null, 2, 2, 2, '2019-10-10', 249.90),
    (null, 3, 3, 3, '2019-10-10', 289.90),
    (null, 4, 4, 4, '2018-09-10', 79.90),
    (null, 5, 5, 1, '2019-08-10', 79.90),
    (null, 6, 6, 2, '2019-08-10', 499.90),
    (null, 7, 7, 3, '2023-08-10', 499.90),
    (null, 8, 8, 4, '2022-08-10', 499.90),
    (null, 1, 9, 1, '2018-10-10', 50),
    (null, 2, 10, 2, '2019-10-10', 249.90),
    (null, 3, 11, 3, '2019-10-10', 289.90),
    (null, 4, 12, 4, '2018-09-10', 79.90),
    (null, 5, 13, 1, '2019-08-10', 79.90),
    (null, 6, 14, 2, '2019-08-10', 499.90),
    (null, 7, 15, 3, '2023-08-10', 499.90),
    (null, 8, 16, 4, '2022-08-10', 499.90),
    (null, 1, 17, 1, '2018-10-10', 50),
    (null, 2, 18, 2, '2019-10-10', 249.90),
    (null, 3, 19, 3, '2019-10-10', 289.90),
    (null, 4, 20, 4, '2018-09-10', 79.90),
    (null, 5, 21, 1, '2019-08-10', 79.90),
    (null, 6, 22, 2, '2019-08-10', 499.90),
    (null, 7, 23, 3, '2023-08-10', 499.90),
    (null, 8, 24, 4, '2022-08-10', 499.90),
    (null, 1, 25, 1, '2018-10-10', 50),
    (null, 2, 26, 2, '2019-10-10', 249.90),
    (null, 3, 27, 3, '2019-10-10', 289.90),
    (null, 4, 28, 4, '2018-09-10', 79.90),
    (null, 5, 29, 1, '2019-08-10', 79.90),
    (null, 6, 30, 2, '2019-08-10', 499.90),
    (null, 7, 31, 3, '2023-08-10', 499.90),
    (null, 8, 32, 4, '2022-08-10', 499.90),
    (null, 1, 33, 1, '2018-10-10', 50),
    (null, 2, 34, 2, '2019-10-10', 249.90),
    (null, 3, 35, 3, '2019-10-10', 289.90),
    (null, 4, 36, 4, '2018-09-10', 79.90),
    (null, 5, 37, 1, '2019-08-10', 79.90);															