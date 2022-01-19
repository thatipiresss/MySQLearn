create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categorias(
	id bigint auto_increment,
    produto varchar(255) not null,
    disponível bool not null,
	primary key (id)
);

insert into tb_categorias (produto, disponível) values ("Fruta", true); 
insert into tb_categorias (produto, disponível) values ("Verdura", true); 
insert into tb_categorias (produto, disponível) values ("Legumes", true); 
insert into tb_categorias (produto, disponível) values ("Folhas pra banho", true); 
insert into tb_categorias (produto, disponível) values ("Yorgute Natural", true); 

select * from tb_categorias;

create table tb_produto(
	id bigint auto_increment,
    nome varchar (255) not null,
    quantidade varchar(255) not null,
    validade date not null,
    valor decimal (4,2)  not null,
    categorias_id bigint,
    primary key (id),
    foreign key (categorias_id) references tb_categorias (id)
);
 
 
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Maça", 6, 20220201, 21.00, 1);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Lixia", 20, 20220220, 63.00, 1);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Alface", 30, 20220301, 53.00, 2);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Abobrinha", 6, 20220201, 31.00, 3);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Couve Flor", 6, 20220227, 40.00, 2);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Arruda", 6, 20220211, 49.00, 4);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("São Jorge", 6, 20220201, 36.00, 4);
insert into tb_produto (nome, quantidade, validade, valor, categorias_id) values ("Yorgute de Morango", 6, 20220122, 12.00, 5);

   
select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id;

select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id where tb_categorias.id = 4;