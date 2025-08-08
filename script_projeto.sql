select * from consumo_energia_eletrica;

-- verificando se existem dados nulos
select * from consumo_energia_eletrica where ano IS NULL or mes IS NULL or sigla_uf IS NULL or tipo_consumo IS NULL or consumo IS NULL;

-- verificando se existem dados duplicados
select ano, mes, sigla_uf, tipo_consumo, consumo, count(*) as contador
from consumo_energia_eletrica
group by ano, mes, sigla_uf, tipo_consumo, consumo
having contador > 1;

-- criação de nova tabela contendo nova coluna "Região" já com dados válidos, sem nulos e duplicados
create table analise_consumo as (select ano, mes, sigla_uf, tipo_consumo, consumo, 
	case
		when sigla_uf = "AC" then "Norte"
        when sigla_uf = "AM" then "Norte"
        when sigla_uf = "PA" then "Norte"
        when sigla_uf = "RO" then "Norte"
        when sigla_uf = "RR" then "Norte"
        when sigla_uf = "AP" then "Norte"
        when sigla_uf = "TO" then "Norte"
        when sigla_uf = "MA" then "Nordeste"
        when sigla_uf = "BA" then "Nordeste"
        when sigla_uf = "AL" then "Nordeste"
        when sigla_uf = "SE" then "Nordeste"
        when sigla_uf = "RN" then "Nordeste"
        when sigla_uf = "PB" then "Nordeste"
        when sigla_uf = "PI" then "Nordeste"
        when sigla_uf = "PE" then "Nordeste"
        when sigla_uf = "CE" then "Nordeste"
        when sigla_uf = "MT" then "Centro-Oeste"
        when sigla_uf = "MS" then "Centro-Oeste"
        when sigla_uf = "GO" then "Centro-Oeste"
        when sigla_uf = "DF" then "Centro-Oeste"
        when sigla_uf = "SP" then "Sudeste"
        when sigla_uf = "RJ" then "Sudeste"
        when sigla_uf = "MG" then "Sudeste"
        when sigla_uf = "ES" then "Sudeste"
        when sigla_uf = "PR" then "Sul"
        when sigla_uf = "SC" then "Sul"
        when sigla_uf = "RS" then "Sul" end AS "Região"
from consumo_energia_eletrica);

-- verificar o consumo total por ano
select ano, sum(consumo) as consumo_total from analise_consumo group by ano order by consumo_total desc;

-- verificar o consumo total por estado
select sigla_uf, sum(consumo) as consumo_total from analise_consumo group by sigla_uf order by consumo_total desc;

-- verificar o consumo total por região
select Região, sum(consumo) as consumo_total from analise_consumo group by Região order by consumo_total desc;

-- verificar o consumo total por região em 2023 (ano com maior consumo de energia elétrica)
select Região, sum(consumo) as consumo_total from analise_consumo where ano = 2023 group by Região order by consumo_total desc;


