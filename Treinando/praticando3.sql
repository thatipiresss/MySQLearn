create database db_Estoque;
use db_Estoque;

create table tb_marcas(
id bigint auto_increment,
nome varchar(20) not null,
ativo boolean,
primary key (id)
);

insert into tb_marcas (nome, ativo) values ("Nike", true);
insert into tb_marcas (nome, ativo) values ("Fatal Surf", false);
update tb_marcas set nome = "Adidas", ativo = true where id =2; -- quero alterar os dados de uma parte da tabela
delete from tb_marcas where id = 1; -- quero deletar um dado da minha tabela
insert into tb_marcas (nome, ativo) values ("Puma", true);
insert into tb_marcas (nome, ativo) values ("Channel", true);
insert into tb_marcas (nome, ativo) values ("Hope", true);



create table tb_produtos(
id bigint auto_increment not null,
nome varchar(50),
preco decimal (10,2),
marca_id bigint not null, -- não pode ficar em braco
primary key (id),
foreign key (marca_id) references tb_marcas (id)
);

insert into tb_produtos (nome, preco, marca_id) values ("Camisa", 22.99, 1); -- deu erro pois excluimos a marca um 
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", 22.99, 3); 
insert into tb_produtos (nome, preco, marca_id) values ("Tenis", 152.00, 5); 
insert into tb_produtos (nome, preco, marca_id) values ("Moletom", 80.00, 2); 
insert into tb_produtos (nome, preco, marca_id) values ("Calça", 75.00, 3); 
insert into tb_produtos (nome, preco, marca_id) values ("Bolsa", 360.00, 4); 

select * from tb_produtos inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
-- tb_marcas.id  depois do marcas vem a coluna que eu quero cruzar (o id da marca é igual a marca id

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
 inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id where tb_marcas.nome 
 like "Puma" and tb_produtos.preco >70.00 and tb_protuso.nome = "Calça";

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
 inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id where tb_marcas.nome 
 like "Puma" and tb_produtos.preco >70.00 and tb_protuso.nome = "Calça";

