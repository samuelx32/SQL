#Samuel Sobreira

#1
select a.nm_assinante, e.ds_endereco, t.n_fone
from assinante as a
left join endereco as e on a.cd_assinante = e.cd_assinante
left join telefone as t on e.cd_endereco = t.cd_endereco;

SELECT  a.cd_assinante, a.nm_assinante, e.ds_endereco, t.n_fone
FROM assinante as a
left JOIN endereco as e on a.cd_assinante = e.cd_assinante
left JOIN telefone as t on e.cd_endereco = t.cd_fone;


#2
select a.nm_assinante, r.ds_ramo
from assinante as a
inner join ramo_atividade as r on a.cd_ramo = r.cd_ramo
order by r.ds_ramo, a.nm_assinante;

SELECT  a.nm_assinante, r.ds_ramo
FROM assinante as a
INNER JOIN ramo_atividade as r on a.cd_ramo = r.cd_ramo
order by  a.nm_assinante, r.ds_ramo;

#3
select a.nm_assinante, m.ds_municipio, tp.ds_tipo
from assinante as a
inner join endereco as e on a.cd_assinante = e.cd_assinante
inner join municipio as m on e.cd_municipio = m.cd_municipio
inner join tipo_assinante as tp on a.cd_tipo = tp.cd_tipo
where m.ds_municipio = 'Sao Paulo' and tp.ds_tipo = 'Residencial';

SELECT *
FROM assinante as a
left JOIN tipo_assinante as ta on a.cd_tipo = ta.cd_tipo
left JOIN endereco as e on a.cd_assinante  = e.cd_assinante
left join municipio as m on e.cd_municipio = m.cd_municipio
where m.ds_municipio = 'Sao Paulo' and ta.ds_tipo = 'Residencial';

#4
select 	a.nm_assinante, count(t.cd_fone) as qtde 
from assinante as a 
left join endereco as e on a.cd_assinante = e.cd_assinante
left join telefone as t on e.cd_endereco = t.cd_endereco
group by a.nm_assinante 
having  qtde > 1 ;

SELECT a.nm_assinante, count(t.cd_fone) as qtde
FROM Assinante as a 
left JOIN endereco as e on a.cd_assinante  = e.cd_assinante
left JOIN telefone as t on e.cd_endereco = t.cd_endereco
group by a.nm_assinante
having qtde > 1;

select * from assinante as a
left  join endereco as e on a.cd_assinante = e.cd_assinante
left join telefone as t on e.cd_endereco = t.cd_endereco;

#5
select a.nm_assinante, t.n_fone, ta.ds_tipo,  m.ds_municipio
FROM assinante as a
left JOIN endereco as e on a.cd_assinante = e.cd_assinante
left JOIN municipio as m on e.cd_municipio = m.cd_municipio
left JOIN telefone as t on e.cd_endereco = t.cd_endereco
left JOIN tipo_assinante as ta on a.cd_tipo = ta.cd_tipo
where ta.ds_tipo = 'Comercial' and (m.ds_municipio = 'Natal' or m.ds_municipio ='Joao Camara');

select a.nm_assinante, ta.ds_tipo,  m.ds_municipio
FROM assinante as a
left JOIN endereco as e on a.cd_assinante = e.cd_assinante
left JOIN municipio as m on e.cd_municipio = m.cd_municipio
left JOIN tipo_assinante as ta on a.cd_tipo = ta.cd_tipo;
