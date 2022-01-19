create database db_cursoDaMinhaVida;
 use db_cursoDaMinhaVida;
 

create table tb_categorias(
id bigint auto_increment not null,
tipo varchar(255) not null,
nivel varchar(255) not null,
primary key (id)
);

insert into tb_categorias (tipo, nivel) values ("Tecnologia", "Tecnico");
insert into tb_categorias (tipo, nivel) values ("Matemática", "Ensino Médio");
insert into tb_categorias (tipo, nivel) values ("Português", "Ensino Médio");
insert into tb_categorias (tipo, nivel) values ("Inglês", "Intermediáio");
insert into tb_categorias (tipo, nivel) values ("Espanhol", "Básico");

create table tb_produto (
id bigint auto_increment not null,
curso varchar(255) not null,
CargaHoraria varchar(255),
periodo varchar(255),
valor decimal (7,2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias (id)
);

insert into tb_produto (curso, CargaHoraria, periodo, valor, categorias_id) 
values ("Java", "40h", "Manhã", 300.00, 1);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("Portugol", "8h", "Tarde", 40.00, 1);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("Baskhara", "8h", "Manhã", 25.00, 2);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("Pontuação", "12h", "Tarde", 60.00, 3);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("Sentenças", "8h", "Tarde", 65.00, 3);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("Verbo TO BE", "8h", "Manhã", 140.00, 4);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("Sentences", "8h", "Tarde", 180.00, 4);
insert into tb_produto  (curso, CargaHoraria, periodo, valor, categorias_id)
values ("hla que tal", "8h", "Manhã", 30.00, 5);

select * from tb_categorias;
select * from tb_produto;
select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where curso like "%J%";
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id;

select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id where tb_categorias.id = 1;

