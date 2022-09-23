	---- 3- Insira ao menos um novo tipo de pizza, três ingredientes e duas pizzas 
    --(verifique o
    --estado utilizando o comando SELECT) 
 
	SELECT * FROM tipo;
	SELECT * FROM pizza;
	SELECT * FROM ingrediente;

    ---4- Atualize o valor de todas as pizzas que custam menos que R$33, aumentando o valor
 	--em R$2(verifique o estado utilizando o comando SELECT).
	
	UPDATE pizza SET preco = preco + 2 WHERE preco < 33;
	SELECT * FROM pizza;
	
	--- 5- Atualize as calorias das pizzas de Calabresa e Siciliana, utilizando os valores 2000 e 1700, respectivamente (verifique o estado após cada UPDATE utilizando o comando SELECT)
	
	UPDATE pizza SET calorias = 2000 WHERE nome = 'Calabresa';
	UPDATE pizza SET calorias = 1700 WHERE nome = 'Siciliana';
	SELECT * FROM pizza;

	--6- Escolha um dos ingredientes e remova-o (verifique o estado utilizando o comando
	--SELECT). Caso não seja possível remover, escreva a mensagem de erro e explique
	--porque esse erro ocorreu.

	--/DELETE FROM ingrediente WHERE id_ingrediente = 4;
	--/SELECT * FROM pizza;
	--atualizar ou excluir na tabela "ingrediente" viola a restrição de chave estrangeira "pizza_ingrediente_id_ingrediente_fkey" na tabela "pizza_ingrediente"
	--DETALHE: Key (id_ingrediente) = (4) ainda é referenciado da tabela "pizza_ingrediente".
	--Estado SQL: 23503
	--***Esse erro ocorre porque o id_ingrediente da tabela ingrediente está sendo usado na tabela pizza_ingrediente para referenciar a tabela ingrediente, 
	-- e isso faz com que a integridade relacional entre as duas tabelas seja quebrada

 	--7 - Escolha um dos três tipos de pizza iniciais e remova-o do cardápio. Caso não seja
	--possível remover, escreva a mensagem de erro e explique porque esse erro ocorreu.

	--/DELETE FROM pizza WHERE nome = 'Margherita';
	--/SELECT * FROM pizza;
	--ERRO: atualizar ou excluir na tabela "pizza" viola a restrição de chave estrangeira "pizza_ingrediente_id_pizza_fkey" na tabela "pizza_ingrediente"
	--DETALHE: Key (id_pizza) = (1) ainda é referenciado da tabela "pizza_ingrediente".
	--Estado SQL: 23503
	--*O mesmo erro da questão 6, pois o id_ingrediente a primeira pizza está sendo referenciado na tabela pizza_ingrediente
	
 	--8 - Quais os dados de todos os ingredientes cadastrados?
	
	SELECT nome FROM ingrediente;

	--9 - Qual o nome e preço das pizzas que custam mais que R$35?

	SELECT nome, preco FROM pizza WHERE preco > 35;

 	--10 - Quanto custa a pizza de Calabresa
	
	SELECT nome, preco FROM pizza WHERE nome = 'Calabresa';
	
	
	
	
