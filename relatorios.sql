/*
 Relatório de Viagens com Detalhes de Destinos e Transportes:
 Objetivo: Listar informações detalhadas sobre todas as viagens, incluindo detalhes sobre destinos e transportes utilizados.
 */
SELECT
	v.id AS id_viagem,
	d.nome AS nome_destino,
	d.tipo_destino,
	t.tipo AS tipo_transporte,
	f.nome AS nome_fornecedor,
	v.data_saida,
	v.data_chegada,
	v.quantidade_passagens,
	v.valor_minimo
FROM
	viagens v
	JOIN destinos d ON v.id_destino = d.id
	JOIN transportes t ON v.id_transporte = t.id
	JOIN fornecedores f ON t.id_fornecedor = f.id;

/*
 Relatório de Vendas com Informações de Clientes e Vendedores:
 Objetivo: Listar informações sobre todas as vendas, incluindo detalhes sobre clientes e vendedores envolvidos.
 */
SELECT
	v.id AS id_venda,
	c.nome AS nome_cliente,
	c.email,
	c.telefone,
	c.cpf,
	vd.nome AS nome_vendedor,
	vd.email,
	vd.telefone,
	vd.cpf,
	v.data_venda,
	v.valor_total
FROM
	vendas v
	JOIN clientes c ON v.id_cliente = c.id
	JOIN vendedores vd ON v.id_vendedor = vd.id;

/*
 Relatório de Destinos com Quantidade de Viagens Realizadas:
 Objetivo: Listar informações sobre todos os destinos, incluindo a quantidade de viagens realizadas para cada destino.
 */
SELECT
	d.id AS id_destino,
	d.nome AS nome_destino,
	d.tipo_destino,
	COUNT(v.id) AS quantidade_viagens
FROM
	destinos d
	JOIN viagens v ON v.id_destino = d.id
GROUP BY
	d.id;