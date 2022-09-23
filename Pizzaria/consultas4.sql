--Lista 4
--1) Qual é a média de preço das pizzas?

	SELECT AVG(preco) FROM pizza;


--2) Qual é o valor da pizza mais barata e da pizza mais cara?

	SELECT MIN (preco), MAX(preco) FROM pizza;
	--SELECT MIN (preco) AS menor_preco, MAX(preco) AS maior_preco FROM pizza;


--3) Qual é a diferença de preço entre a pizza que contém mais de 1700 calorias mais barata
--e a mais cara?

	SELECT MAX (preco) - min(preco) AS diferenca_preco FROM pizza WHERE calorias > 1700;
 --SELECT ABS (MIN (preco) - MAX(preco)) AS diferenca_preco FROM pizza WHERE calorias > 1700;

--4) Liste as pizzas ordenadas pelo preço (do menor para o maior).

	SELECT * FROM pizza ORDER BY preco; 
	

--5) Liste as pizzas ordenadas pelo preço (do maior para o menor).

	SELECT * FROM pizza ORDER BY preco DESC;

--6) Liste os três maiores preços de pizzas (sem repetidos).

	SELECT * FROM pizza MAX(preco) ORDER BY LIMIT 3;
	--SELECT DISTINCT preco FROM pizza ORDER BY preco DESC LIMIT 3;

--7) Quantas pizzas estão cadastradas no Banco de Dados?

	SELECT COUNT (id_pizza) FROM pizza;
	--SELECT COUNT (*) FROM pizza;

--8) Quantos ingredientes estão cadastrados no Banco de Dados

	SELECT COUNT (id_ingrediente) FROM ingrediente;
	--SELECT COUNT (*) FROM ingrediente;
	
--9) Qual a média de preço das pizzas que contém a informação de calorias? sem usar o operador avg
  SELECT SUM(preco)/COUNT(preco) FROM pizza WHERE calorias IS NOT null;

--10) Liste os valores das cinco pizzas de menor preço, sem repetir, que custem ao menos 28 reais
	SELECT DISTINCT preco FROM pizza WHERE preco>= 28 ORDER BY preco LIMIT 5;
