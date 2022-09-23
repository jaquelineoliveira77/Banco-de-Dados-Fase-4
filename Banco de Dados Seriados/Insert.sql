--- 1b-  Inserir ao menos 3 registros em cada tabela.
	  
	  INSERT INTO genero (id_genero, nome)
	  VALUES (1, 'Super heróis');
	  INSERT INTO genero (id_genero, nome)
	  VALUES (2, 'Ação');
	  INSERT INTO genero (id_genero, nome)
	  VALUES (3, 'Ficção científica');
	  
	  INSERT INTO seriado (id_seriado, nome, ano_inicio, ano_fim, id_genero)
	  VALUES (1, 'Legends of Tomorrow', 2016, null, 2);  
	  INSERT INTO seriado (id_seriado, nome, ano_inicio, ano_fim, id_genero)
	  VALUES (2, 'The Flash', 2014, null, 3);
	  INSERT INTO seriado (id_seriado, nome, ano_inicio, ano_fim, id_genero)
	  VALUES (3, 'Supergirl', 2015, null, 1);
	  INSERT INTO seriado (id_seriado, nome, ano_inicio, ano_fim, id_genero)
	  VALUES (4, 'Agente Carter', 2016, null, 2);
	  INSERT INTO seriado (id_seriado, nome, ano_inicio, ano_fim, id_genero)
	  VALUES (5, 'Agentes da Shield', 2017, null, 1);
	  
	  INSERT INTO plataforma_streaming (id_plataforma, nome, preco_mensal, offline)
	  VALUES (1, 'Netflix', 25.90, true);
	  INSERT INTO plataforma_streaming (id_plataforma, nome, preco_mensal, offline)
	  VALUES (2, 'Prime vídeo', 9.90, false);
	  INSERT INTO plataforma_streaming (id_plataforma, nome, preco_mensal, offline)
	  VALUES (3, 'HBO Max', 13.95, true);
	  
	  INSERT INTO plataforma_seriado (id_plataforma, id_seriado, data_inicio, data_fim)
	  VALUES (1, 1, '21-01-2016', null);
	  INSERT INTO plataforma_seriado (id_plataforma, id_seriado, data_inicio, data_fim)
	  VALUES (1, 2, '07-10-2014', null);
	  INSERT INTO plataforma_seriado (id_plataforma, id_seriado, data_inicio, data_fim)
	  VALUES (1, 3, '26-10-2015', null);
	   INSERT INTO plataforma_seriado (id_plataforma, id_seriado, data_inicio, data_fim)
	  VALUES (1, 4, '15-01-2016', null);
	   INSERT INTO plataforma_seriado (id_plataforma, id_seriado, data_inicio, data_fim)
	  VALUES (1, 5, '26-09-2017', null);
	  