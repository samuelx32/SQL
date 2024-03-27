create database corrida_espacial;

use corrida_espacial;

create table rota(
	id_rota int primary key auto_increment,
	cordenadas varchar(250) not null,
    ordem_rota varchar(100) not null
);

create table veiculo (
	id_veiculo int primary key auto_increment,
	chave varchar(258) key not null,
    tipo enum("Nave","Hover","Craft"),
    marca varchar(35) not null,
    peso float not null,
    vel_max int not null,
    raio_roda float not null,
    id_rota int,
    constraint fk_rota foreign key (id_rota) references rota(id_rota)
);

