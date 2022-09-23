--Álgebra Relacional

 --1) Qual o nome e preço de todas as pizzas?
	
	SELECT nome, preco FROM pizza;
 	--Πnome,preco(pizza) -- Algebra Relacional
	--Π determina as colunas
	
	SELECT * FROM pizza,tipo; -- SQL
    --pizza × tipo -- Algebra Relacional
	
 --2) Liste o nome de todos os ingredientes cadastrados.
     
	 SELECT nome FROM ingrediente;
	--Πnome(pizza) -- Algebra Relacional
	--Π determina as colunas

 --3) Qual o preço da pizza de Pepperoni?

     SELECT nome, preco FROM pizza WHERE nome = 'Pepperoni';
	 --Πpreco(σpizza.nome = 'Pepperoni')(pizza)
	  --σ seleciona as linhas

 --4) Liste todas as pizzas acompanhadas de seu tipo.

    SELECT * FROM pizza, tipo;
	--pizza >< pizza.id_tipo=tipo.id_tipo tipo
	
	--junção interna 
	SELECT pizza.nome,tipo.tipo FROM pizza
     INNER JOIN tipo 
	 ON pizza.id_tipo=tipo.id_tipo; -- SQL
   -- pizza >< pizza.id_tipo=tipo.id_tipo tipo -- Algebra Relacional
    -- >< Recebe duas tabelas e retorna uma tabela com
    --a combinação entre as linhas das tabelas que cumprem a condição de junção
   
 --5) Liste todas as pizzas acompanhadas de seu tipo. Liste também as pizzas que não tem
 --nenhum tipo associado.
   

	 --pizza >< pizza.id_tipo=tipo.id_tipo tipo
	  

--6) Quais são os ingredientes da pizza de Pepperoni?

	SELECT pizza.nome, ingrediente.nome FROM pizza 
	INNER JOIN pizza_ingrediente
	  ON pizza.id_pizza = pizza_ingrediente.id_ingrediente
	 WHERE pizza.nome = 'Pepperoni';
	 
	
	 
--7) Quais pizzas não tem o mesmo nome que algum dos seus ingredientes?

    (SELECT nome FROM pizza) 
     INTERSECT (SELECT nome FROM ingrediente); -- SQL
   --Πnome(pizza) ∩ Πnome(ingrediente) -- Algebra Relacional


--8) Liste todas as pizzas do tipo Tradicional que custam menos que R$30

     SELECT pizza.nome, pizza.preco, tipo.tipo FROM pizza
     INNER JOIN tipo 
	 ON pizza.id_tipo=tipo.id_tipo
	 WHERE tipo = 'Tradicional' AND preco < 30;
	 
	 -- pizza >< pizza.id_tipo=tipo.id_tipo tipo -- Algebra Relacional
	 --σpreco<30(pizza) -- Algebra Relacional
	
