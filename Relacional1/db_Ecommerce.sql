 create database db_ShoesStore;
 use db_ShoesStore;
 create table tb_produtos(
 id bigint auto_increment, 
 produto varchar(255) not null,
 cor varchar(255) not null,
 quantidade int not null,
 valor decimal (6, 2) not null ,
  primary key (id)
 );
 
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Camisa",  
 "Preta", 1, 159.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Bermuda",  
 "Jeans", 1, 236.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Conjunto de moletom",  
 "Cinza", 1, 536.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Tênis",  
 "Azul", 1, 520.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Camisa",  
 "Rosa", 3, 477.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Bota",  
 "Preta", 1, 720.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Camisa",  
 "Branca", 2, 318.00);  
 INSERT INTO tb_produtos (produto, cor, quantidade, valor) values ("Bermuda",  
 "Preta", 5, 795.00);  
 
SELECT produto from tb_produtos where valor >500; 
SELECT produto from tb_produtos where valor <500; 

update tb_produtos  set produto = "Regata" where id = 1; 
