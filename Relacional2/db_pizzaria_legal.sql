create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint not null auto_increment,
produto varchar(255) not null,
disponível boolean not null,
primary key (id)
);

insert into tb_categorias (produto, disponível) values ("Pizza Salgada", true);
insert into tb_categorias (produto, disponível) values ("Pizza Doce", true);
insert into tb_categorias (produto, disponível) values ("Brotinho", true);
insert into tb_categorias (produto, disponível) values ("Esfiha", true);
insert into tb_categorias (produto, disponível) values ("Refrigerante", true);


select * from tb_categorias;	

create table tb_pizza(
id bigint not null auto_increment,
sabor varchar(255) not null,
quantidade int not null,
borda bool,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);
insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Mussarela",2, true, 20.00, 3); -- brotinho

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Calabresa", 4, false, 120.00, 1); -- pizza salgada

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Brigadeiro", 1, false, 49.00, 2); -- pizza doce

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Nutella",3, false, 140.00, 2);

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Coca Cola", 1, false, 12.00, 5);

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Mussarela", 15, true, 88.00, 4);

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Frango com Catupiry",6, false, 42.00, 4);

insert into tb_pizza(sabor, quantidade, borda, preco, categoria_id) 
values("Calabresa com queijo",8, false, 55.00, 4);


select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_categorias where produto like "%C%";

select * from tb_pizza inner join tb_categorias on tb_categorias.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categorias on tb_categorias.id = tb_pizza.categoria_id where tb_categorias.id = 4;