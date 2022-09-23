--1c)Adicionar uma coluna “preco_anual” na tabela “plataforma_streaming”.
	ALTER TABLE plataforma_streaming ADD COLUMN preco_anual decimal(5,2);
	SELECT * FROM plataforma_streaming;

--d) Atualizar os valores da coluna “preco_anual”. Esse valor deverá
--corresponder a 80% do valor do “preco_mensal” ao longo de um ano

	UPDATE plataforma_streaming SET preco_anual = (preco_mensal*12) * 0.8;
	SELECT * FROM plataforma_streaming;

--2a) Liste todos os dados de seriados cadastrados, ordene-os do mais novo
--para o mais antigo.

	SELECT * FROM seriado ORDER BY ano_inicio DESC; 

--b) Liste todos os seriados que iniciaram a partir do ano 2010 e que ainda não
--foram finalizados, ordene-os pelo nome em ordem alfabética.

	SELECT * FROM seriado WHERE ano_inicio >= '2010' AND ano_fim IS NULL ORDER BY nome;
	
--c) Qual é o maior preço, o menor preço, a média de preços e a diferença
--entre o maior e o menor preço entre as plataformas de streaming?

	SELECT MAX(preco_mensal) AS maior_preco, MIN (preco_mensal) AS menor_preco,
	AVG(preco_mensal) AS media_preco,
	MAX (preco_mensal) - min(preco_mensal) AS diferenca_preco FROM plataforma_streaming;

--d) Liste o nome e preço das plataformas com mensalidade menor que R$30
--e que permitam assistir de forma offline, ordene-as do menor preço para o maior.

	SELECT nome, preco_mensal FROM plataforma_streaming WHERE preco_mensal < 30
	AND offline = true ORDER BY preco_mensal;
	
	
	