create database banco_corrida_espacial;

use banco_corrida_espacial;

create table endereco(
	id_endereco int primary key auto_increment,
	planeta varchar(45),
    cep int
);

create table nave(
	id_nave int primary key auto_increment,
    modelo varchar(45),
    peso float,
    numero int,
    codigo varchar(45)
);

create table corrida(
	id_corrida int primary key auto_increment,
    nome varchar(45),
    rota varchar(60),
	dt_hr_corrida datetime,
    descricao text
);

create table piloto(
	id_piloto int primary key auto_increment,
    nome varchar(45),
    idade int,
    email varchar(45),
    id_endereco int,
    id_nave int,
    id_corrida int,
    constraint fk_endereco foreign key (id_endereco) references endereco (id_endereco),
    constraint fk_nave foreign key (id_nave) references nave (id_nave),
    constraint fk_corrida foreign key (id_corrida) references corrida (id_corrida)
);

create table estacao (
	id_estacao int primary key auto_increment,
    nome varchar(45),
    loc text,
    cpe int
);

create table organizacao(
	id_organizacao int primary key auto_increment,
    nome varchar(200) not null,
    complexo varchar(50),
    id_corrida int,
    constraint fk_corrida2 foreign key (id_corrida) references corrida (id_corrida)
);

create table planeta(
	id_planeta int primary key auto_increment,
    nome varchar(45),
    clp varchar(45),
    id_organizacao int,
    id_estacao int,
    constraint fk_organizacao foreign key (id_organizacao) references organizacao (id_organizacao),
    constraint fk_estacao foreign key (id_estacao) references estacao (id_estacao)
);


insert into endereco values (1,"Saturno",33223344);
insert into nave values (1,"Hover",400,33,"jjfh43j4jk4j4");
insert into corrida values (1,"Rocket League","link.net",'2022/12/05 22:36:56',"Corrida Neurótica pelos anéis de saturno");
insert into piloto values (1,"Marcelo",34,"marcelo34@gmail.com",1,1,1);
insert into organizacao values (1,"VISA","122C",1);
insert into estacao values (1,"Estação Norte","jjdjfhhjj23h4j32j43j4j3h4h3j4hj",334455);
insert into planeta values (1,"Mercurio","3A4445G5",1,1);

select * from piloto;

select nome from piloto;

select n.modelo from nave as n where numero = 33;

select n.modelo, c.nome from nave as n 
inner join corrida as c on c.nome = "Rocket League" and n.modelo = "Hover";

select o.nome from organizacao as o inner join planeta as p on p.nome = "Mercurio" 
where p.id_organizacao = o.id_organizacao;






