--insert

     INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (1, 'Quatro estrelas');
	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (2, 'Cinco estrelas');
	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (3, 'Quatro estrelas');
	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (4, 'Cinco estrelas');
	 
	 INSERT INTO restaurante(id_restaurante, nome, valor, id_classificacao)
	 VALUES (1, 'Restaurante Bom Apetite', 47, 4);
	 INSERT INTO restaurante(id_restaurante, nome, valor, id_classificacao)
	 VALUES (2, 'Restaurante Cansian Zamban', 65, 1);
	 INSERT INTO restaurante(id_restaurante, nome, valor, id_classificacao)
	 VALUES (3, 'Zamban Restaurante', 25, 3);
	 INSERT INTO restaurante(id_restaurante, nome, valor, id_classificacao)
	 VALUES (4, 'Thiuka s Restaurante', 50, 2);
	 
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (1, 'Lages', '2015-05-24');
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (2, 'Lages', '2016-02-18');
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (3, 'Lages', '2018-04-11');
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (4, 'Lages', '2014-07-12');
	 
	 INSERT INTO restaurante_caracteristica(id_restaurante, id_caracteristica, restaurante, estacionamento)
	 VALUES (1, 4, true, true);
	 INSERT INTO restaurante_caracteristica(id_restaurante, id_caracteristica, restaurante, estacionamento)
	 VALUES (2, 2,  true, true);
	 INSERT INTO restaurante_caracteristica(id_restaurante, id_caracteristica, restaurante, estacionamento)
	 VALUES (3, 1, true, false);
	 INSERT INTO restaurante_caracteristica(id_restaurante, id_caracteristica, restaurante, estacionamento)
	 VALUES (4, 3,  true, true);