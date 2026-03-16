create database bdFutebol1603;

use bdFutebol1603;

create table uniformes(
id int primary key auto_increment,
tipo ENUM('calção','meião','camisa')default null,
nome varchar(255) default null,
foto varchar(255) default null
);

create table tecnicos(
id int primary key auto_increment,
nome varchar(255) default null,
descricao varchar(100),
foto varchar (255) default null,
data_nascimento date default null,
data_falecimento date default null
);

create table competicoes(
id int primary key auto_increment,
nome varchar(255) default null,
internacional int
);

create table pais(
pais_id int primary key auto_increment,
nome_pais varchar(100)
);

create table estado(
estado_id int primary key auto_increment,
nome_estado varchar(100),
pais_id int,
foreign key (pais_id) references pais(pais_id)
);

create table cidades(
id int primary key auto_increment,
estado_id INT,
nome varchar(100),
foreign key (estado_id) references estado(estado_id)
);

create table posicoes (
id int primary key auto_increment,
nome varchar(255)
);







select * from uniformes;
select * from tecnicos;
