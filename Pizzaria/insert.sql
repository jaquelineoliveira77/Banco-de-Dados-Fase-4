--- 2- Inserir os dados nas tabelas criadas
	  
	  INSERT INTO tipo (id_tipo, tipo)
	  VALUES (1, 'Tradicional');
	  INSERT INTO tipo (id_tipo, tipo)
	  VALUES (2, 'Especial');
	  INSERT INTO tipo (id_tipo, tipo)
	  VALUES (3, 'Doce');
	  INSERT INTO tipo (id_tipo, tipo)
	  VALUES (4, 'Nobre');
	  
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (1, 'Margherita', 27, 1500, false, 1);  
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (2, 'Calabresa', 29, null, true, 1);  
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (3, 'Pepperoni', 31, 1900, true, 1);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (4, 'Camarão', 35, 1600, true, 2);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (5, 'Siciliana', 31, null, false, 2);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (6, 'Chocolate', 27, 2200, true, 3);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (7, 'Carne seca', 43, 1400, false, 4);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (8, 'Chocolate com Morango', 38, 2300, true, 3);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (9, 'Portuguesa', 40, 1300, false, 4);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (10, 'Frango com Catupiry', 36, 1390, false, 1);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (11, 'Napolitana', 38, 1420, true, 1);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (12, 'Brigadeiro', 38, 1500, true, 3);
	  INSERT INTO pizza (id_pizza, nome, preco, calorias, gluten, id_tipo)
	  VALUES (13, 'Creme de avelã com frutas', 45, 1460, false, null);
	  
	
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (1, 'Molho de tomate, mussarela e manjericão');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (2, 'Molho de tomate, mussarela e calabresa');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (3, 'Molho de tomate, mussarela e pepperoni');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (4, 'Molho de tomate, mussarela e camarão');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (5, 'Molho de tomate, mussarela, alcaparra, anchova e azeitona');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (6, 'Chocolate e leite condensado');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (7, 'Molho, mussarela, carne seca, cebola, tomate picado e orégano.');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (8, 'chocolate ao leite e morango');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (9, 'Ovos, cebola, azeitona, ervilha, queijo e presunto '); 
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (10, 'Queijo catupiry, molho de tomate, frango, pimenta e salsinha');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (11, 'Frango, abacaxi em conserva, queijo parmesão e temperos');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (12, ' leite condensado, Cacau e manteiga');
	  INSERT INTO ingrediente (id_ingrediente, nome)
	  VALUES (13, 'Creme de avelã, frutas e nozes');
	  
	   
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (1,1);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (2,2);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (3,3);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (4,4);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (5,5);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (6,6);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (7,7);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (8,8);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (9,9);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (10,10);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (11,11);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (12,12);
	  INSERT INTO pizza_ingrediente (id_pizza, id_ingrediente)
	  VALUES (13,13);
