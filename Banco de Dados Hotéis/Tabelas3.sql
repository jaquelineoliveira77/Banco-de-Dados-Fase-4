--3
CREATE TABLE classificacao (
	id_classificacao integer PRIMARY KEY,
	nome_classificacao varchar(64));
	
CREATE TABLE hotel (
	id_hotel integer PRIMARY KEY,
	nome varchar(64) NOT NULL,
	valorEstadia decimal(5,2) NOT NULL,
	id_classificacao integer NOT NULL,
	FOREIGN KEY (id_classificacao) REFERENCES classificacao(id_classificacao));
	
CREATE TABLE caracteristica (
	id_caracteristica integer PRIMARY KEY,
	localizacao varchar(64),
	data_inauguracao timestamp DEFAULT now());
		
CREATE TABLE hotel_caracteristica (
	id_hotel integer NOT NULL,
	id_caracteristica integer NOT NULL,
	restaurante boolean,
	estacionamento boolean,
	PRIMARY KEY (id_hotel,id_caracteristica),
	FOREIGN KEY (id_hotel) REFERENCES hotel(id_hotel),
	FOREIGN KEY (id_caracteristica) REFERENCES caracteristica(id_caracteristica));
	
	