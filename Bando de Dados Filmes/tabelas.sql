--Tabelas

CREATE TABLE genero (
	id_genero integer NOT NULL PRIMARY KEY,
	genero varchar(64) NOT NULL);

CREATE TABLE plataforma (
	id_plataforma integer NOT NULL PRIMARY KEY,
	plataforma varchar(64) NOT NULL);

CREATE TABLE filme (
	id_filme integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL,
	duracao decimal(5,2),
	id_genero integer,
	id_plataforma integer,
	FOREIGN KEY (id_genero) REFERENCES genero (id_genero),
	FOREIGN KEY (id_plataforma) REFERENCES plataforma (id_plataforma));	
	
CREATE TABLE informacoesFilme (
	id_informacoesFilme integer PRIMARY KEY,
	ano_lancamento integer,
	faturamento decimal(9,2),
	livro boolean,
	id_filme integer,
	FOREIGN KEY (id_filme) REFERENCES filme(id_filme));	

CREATE TABLE elenco (
	id_elenco integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL,
	id_filme integer,
	FOREIGN KEY (id_filme) REFERENCES filme(id_filme));

CREATE TABLE diretor (
	id_diretor integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL,
	dt_nascimento timestamp,
	id_filme integer,
	FOREIGN KEY (id_filme) REFERENCES filme(id_filme));
			
CREATE TABLE premiacao (
	id_premiacao integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL);
	
CREATE TABLE filmePremiacao (
	id_filmePremiacao integer NOT NULL PRIMARY KEY,
	nome_filme varchar(64) NOT NULL,
	id_premiacao integer,
	ano_premiacao integer,
	id_diretor integer,
	FOREIGN KEY (id_Premiacao) REFERENCES premiacao (id_Premiacao),
	FOREIGN KEY (id_diretor) REFERENCES diretor (id_diretor));


	