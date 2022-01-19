 create database db_construindo_a_nossa_vida;
 use db_construindo_a_nossa_vida;
 
create table tb_categorias(
id bigint auto_increment not null,
tipo varchar(255) not null,
disponivel bool not null,
primary key (id)
);

insert into tb_categorias (tipo, disponivel) values ("Pisos e Azuleijos", true);
insert into tb_categorias (tipo, disponivel) values ("Tintas", true);
insert into tb_categorias (tipo, disponivel) values ("Planejados", true);
insert into tb_categorias (tipo, disponivel) values ("Misturas", true);
insert into tb_categorias (tipo, disponivel) values ("Acessórios", true);

create table tb_produto (
id bigint auto_increment not null,
produto varchar(255) not null,
cor varchar(255),
quantidade int not null,
valor decimal (7,2) not null,
datacompra timestamp,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias (id)
);


insert into tb_produto (produto, cor, quantidade, valor, datacompra, categorias_id) 
values ("Piso", "Branco", 120, 1200.00, 20220118, 1);
insert into tb_produto (produto, cor, quantidade, valor, datacompra, categorias_id) 
values ("Azuleijo", "Azul", 66, 750.00, 20220203, 1);
insert into tb_produto (produto, cor, quantidade, valor, datacompra, categorias_id) 
values ("Banheiro Completo", "Branco e preto", 2, 1700.00, 20220512, 3);
insert into tb_produto (produto, cor, quantidade, valor, datacompra, categorias_id) 
values ("Cozinha Completa", "Prata", 1, 2350.00, 20220104, 3);
insert into tb_produto (produto, quantidade, valor, datacompra, categorias_id) 
values ("Cimento", 3, 45.00, 20220114, 4);
insert into tb_produto (produto, quantidade, valor, datacompra, categorias_id) 
values ("Cal", 1, 30.00, 20211214, 4);
insert into tb_produto (produto, quantidade, valor, datacompra, categorias_id) 
values ("Rolo de tinta", 2, 20.00, 20211115, 5);
insert into tb_produto (produto, cor, quantidade, valor, datacompra, categorias_id) 
values ("Balde de tinta", "Verde", 3, 225.00, 20211225, 2);

select * from tb_categorias;
select * from tb_produto;
select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where produto like "%C%";
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id;

select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id where tb_categorias.id = 1;