CREATE TABLE genero (
	id_genero integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL);
	
CREATE TABLE seriado (
	id_seriado integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL,
	ano_inicio integer,
    ano_fim integer,
	id_genero integer NOT NULL,
	FOREIGN KEY (id_genero) REFERENCES genero(id_genero));
	
CREATE TABLE plataforma_streaming (
	id_plataforma integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL,
	preco_mensal decimal(5,2) NOT NULL,
	offline boolean);
		
CREATE TABLE plataforma_seriado (
	id_plataforma integer NOT NULL,
	id_seriado integer NOT NULL,
	data_inicio timestamp NOT NULL,
    data_fim timestamp,
	PRIMARY KEY (id_plataforma, id_seriado, data_inicio),
	FOREIGN KEY (id_plataforma) REFERENCES plataforma_streaming (id_plataforma),
	FOREIGN KEY (id_seriado) REFERENCES seriado (id_seriado));
	
	
	