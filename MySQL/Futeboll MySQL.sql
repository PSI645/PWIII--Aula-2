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

create table jogadores (
id int primary key auto_increment,
posicao_id int,
nome varchar(255) default null,
nome_real varchar(255) default null,
descricao varchar(255) default null,
foto varchar(255) default null,
data_nascimento date default null,
data_falecimento date default null,
id_cid_nas int,
foreign key (posicao_id) references posicoes(id),
foreign key (id_cid_nas) references cidades(id)
);

insert into pais (nome_pais) values
('Brasil'),
('Argentina'),
('Portugal'),
('Espanha');

insert into estado (nome_estado, pais_id) values
('São Paulo', 1),
('Rio de Janeiro', 1),
('Buenos Aires', 2),
('Lisboa', 3);

insert into cidades (estado_id, nome) values
(1, 'Santos'),
(1, 'São Paulo'),
(2, 'Rio de Janeiro'),
(3, 'La Plata'),
(4, 'Lisboa');

insert into posicoes (nome) values
('Goleiro'),
('Zagueiro'),
('Lateral'),
('Meio Campo'),
('Atacante');

insert into uniformes (tipo, nome, foto) values
('camisa', 'Camisa Titular', 'camisa_titular.png'),
('camisa', 'Camisa Reserva', 'camisa_reserva.png'),
('calção', 'Calção Branco', 'calcao_branco.png'),
('meião', 'Meião Preto', 'meiao_preto.png');

insert into tecnicos (nome, descricao, foto, data_nascimento, data_falecimento) values
('Telê Santana', 'Treinador histórico do futebol brasileiro', 'tele.png', '1931-07-26', '2006-04-21'),
('Luiz Felipe Scolari', 'Técnico campeão mundial 2002', 'felipao.png', '1948-11-09', null),
('Pep Guardiola', 'Treinador espanhol famoso pelo tiki-taka', 'pep.png', '1971-01-18', null);

insert into competicoes (nome, internacional) values
('Campeonato Brasileiro', 0),
('Copa do Brasil', 0),
('Copa Libertadores', 1),
('Copa do Mundo', 1);

insert into jogadores 
(posicao_id, nome, nome_real, descricao, foto, data_nascimento, data_falecimento, id_cid_nas)
values
(5, 'Pelé', 'Edson Arantes do Nascimento', 'Considerado um dos maiores jogadores da história', 'pele.png', '1940-10-23', '2022-12-29', 1),

(4, 'Zico', 'Arthur Antunes Coimbra', 'Ídolo do Flamengo e da seleção brasileira', 'zico.png', '1953-03-03', null, 3),

(5, 'Messi', 'Lionel Andrés Messi', 'Craque argentino multicampeão', 'messi.png', '1987-06-24', null, 4),

(3, 'Cafu', 'Marcos Evangelista de Morais', 'Lateral direito campeão do mundo', 'cafu.png', '1970-06-07', null, 2);

 
select * from uniformes;
select * from tecnicos;
select * from competicoes;
select * from pais;
select * from estado;
select * from cidades;
select * from posicoes;
select * from jogadores;


