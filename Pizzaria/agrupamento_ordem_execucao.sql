--- Agrupamento e Ordem de Execução

--1) Quantas pizzas cadastradas há para cada um dos tipos?
	
	SELECT tipo, COUNT(*) FROM pizza INNER JOIN tipo
	 ON pizza.id_tipo = tipo.id_tipo --chave estrangeira = a chave primária que faz referencia
	GROUP BY tipo; --agrupu pela coluna tipo


--2) Qual é o número de ingredientes em cada uma das pizzas?

	SELECT pizza.nome, COUNT(id_ingrediente) FROM pizza INNER JOIN pizza_ingrediente
	  ON pizza.id_pizza = pizza_ingrediente.id_pizza
	 GROUP BY pizza.nome;
	 
	
--3) Quais tipos de pizza possuem ao menos duas pizzas cadastradas?

	SELECT tipo.tipo, COUNT(id_pizza) FROM pizza INNER JOIN tipo
	  ON pizza.id_tipo = tipo.id_tipo
	 GROUP BY tipo having count(*) >= 2;

--4) Qual é a média de preços de cada tipo de pizza?

    SELECT tipo.tipo, AVG(preco) FROM pizza INNER JOIN tipo
	  ON pizza.id_tipo = tipo.id_tipo
	GROUP BY tipo; 

--5) Qual é o maior preço em cada um dos tipos de pizza?
	
	SELECT tipo.tipo, MAX(preco) FROM pizza INNER JOIN tipo 
	  ON pizza.id_tipo = tipo.id_tipo
	GROUP BY tipo.tipo;

--6) Quais pizzas possuem mais do que 3 ingredientes?

	SELECT pizza.nome FROM pizza INNER JOIN pizza_ingrediente
	  ON pizza.id_pizza = pizza_ingrediente.id_pizza
	 GROUP BY pizza.nome
	 HAVING COUNT(id_ingrediente) > 3;
 
--7) Liste as pizzas acompanhadas do seu número de ingredientes e ordenadas da pizza com
--mais ingredientes para a pizza com menos ingredientes.
	
   SELECT pizza.nome, COUNT (id_ingrediente) FROM pizza 
   INNER JOIN pizza_ingrediente -- condição de junção
    ON pizza.id_pizza = pizza_ingrediente.id_pizza
   GROUP BY pizza.nome
   ORDER BY COUNT (id_ingrediente) DESC;
   
--8) Explique de forma breve o funcionamento do operadores GROUP BY.

--O operador GROUP BY é utilizado para criar grupos de registros que possuem os mesmos valores nas colunas
--determinadas após o operador (colunas_agrupamento).
--Na maior parte das situações, o operador GROUP BY será utilizado em conjunto com uma ou mais funções
--de agregação (count, max, min, avg e sum) que serão calculadas para cada um dos grupos definidos de acordo
--com as colunas de agrupamento

--9) Explique o quê é e para que serve o operador HAVING. Diferencie-o do operador
--WHERE.

--Na execução da consulta SQL o operador GROUP BY é executado após o operador WHERE
--O operador HAVING tem funcionamento similar ao operador WHERE, porém como ele é executado após o
--GROUP BY é possível utilizá-lo para filtrar o resultado agrupado.

--WHERE - Filtra os resultados de acordo com uma condição determinada.
--HAVING - Filtra os resultados de acordo com uma condição após os dados terem sido agrupados pelo
--operador GROUP BY

--10) Ordene de acordo com a ordem lógica de execução os seguintes operadores: SELECT,
--FROM, WHERE, GROUP BY, HAVING, ORDER BY e LIMIT, descrevendo de forma breve
--qual é a função de cada um deles ?

--FROM - Sleciona dados

--WHERE - Filtra dados de registros

--GROUP BY - Agrupa dados

--HAVING - Filtra dados de grupos

--ORDER BY - Ordena resultado

--LIMIT - Limita resultados

