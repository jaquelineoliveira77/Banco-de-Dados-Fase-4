-- b)Elabore duas questões

-- 1) Mostre o nome, o total de hotéis cadastrados no banco, e Ordene os nomes dos hotéis em ordem alfabética ?
	
	SELECT nome, COUNT (id_hotel) * FROM hotel ORDER BY nome; 
	

-- 2) Mostre a média de preco de todos os hotéis cadastrados, o menor e o maior preço da estadia e
-- os hotéis que custam menos que 300 reis a estadia ?
	
	SELECT AVG(valorEstadia), MIN (valorEstadia), MAX(valorEstadia) FROM hotel AND valorEstadia < 300; 
	 