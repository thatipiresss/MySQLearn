 create database db_RHSumUp;
 use db_RHSumUp;
 create table tb_funcionario(
 id bigint auto_increment, 
 nome varchar(255) not null, 
 cargo varchar(255) not null,
 salario decimal (6, 2) not null ,
 auxCreche bool not null, 
  primary key (id)
 );
 
 INSERT INTO tb_funcionario (nome, cargo, salario, auxCreche) values ("Thatiane Maria Pires de Camargo",  
 "Engenheira de Software", 9521.00, 1);  
 INSERT INTO tb_funcionario (nome, cargo, salario, auxCreche) values ("Willian da Silva",  
 "Custumer Experience II", 3420.00, 0);  
 INSERT INTO tb_funcionario (nome, cargo, salario, auxCreche) values ("Jheniffer Aparício dos Santos",  
 "Gerente de operações", 5400.00, 0);  
 INSERT INTO tb_funcionario (nome, cargo, salario, auxCreche) values ("Davi Budweiser Gouveia",  
 "Trainning Analyst", 4200.00, 1);  
 INSERT INTO tb_funcionario (nome, cargo, salario, auxCreche) values ("Laisa Lima dos Santos",  
 "Team Leader", 3900.00, 1);  

SELECT salario from tb_funcionario where salario >2000.00;
SELECT salario from tb_funcionario where salario <2000.00;

update tb_funcionario  set salario = 1999.00 where id = 2; 
