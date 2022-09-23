--Inserção

    INSERT INTO genero
    (id_genero, genero)
    VALUES
   (1, 'Animação'), 
   (2, 'Ficção Cientifica'), 
   (3, 'Ação'), 
   (4, 'Aventura'), 
   (5, 'Romance');
   
   INSERT INTO plataforma
    (id_plataforma, plataforma)
    VALUES
   (1, 'Netflix'), 
   (2, 'Disney'), 
   (3, 'Amazon'), 
   (4, 'HBO max'),
   (5, 'Globo play');
   
   INSERT INTO filme
    (id_filme, nome, duracao, id_genero, id_plataforma )
    VALUES
   (1, 'Zootopia',120, 1, 1), 
   (2, 'Divertidamente', 120 , 1, 2),
   (3, 'Pequeno Principe',90 , 1, 5),
   (4, 'Os Vingadores',150, 2, 2),
   (5, 'O céu da meia noite',120, 2, 3),
   (6, 'Homem de Ferro', 90, 2, 2),
   (7, 'Viúva Negra',120 , 3 , 2),
   (8, 'Mulher Maravilha', 120, 3, 4),
   (9, 'Thor', 120, 3 , 2),
   (10,'Guardiões da Galáxia', 120, 4, 1),	 
   (11, 'Homem-Aranha: Longe de casa', 120, 4, 1),
   (12, 'Capitã Marvel', 120, 4, 2),
   (13, 'A culpa é das estrelas', 120, 5, 3),
   (14, 'Como eu era antes de você', 120, 5, 3),
   (15, 'Terremoto: A falha de San Andreas', 120, 3, 5);
   
   INSERT INTO informacoesFilme 
    (id_informacoesFilme, ano_lancamento, faturamento, livro, id_filme )
    VALUES
   (1, 2019, 1451927, true , 1),
   (2, 2015, 1231627, false , 2), 
   (3, 2015, 1120927, true, 3), 
   (4, 2012, 1561927, true , 4), 
   (5, 2020, 1558742, true , 5), 
   (6, 2008, 1524741, true , 6), 
   (7, 2021, 1898741, false , 7), 
   (8, 2017, 1735874, true , 8), 
   (9, 2011, 1652387, true , 9), 
   (10,2014, 1658723, true , 10), 
   (11,2019, 1661927, true , 11), 
   (12,2019, 1634297, false , 12), 
   (13,2014, 1589674, true , 13), 
   (14,2016, 1085613, false , 14),
   (15,2015, 1185613, false , 15); 
   
   INSERT INTO elenco
    (id_elenco, nome, id_filme)
    VALUES
   (1, 'Ginnifer Goodwin',1 ), 
   (2, 'Pete Docter',2),
   (3, 'Riley Osborne',3), 
   (4, 'Christopher Robert Evans',4),
   (5, 'George Clooney',5),
   (6, 'Robert John Downey Jr',6),
   (7, 'Scarlett Ingrid Johansson',7),
   (8, 'Gal Gadot',8),
   (9, 'Christopher Hemsworth',9),
   (10, 'Zoë Saldaña',10),
   (11, 'Thomas Stanley Holland',11),
   (12, 'Brianne Sidonie Desaulniers',12),
   (13, 'Shailene Woodley',13),
   (14, 'Emilia Clarke',14),
   (15, 'Alexandra Daddario',15);
      
   INSERT INTO diretor
    (id_diretor, nome, dt_nascimento, id_filme)
    VALUES
   (1,'Byron Howard','1968-12-26',1),  
   (2,'Pete Docter', '1968-10-09',2), 
   (3,'Mark Osborne', '1970-09-17',3), 
   (4,'George Clooney', '1961-05-06',5), 
   (5,'Josh Boone', '1979-04-05',13), 
   (6,'Anthony Russo', '1970-02-03',4), 
   (7,'Jon Favreau', '1966-10-19',6), 
   (8,'Cate Shortland', '1968-08-10',7), 
   (9,'Patty Jenkins', '1971-07-24', 8), 
   (10,'Kenneth Branagh', '1960-12-10',9), 
   (11,'James Gunn', '1966-08-05',10),   
   (12,'Jon Watts', '1981-06-28',11), 
   (13,'Anna Boden', '1979-10-20',12), 
   (14,'Thea Sharrock', '1976-01-01',14),
   (15,'Brad Peyton', '1978-05-27',15);
   
    INSERT INTO Premiacao
    (id_premiacao, nome )
    VALUES
   (1, 'Oscar'), 
   (2, 'Globo de Ouro'),  
   (4, 'Annie Awards'),
   (5, 'CCA');
   
   INSERT INTO filmePremiacao
    (id_filmePremiacao, nome_filme, ano_premiacao, id_diretor, id_premiacao)
    VALUES
   (1, 'Zootopia', 2019 , 1 , 4 ), 
   (2, 'Divertidamente', 2019, 2, 4),
   (3, 'Pequeno Principe', 2018 , 3, 5),
   (4, 'Os Vingadores', 2013, 6 , 1),
   (5, 'O céu da meia noite', 2021 , 4 ,4 ),
   (6, 'Homem de Ferro',2009 , 7 , 1),
   (7, 'Viúva Negra', 2022, 8 , 1 ),
   (8, 'Mulher Maravilha', 2018, 9, 1 ),
   (9, 'Thor', 2012, 10 , 1),
   (10,'Guardiões da Galáxia',2015 , 11 , 1),	 
   (11, 'Homem-Aranha: Longe de casa', 2020, 12, 2),
   (12, 'Capitã Marvel',2020 ,13 ,2 ),
   (13, 'A culpa é das estrelas',2015 ,5 , 2),
   (14, 'Como eu era antes de você', 2017, 14, 2),
   (15, 'Terremoto: A falha de San Andreas', 2016, 15, 1);
  
   