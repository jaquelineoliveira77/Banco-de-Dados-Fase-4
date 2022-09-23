CREATE TABLE classificacao (
	id_classificacao integer PRIMARY KEY,
	nome_classificacao varchar(64));
	
CREATE TABLE restaurante (
	id_restaurante integer PRIMARY KEY,
	nome varchar(64) NOT NULL,
	valor decimal(5,2) NOT NULL,
	id_classificacao integer NOT NULL,
	FOREIGN KEY (id_classificacao) REFERENCES classificacao(id_classificacao));
	
CREATE TABLE caracteristica (
	id_caracteristica integer PRIMARY KEY,
	localizacao varchar(64),
	data_inauguracao timestamp DEFAULT now());
		
CREATE TABLE restaurante_caracteristica (
	id_restaurante integer NOT NULL,
	id_caracteristica integer NOT NULL,
	restaurante boolean,
	estacionamento boolean,
	PRIMARY KEY (id_restaurante,id_caracteristica),
	FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante),
	FOREIGN KEY (id_caracteristica) REFERENCES caracteristica(id_caracteristica));
	
	