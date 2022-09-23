--1) Liste o nome de todas as pizzas acompanhadas do seu tipo.

  SELECT pizza.nome,tipo.tipo FROM pizza 
  INNER JOIN tipo -- condição de junção
   ON pizza.id_tipo=tipo.id_tipo; -- condição de junção chave estrangeira igual a chave primária

--2) Liste todas as pizzas do tipo Tradicional.

  SELECT pizza.nome, tipo.tipo 
  FROM pizza 
    INNER JOIN tipo ON pizza.id_tipo= tipo.id_tipo -- condição de junção
  WHERE tipo.tipo= 'Tradicional'; -- condição de filtragem
								
--3) Liste todas as pizzas dos tipos Especial e Doce, acompanhadas do seu tipo.

  SELECT pizza.nome, tipo.tipo 
  FROM pizza  -- Coluna do agrupamento e função de agregação
     INNER JOIN tipo  -- condição de junção
  ON pizza.id_tipo = tipo.id_tipo  -- Junção das tabelas pizza e tipo
  WHERE tipo.tipo= 'Especial' OR tipo.tipo = 'Doce';
  
  
--4) Qual é o valor da pizza Tradicional mais cara?

  SELECT MAX(preco) 
  FROM pizza  -- Coluna do agrupamento e função de agregação
  INNER JOIN tipo -- condição de junção
  ON pizza.id_tipo = tipo.id_tipo -- Junção das tabelas pizza e tipo
  WHERE tipo.tipo = 'Tradicional';

--5) Qual é o valor da pizza Especial mais barata?

  SELECT MIN(preco) 
  FROM pizza  -- Coluna do agrupamento e função de agregação
  INNER JOIN tipo -- condição de junção
  ON pizza.id_tipo = tipo.id_tipo -- Junção das tabelas pizza e tipo
  WHERE tipo.tipo = 'Especial';
  
--6) Lista o nome de todas as pizzas acompanhado dos seus ingredientes.

  SELECT pizza.nome, ingrediente.nome 
  FROM pizza  -- Coluna do agrupamento e função de agregação
   INNER JOIN pizza_ingrediente  ON pizza_ingrediente.id_pizza = pizza.id_pizza 
   INNER JOIN ingrediente ON pizza_ingrediente.id_ingrediente = ingrediente.id_ingrediente;
    
--7) Quais são os ingredientes da pizza de Camarão?
  
  SELECT pizza.nome, ingrediente.nome FROM pizza
  INNER JOIN ingrediente -- condição de junção
  ON pizza.id_pizza = ingrediente.id_ingrediente -- Junção das tabelas pizza e ingrediente
  WHERE pizza.nome = 'Camarão';  --Filtra os resultados de acordo com uma condição determinada.
 
--8) Quais são os ingredientes da pizza de Margherita?

  SELECT pizza.nome, ingrediente.nome 
  FROM pizza
   INNER JOIN pizza_ingrediente  ON pizza_ingrediente.id_pizza = pizza.id_pizza 
   INNER JOIN ingrediente ON pizza_ingrediente.id_ingrediente = ingrediente.id_ingrediente
  WHERE pizza.nome = 'Margherita';

--9) Quais os ingredientes das pizzas que não contém glúten?

  SELECT pizza.nome, pizza.gluten, ingrediente.nome 
  FROM pizza
  INNER JOIN pizza_ingrediente  ON pizza_ingrediente.id_pizza = pizza.id_pizza 
  INNER JOIN ingrediente ON pizza_ingrediente.id_ingrediente = ingrediente.id_ingrediente
  WHERE gluten = false;

--10) Quais pizzas contém o ingrediente “Mussarela”?

  SELECT pizza.nome, ingrediente.nome 
  FROM pizza
    INNER JOIN pizza_ingrediente -- condição de junção
     ON pizza_ingrediente.id_pizza = pizza.id_pizza -- Junção das tabelas pizza e ingrediente
    INNER JOIN ingrediente ON pizza_ingrediente.id_ingrediente = ingrediente.id_ingrediente
	WHERE ingrediente.nome = 'Mussarela';

--11) Qual o nome e os ingredientes das pizzas do tipo Tradicional, que contém glúten e tem
--menos de 1700 calorias ?

  SELECT pizza.nome, ingrediente.nome 
  FROM pizza  -- Coluna do agrupamento e função de agregação
   INNER JOIN tipo ON pizza.id_tipo = tipo.id_tipo
   INNER JOIN pizza_ingrediente ON pizza_ingrediente.id_pizza = pizza.id_pizza
   INNER JOIN ingrediente ON pizza_ingrediente.id_ingrediente = ingrediente.id_ingrediente
  WHERE tipo.tipo = 'Tradicional' AND gluten AND calorias < 1700;
    

 
 


