create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint not null auto_increment,
descricao varchar(255) not null,
disponível boolean,
primary key (id)
);

insert into tb_categorias (descricao, disponível) values ("Vitamina", true);
insert into tb_categorias (descricao, disponível) values ("Cuidados com o bebê", true);
insert into tb_categorias (descricao, disponível) values ("Antibiótico", true);
insert into tb_categorias (descricao, disponível) values ("Cuidados com a pele", true);
insert into tb_categorias (descricao, disponível) values ("Cuidados com a unha", true);

select * from tb_categorias;	

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
quantidade int,
validade date,
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id) 
values("AntibioticSim",6, 20261112, 148.00, 3);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("Antibac", 1, 20241010, 98.00, 3);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("Natura mamãe e bebê", 4, 20230924, 169.00, 3);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("Lenço Umidecido",1, 20220312, 23.00, 2);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("Allegra", 1, 20240410, 12.50, 3);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("Esmalte Azul", 6, 20221227, 69.00, 5);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("D", 3, 20230117, 220.00, 1);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("C", 4, 20230117, 138.00, 1);

insert into tb_produtos(nome, quantidade, validade, preco, categoria_id)
values("Esmalte Verde", 2, 20231227, 22.00, 5);


select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%B%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tb_categorias.id = 1;