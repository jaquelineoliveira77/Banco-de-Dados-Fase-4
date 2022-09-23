--Consultas

--3) Liste o nome de todas as pizzas com o seu tipo associado. O nome dos tipos
--deve estar em CAIXA ALTA e o nome das pizzas em caixa baixa.
--Informação: É possível alterar a capitalização do texto utilizando as funções
--LOWER() e UPPER().

	 SELECT LOWER (pizza.nome), UPPER (tipo.tipo) FROM pizza 
     INNER JOIN tipo -- condição de junção
     ON pizza.id_tipo=tipo.id_tipo; -- condição de junção


--4) Liste as pizzas com seus ingredientes de forma que no resultado terá uma
--linha para cada pizza e os ingredientes serão mostrados no seguinte formato
--“Ingrediente 1, Ingrediente 2, …”.
--Informação: É possível agregar valores textuais em um único valor textual com
--um separador utilizando a função de agregação string_agg().

	 SELECT pizza.nome, STRING_AGG (ingrediente.nome , ' , ' ) FROM ingrediente
     INNER JOIN ingrediente -- condição de junção
     ON pizza_ingrediente.id_ingrediente = ingrediente.id_ingrediente
	 GROUP BY pizza.nome; 
	 
	
--5) Liste os nomes, preços e calorias de todas as pizzas:
--a) em ordem da mais calórica para a menos calórica com os valores “null” aparecendo no início;

	 SELECT nome, preco, calorias FROM pizza
	  ORDER BY calorias DESC NULLS FIRST;

--b) em ordem da mais calórica para a menos calórica com os valores “null”
--aparecendo no final. Informação: É possível definir a posição dos valores NULL em um resultado
--ordenado utilizando as opções NULLS FIRST e NULLS LAST da cláusula ORDER BY.

	 SELECT nome, preco, calorias FROM pizza
	  ORDER BY calorias DESC NULLS LAST;


--6) Liste o nome das pizzas, o ano em que foram cadastradas e o tempo do
--cadastro até a data atual. Informação: É possível utilizar funções como extract(), age(), now(), entre outras
--para manipular dados de datas.
	  
	  select * from pizza;
	  
	  SELECT nome, dt_hr_cadastro,
	  AGE ('2021-01-05','2022-01-29') AS dt202201, AGE ('2021-02-12','2022-01-29')
	  AS dt202202, AGE ('2021-04-06','2022-01-29') AS dt202204, AGE ('2021-08-11','2022-01-29')
	  AS dt202208, AGE ('2021-05-09','2022-01-29') AS dt202205, AGE ('2021-08-10','2022-01-29')
	  AS dt202208, AGE ('2021-07-04','2022-01-29') AS dt202207, AGE ('2021-12-18','2022-01-29')
	  AS dt202212, AGE ('2021-06-19','2022-01-29') AS dt202206, AGE ('2021-03-05','2022-01-29') AS dt202203
	  FROM pizza;
	  
	  
	 
	   


--7) Liste os nomes, preços e calorias de todas as pizzas. No caso em que as
--calorias tem valor “null” mostre no resultado o texto “Sem informação”.
--Informação: É possível utilizar a função coalesce() para retornar um valor caso
--um (ou mais) parâmetro seja “null”. Como os parâmetros precisam ser de tipos de
--dados compatíveis para converter um número em um texto é possível realizar o
--cast de uma coluna (ex. SELECT coluna::varchar).

	SELECT nome, preco, calorias FROM pizza


--8) Qual é o segundo maior preço entre todas as pizzas?
--Informação: Considere que pode ter mais de uma pizza com o mesmo preço.

	SELECT MAX (preco) FROM pizza
	WHERE preco < (SELECT MAX (preco) FROM pizza);


--9) Liste todas as combinações possíveis de pares de pizza com o nome de uma
--pizza na primeira coluna e o nome da outra pizza na segunda coluna da
--tabela de resultado (ex. Margherita / Calabresa). Não deve ter pares com
--duas pizzas com o mesmo nome.
--Informação: É possível realizar o produto cartesiano (ou outros tipos de junção)
--de uma tabela com ela própria. Para fazer isso é necessário na cláusula FROM
--renomear cada uma das referências a essa tabela (ex. FROM pizza p1) e utilizar
--seu novo nome para referenciar cada coluna (ex. SELECT p1.nome).






--10)Liste os tipos de pizza e a média de preço para cada um dos tipos. Renomeie
--no resultado a coluna com a média de preços para “Média de Preços”.
--Mostre o preço médio com apenas duas casas decimais.
--Informação: É possível renomear uma coluna no SELECT utilizando um alias
--através da cláusula as (Ex. avg(preco) as “Preço”). Para determinar o número de
--casas em um valor decimal utilize a função “round()”.

	SELECT AVG(preco) AS MédiaDePreços, 
	ROUND (AVG(preco), 2) AS PreçoMédioArredondado
	FROM pizza;


--11)Liste o nome das pizzas acompanhado de seu preço no formato “R$valor” e
--“valor calorias” na tabela de resultado (Ex. Margherita / R$27 / 1500 calorias).
--Informação: É possível concatenar valores de colunas e textos utilizando a
--função concat() no SELECT.

	SELECT CONCAT (nome, ' / ' , ' R$ ', preco, ' / ', calorias, ' ', 'calorias')
	FROM pizza;


--12)Liste os nomes das pizzas acompanhado dos valores de calorias no formato
--“valor calorias” (ex. Margherita / 1500 calorias). Nos casos em que o valor de
--calorias for “null” mostre o texto “Sem informação”.
--Informação: É possível utilizar a expressão CASE WHEN na cláusula SELECT
--para realizar operações condicionais.
	
	SELECT nome, calorias,
	CASE WHEN calorias IS null THEN 'Sem informações' END
	FROM pizza;
	
	SELECT CONCAT (nome, ' / ', calorias, ' calorias'),
	CASE WHEN calorias IS null THEN 'Sem informações' END
	FROM pizza;


--13) Liste todas as pizzas que não contém glúten.
--Informação: Considere que uma pizza não contém glúten quando nenhum dos
--seus ingredientes contém glúten.

	SELECT nome FROM pizza
	
	  select * from ingrediente;


--14) O cardápio no aplicativo da pizzaria passará a ter 4 pizzas por página, sendo
--as páginas organizadas em ordem alfabética. Liste as pizzas da segunda
--página nesse aplicativo.
--Informação: A cláusula LIMIT permite determinar uma posição a partir da qual os
--resultados serão limitados utilizando a cláusula OFFSET.

	SELECT * FROM pizza 
	ORDER BY nome ASC
	limit 4 OFFSET 4;


--15) Escreva um (único) comando para aumentar o preço das pizzas que custem
--menos que R$30 em 30%, entre R$30 e R$35 em 20% e mais que R$35 em
--10%.
--Informação: É possível utilizar o operador CASE para verificar diferentes
--condições para atualização de uma tabela em um único comando UPDATE.




--16) Liste os tipos de pizza acompanhado do nome da pizza mais barata de cada
--um dos tipos (Ex. Tradicional / Margherita).
--Informação: É possível utilizar a cláusula DISTINCT ON para agrupar os valores
--iguais de uma coluna da tabela resultante e mostrar o valor de outra coluna da
--primeira das linhas daquele grupo. Como por padrão os resultados do SQL não
--são ordenados, para definir qual é a primeira linha é preciso utilizar a cláusula
--ORDER BY.




--17) Para cada um dos tipos de pizza mostre todas as pizzas ordenadas pelo
--preço (do mais barato para o mais caro) e em uma coluna adicional mostre
--qual é a posição do preço de cada pizza em seu grupo (ex. Se Calabresa é a
--segunda mais cara do tipo tradicional mostrar no resultado Calabresa /
--Tradicional / 2).
--Informação: É possível organizar os registros em grupos e utilizar funções sobre
--esse grupo, porém mostrando todas as linhas do grupo, ao utilizar Window
--Functions. Uma das possibilidades é mostrar a posição relativa de um valor no
--grupo utilizando a função RANK().

	SELECT pi.nome, piz.tipo, preco,
	RANK() OVER(ORDER BY preco) AS Posição
	FROM pizza AS pi
	INNER JOIN tipo AS piz
	ON pi.id_tipo = piz.id_tipo;
	

--18) Liste os tipos de pizza junto com o nome da pizza mais barata e o nome da
--pizza mais cara de cada um dos tipos (Ex. Tradicional / Margherita /
--Pepperoni).
--Informação: Outra possibilidade ao utilizar Window Functions é a de na cláusula
--SELECT mostrar o valor do primeiro (FIRST_VALUE) e do último (LAST_VALUE)
--registro do grupo em uma determinada coluna


