--2) Insira ao menos cinco registros em cada tabela. Porém apenas um comando
--INSERT deve ser utilizado por tabela.
--Informação: É possível realizar INSERT de múltiplos registros em um comando.
--Verifique a sintaxe do comando INSERT

	INSERT INTO tipo
    (id_tipo, tipo)
    VALUES
   (1, 'Tradicional'), 
   (2, 'Especial'), 
   (3, 'Doce'),
   (4, 'Nobre'),
   (5, 'Vegetariana');
   
   INSERT INTO pizza 
   (id_pizza, nome, preco, calorias, dt_hr_cadastro, id_tipo)
   VALUES 
   (1, 'Margherita', 27, 1500, '2021-01-05 10:00:00', 1), 
   (2, 'Calabresa', 29, null, '2021-02-12 10:15:15', 1),
   (3, 'Pepperoni', 31, 1900, '2021-04-06 10:20:28', 1),
   (4, 'Camarão', 35, 1600, '2021-08-11 10:30:10', 2),
   (5, 'Siciliana', 31, null, '2021-05-09 10:40:30', 2),
   (6, 'Chocolate', 27, 2200, '2021-08-10 10:45:10', 3),
   (7, 'Carne seca', 43, 1400, '2021-07-04 11:12:00', 4),
   (8, 'Chocolate com Morango', 38, 2300, '2021-12-18 11:17:25', 3),
   (9, 'Portuguesa', 40, 1300, '2021-06-19 11:35:15', 4),
   (10, 'Brócolis com Catupiry', 40, 1300, '2021-03-05 11:50:45', 5);
 
 	INSERT INTO ingrediente 
 	(id_ingrediente, nome)
 	VALUES 
	(1, 'Molho de tomate, mussarela e manjericão'),
	(2, 'Molho de tomate, mussarela e calabresa'),
	(3, 'Molho de tomate, mussarela e pepperoni'),
	(4, 'Molho de tomate, mussarela e camarão'),
	(5, 'Molho de tomate, mussarela, alcaparra, anchova e azeitona'),
	(6, 'Chocolate e leite condensado'),
	(7, 'Molho, mussarela, carne seca, cebola, tomate picado e orégano.'),
	(8, 'chocolate ao leite e morango'),
	(9, 'Ovos, cebola, azeitona, ervilha, queijo e presunto '),
	(10, 'Brócolis, catupiry ');
 
 	INSERT INTO pizza_ingrediente 
 	(id_pizza, id_ingrediente)
	VALUES 
 	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10);
