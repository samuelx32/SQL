#Samuel Sobreira

#a
select v.placa, c.nome from veiculo 
inner join cliente as c on v.cliente_cpf = c.cpf;

#b
select c.cpf, c.nome from cliente as c
left join veiculo as v on v.placa = "JJJ-2020";

#c
select v.placa, v.cor from veiculo as v
left join estaciona as e on e.cod = 1;

#d
select v.placa, v.ano from veiculo as v
left join estaciona as e on e.cod = 1;

#e
select v.placa, v.ano, m.desc_2 from veiculo as v
inner join modelo as m on v.ano >= 2000;

#f
select p.ender,e.dtEntrada,e.dtSaida from patio as p
inner join estaciona as e on e.veiculo_placa = "JEG-1010";

#g
select count(*) from(
	select * from veiculo as v
    inner join estaciona as e on e.veiculo_placa = v.placa and v.cor = "verde"
);

#h
select * from cliente 
inner join veiculo as v on v.modelo_codMod = 2 and v.cliente_cpf = cliente.cpf;

#i
select e.veiculo_placa, e.hsEntrada, e.hsSaida from estaciona as e
inner join veiculo as v on v.cor = "verde";

#j
select e.dtEntrada from estaciona as e 
inner join veiculo on v.placa = "JJJ-2020";

#k
select c.nome from cliente as c 
inner join estaciona as e on e.cod = 2
inner join veiculo as v on e.veiculo_placa = v.placa
where c.cpf = e.cliente_cpf;

#l
select c.cpf from cliente as c 
inner join estaciona as e on e.cod = 3
inner join veiculo as v on e.veiculo_placa = v.placa
where c.cpf = v.cliente_cpf;

#m
select m.desc_2 from modelo as m 
inner join estaciona as e on e.cod = 2
inner join veiculo as v on e.veiculo_placa = v.placa
where m.codMod = v.modelo_codMod;

#n
select v.placa, c.nome, m.desc_2 from veiculo as v
inner join cliente as c
inner join modelo as m;








