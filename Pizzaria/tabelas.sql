CREATE TABLE tipo (
	id_tipo integer NOT NULL PRIMARY KEY,
	tipo varchar(64) NOT NULL);

CREATE TABLE pizza (
	id_pizza integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL,
	preco decimal(5,2) NOT NULL,
	calorias integer,
	gluten boolean DEFAULT true,
	id_tipo integer, -- coluna FK
	FOREIGN KEY (id_tipo) REFERENCES tipo(id_tipo));


CREATE TABLE ingrediente (
    id_ingrediente integer NOT NULL PRIMARY KEY,
	nome varchar(64) NOT NULL);
	
CREATE TABLE pizza_ingrediente (
	id_pizza integer NOT NULL,
	id_ingrediente integer NOT NULL,
	FOREIGN KEY (id_pizza) REFERENCES pizza (id_pizza),
	FOREIGN KEY (id_ingrediente) REFERENCES ingrediente (id_ingrediente));
