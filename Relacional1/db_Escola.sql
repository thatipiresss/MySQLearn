create database db_EscolaVeraCruz;
 use db_EscolaVeraCruz;
 
 create table tb_alunos(
 id bigint auto_increment primary key,
 nome varchar(255) not null, 
 idade int not null, 
 genero varchar(255),
 Nota decimal (3,1) not null
 );
 
 INSERT INTO tb_alunos (nome, idade, genero, nota) values ("João Paulo da Silva",
 16, "Masculino", 9.0);
 INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Alice Aparício dos Santos",
 15, "Feminino", 7.2);
  INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Ana Gouveia Guimarães",
 18, "Não binário", 8.9);
  INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Daniel Felipe Paz Junior",
 16, "Masculino", 8.1);
  INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Hendricki Gonçalves",
 15, "Masculino", 6.5);
  INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Gabriel Menino Pereira",
 17, "Masculino", 6.9);
  INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Fernanda Rocha",
 18, "Não binário", 9.1);
  INSERT INTO tb_alunos (nome, idade, genero, nota) values ("Thalita Domingues",
 17, "Feminino", 10.0);

SELECT * from tb_alunos where nota >7;
SELECT * from tb_alunos where nota <7;

update tb_alunos set nota = 8.2 where id = 3;