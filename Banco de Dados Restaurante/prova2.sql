
--1) Quais plataformas transmitem ao menos três seriados com início em ou posterior
--a 01/01/2020 que ainda não finalizaram a transmissão?

	SELECT plataforma_streaming.nome FROM plataforma_streaming 
	INNER JOIN seriado
	ON plataforma_streaming.id_plataforma = seriado.id_seriado
	WHERE ano_inicio >= '2020-01-01' AND ano_fim = null
	GROUP BY plataforma_streaming.nome
	HAVING COUNT(id_seriado) >= 3;


--2) Quantos seriados de cada gênero estão cadastrados (mostre também os gêneros
--que tem zero seriados)?

	SELECT genero.id_genero, COUNT(id_seriado) FROM seriado 
	INNER JOIN genero
	ON seriado.id_seriado = genero.id_genero
	GROUP BY genero.id_genero;
	

--3) Qual o número de transmissões de seriados em cada uma das plataformas?
--Ordene da plataforma com mais transmissões de seriados para a plataforma com
--menos seriados (mostre apenas as plataformas que transmitiram seriados).
	
	SELECT plataforma_streaming.nome, plataforma_streaming.id_plataforma, COUNT(id_seriado) FROM plataforma_streaming
	INNER JOIN plataforma_seriado
	ON plataforma_seriado.id_seriado = plataforma_seriado.id_plataforma
	GROUP BY plataforma_streaming.id_plataforma;
	
	SELECT seriado.nome, seriado.id_seriado, COUNT(id_genero) FROM seriado
	INNER JOIN plataforma_seriado
	ON plataforma_seriado.id_seriado = plataforma_seriado.id_plataforma
	GROUP BY seriado.id_seriado;
		

--4) Qual é o gênero que tem mais seriados (pode haver mais que um com o mesmo
--número)?

	SELECT genero.nome, genero.id_genero, COUNT(id_seriado) FROM seriado 
	INNER JOIN genero
	ON seriado.id_seriado = genero.id_genero
	GROUP BY genero.id_genero;


	select * from seriado;
	select * from genero;
	select * from plataforma_seriado;
	select * from plataforma_streaming;
