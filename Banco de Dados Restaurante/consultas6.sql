--6
--3 perguntas:
--GROUP BY
--- HAVING
--- ANY, ALL ou EXISTS

--1 Qual é o maior preço em cada um dos restaurantes ?

	SELECT restaurante.nome,restaurante.id_restaurante, MAX (valor) FROM restaurante 
	INNER JOIN restaurante_caracteristica
	ON restaurante.id_restaurante = restaurante_caracteristica.id_restaurante
	GROUP BY restaurante.nome, restaurante.id_restaurante;
	
	
--2 Qual é o nome do restaurante que possui preço menor que 40 reais ?

	SELECT restaurante.nome, MAX(valor) FROM restaurante 
	INNER JOIN restaurante_caracteristica
	ON restaurante.id_restaurante = restaurante_caracteristica.id_restaurante
	GROUP BY restaurante.nome
	HAVING MIN (valor) < 40;
	
	
--3 Quais restaurante possuem estacionamento ?

	SELECT * FROM restaurante WHERE 
	 EXISTS (SELECT * FROM restaurante_caracteristica WHERE
		restaurante.id_restaurante = restaurante_caracteristica.id_restaurante 
		  AND restaurante_caracteristica.estacionamento = true);


	
	