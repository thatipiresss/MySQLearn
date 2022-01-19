/*create database = Para criarmos o banco de dados. 
boa prática: adicionarmos sempre o db (database) no início do nome do
banco de dados e tb no início do nome da tabela */
/* auto_increment: toda vez que tem uma nova informação, eu quero que ele 
preencha esse ID automaticamente. */
-- not null CAMPO OBRIGATÓRIO

create database db_quitandaThatizap;
use db_quitandaThatizap;

create table tb_product(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key (id)
);


INSERT INTO tb_product(nome, quantidade, preco) values ("pêra", 500, 2.99);

alter table tb_product modify preco decimal(6 ,2); -- ou seja o máximo 6 digitos, e depois da vírgula apenas 2 casas decimais

INSERT INTO tb_product(nome, quantidade, preco) values ("tomate", 100, 8.00);
INSERT INTO tb_product(nome, quantidade, preco) values ("maça", 20, 5.00);
INSERT INTO tb_product(nome, quantidade, preco) values ("laranja", 50, 10.00);
INSERT INTO tb_product(nome, quantidade, preco) values ("banana", 200, 12.99);

select * from tb_product;
select nome from tb_product;
select nome, preco from tb_product;
select nome, preco from tb_product where preco > 8.00;


update tb_product set preco = 6.00 where id = 2;

delete from tb_product where id = 3;

ALTER TABLE tb_product ADD descricao varchar (255);

ALTER TABLE tb_product DROP descricao; -- deletar um campo

