--Questões

--Cada uma das questões deve utilizar de forma coerente ao menos um dos seguintes
--operadores em sua resposta (e todos devem ser utilizados ao menos uma vez): INNER
--JOIN, LEFT JOIN, GROUP BY e HAVING, funções de agregação (AVG, MAX, MIN, …) e
--ao menos uma subconsulta -- 4 Questões

	SELECT * FROM plataforma;
	SELECT * FROM genero;
	SELECT * FROM filme;
	SELECT * FROM informacoesFilme;
	SELECT * FROM elenco;
	SELECT * FROM diretor;
	SELECT * FROM premiacao;
	SELECT * FROM filmePremiacao;

--Questão 1)
	--Liste todos os filmes com seu respectivo diretor e orderne os filmes por ordem alfabética ? (INNER JOIN)
	
	SELECT filme.id_filme, filme.nome, diretor.nome -- Coluna do agrupamento
	FROM filme
	INNER JOIN diretor  -- condição de junção
	ON filme.id_filme = diretor.id_filme -- Junção das tabelas filme e diretor
	ORDER BY filme.nome; --Cria um grupo para cada valor distinto da coluna filme.nome

--Questão 2)
	--Qual é o gênero que possui mais filmes ? (LEFT JOIN, GROUP BY)

	SELECT genero, COUNT(id_filme) -- Coluna do agrupamento
    FROM genero 
    LEFT JOIN filme ON genero.id_genero = filme.id_genero --Junção Externa
    GROUP BY genero --Cria um grupo para cada valor distinto da coluna tipo.tipo
    ORDER BY COUNT(id_filme) DESC --coluna pela qual o resultado será ordenado
    LIMIT 1; --limite de resultados

--Questão 3)
	--Qual é o tempo de duração do filme do gênero "Ficção Cientifica" de maior duração? (HAVING, MAX)
	
	SELECT genero.genero, MAX(duracao) FROM filme -- Coluna do agrupamento e função de agregação
	INNER JOIN genero -- condição de junção
	ON filme.id_genero = genero.id_genero -- Junção das tabelas filme e genero
	GROUP BY genero.genero -- Cria um grupo para cada valor distinto da coluna genero.genero
	HAVING genero.genero = 'Ficção Cientifica';  -- Filtra o resultado mantendo apenas os grupos cujo genero é Ficção Cientifica

--Questão 4)
	--Questão 4)
	  -- Qual é o menor faturamento  e a media dos filmes cadastrados?
	
	SELECT MIN (faturamento), AVG(faturamento)
	FROM informacoesFilme;
	
--Questão subconsulta
	--Qual o nome e o ID dos filmes do genero Romance ?
	
	SELECT nome, id_genero FROM filme WHERE id_genero =
       (SELECT id_genero FROM genero WHERE genero='Romance');



	

