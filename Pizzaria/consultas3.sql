--Lista 3
--1) Quais os dados de todas as pizzas cadastradas?
	
	SELECT * FROM pizza;
	
--2) Quais os dados de todos os ingredientes cadastrados?

	SELECT * FROM ingrediente;

--3) Qual o nome, preço e caloria das pizzas?
	
	SELECT nome, preco, calorias FROM pizza;

--4) Qual o nome e o preço das pizzas que não contém glúten?

	SELECT nome, preco FROM pizza WHERE NOT glutem;
	--SELECT nome, preco FROM pizza WHERE glutem=false

--5) Liste as pizzas cujo valor das calorias está disponível.
	
	SELECT * FROM pizza WHERE calorias IS NOT NUll;

--6) Quais pizzas custam mais que R$30?

	SELECT nome, preco FROM pizza WHERE preco > 30;

--7) Quais nomes de ingrediente contém a letra ‘a’?

	SELECT nome FROM ingrediente WHERE nome LIKE '%a%';
	--SELECT nome FROM ingrediente WHERE LOWER nome LIKE '%a%';
	--SELECT nome FROM ingrediente WHERE UPPER nome LIKE '%A%';
	--SELECT UPPER (nome) FROM ingrediente WHERE UPPER (nome) LIKE '%A%';

--8) Qual o preço da pizza Siciliana?

	SELECT nome, preco FROM pizza WHERE nome = 'Siciliana';

--9) Quais pizzas contém as informações de calorias e custam menos que R$32?

	SELECT nome, preco FROM pizza WHERE calorias IS NOT NULL and preco < 32;

--10) Liste as pizzas que não contém glúten ou possuem menos que 1600 calorias.

	SELECT nome, glutem, calorias FROM pizza WHERE NOT glutem OR calorias < 1600;


