/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações 
dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes  com a nota maior do que 7.
Faça um select que retorne o/as estudantes  com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB
 pessoal e compartilhe esta atividade. */
 
 create database db_EscolaAidaLeda;
 use db_EscolaAidaLeda;
 
 create table tb_estudantes(
 id bigint auto_increment primary key,
 nome varchar(255) not null, 
 idade int not null, 
 NotaPortuguês decimal (2,1) not null,
 NotaMatemática decimal (2,1) not null
 );
 
 INSERT INTO tb_estudantes (nome, idade, notaPortuguês, NotaMatemática) values ("João Paulo da Silva",
 16, 9.2, 9.0);
 
 alter table tb_estudantes modify notaPortuguês decimal (3,1);
 alter table tb_estudantes modify notaMatemática decimal (3,1);
 
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Alice Aparício dos Santos",
 15, 8.0, 7.2);
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Ana Gouveia Guimarães",
 18, 10.0, 8.9);
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Daniel Felipe Paz Junior",
 16, 6.2, 8.1);
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Hendricki Gonçalves",
 15, 6.9, 6.5);
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Gabriel Menino Pereira",
 17, 10.0, 6.9);
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Fernanda Rocha",
 18, 8.5, 9.1);
  INSERT INTO tb_estudantes (nome, idade, notaPortuguês, notaMatemática) values ("Thalita Domingues",
 17, 5.0, 10.0);

SELECT nome, notaMatemática, notaPortuguês from tb_estudantes where notaMatemática | notaPortuguês >7; 
ALTER TABLE tb_estudantes DROP column notaPortuguês;
ALTER TABLE tb_estudantes DROP column notaMatemática;


ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
