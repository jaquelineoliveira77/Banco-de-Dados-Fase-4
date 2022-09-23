 	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (1, 'Quatro estrelas');
	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (2, 'Cinco estrelas');
	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (3, 'Quatro estrelas');
	 INSERT INTO classificacao (id_classificacao, nome_classificacao)
	 VALUES (4, 'Cinco estrelas');
	 
	 INSERT INTO hotel(id_hotel, nome, valorEstadia, id_classificacao)
	 VALUES (1, 'Grande Hotel Lages', 380, 4);
	 INSERT INTO hotel(id_hotel, nome, valorEstadia, id_classificacao)
	 VALUES (2, 'Le CanarD Lages', 350, 1);
	 INSERT INTO hotel(id_hotel, nome, valorEstadia, id_classificacao)
	 VALUES (3, 'Map Hotel', 280, 3);
	 INSERT INTO hotel(id_hotel, nome, valorEstadia, id_classificacao)
	 VALUES (4, 'Hotel Afford Lages', 300, 2);
	 
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (1, 'Lages', 2001-05-24);
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (2, 'Lages', 2012-02-18);
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (3, 'Lages', 2008-04-11);
	 INSERT INTO caracteristica(id_caracteristica, localizacao, data_inauguracao)
	 VALUES (4, 'Lages', 2010-07-12);
	 
	 INSERT INTO hotel_caracteristica(id_hotel, id_caracteristica, restaurante, estacionamento)
	 VALUES (1, 4, true, true);
	 INSERT INTO hotel_caracteristica(id_hotel, id_caracteristica, restaurante, estacionamento)
	 VALUES (2, 2,  true, true);
	 INSERT INTO hotel_caracteristica(id_hotel, id_caracteristica, restaurante, estacionamento)
	 VALUES (3, 1, true, false);
	 INSERT INTO hotel_caracteristica(id_hotel, id_caracteristica, restaurante, estacionamento)
	 VALUES (4, 3,  true, true);
