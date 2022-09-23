--- Projeção - Π
--- Seleção - σ
--- Junção Interna ou Externa - ⨝, ⟕, ⟖ ou ⟗
--- União, Interseção ou Diferença - U, ∩ ou −

--1 Qual o preco do Restaurante Bom Apetite ?
 	Π valor(σ restaurante.nome='Restaurante Bom Apetite'(restaurante))

  -- 2 Quais são as carcterísticas do restaurante Restaurante Cansian Zamban
	(caracterisitca ⨝caracteristica.id_caracteristica=restaurante_caracteristica.id_caqracteristica
     (σ restaurante.nome=’Restaurante Cansian Zamban’(restaurante) ⨝ restaurante.id_restaurante=restaurante_caracteristica.id_restaurante
       restaurante_caracteristica))
	
--3 Quais restaurantes possuem classificação iguais ?
    Πnome(restaurantes) ∩ Πnome(classificação)