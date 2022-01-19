create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255),
console varchar(255), 
 primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
 nome varchar(255) not null, 
 genero varchar(255) not null,
 ataque int not null,
 defesa int not null,
 classe_id bigint, 
 primary key (id),
foreign key auto_increment (classe_id) references tb_classe (id)
);

insert into tb_classe (categoria, console) values ("Futebol", "Video Game");
insert into tb_classe (categoria, console) values ("Luta", "Video Game");
insert into tb_classe (categoria, console) values ("Futebol", "Computador");
insert into tb_classe (categoria, console) values ("Luta", "Video Game");
insert into tb_classe (categoria, console) values ("Luta", "Computador");

insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Cristiano Ronaldo", "Masculino",
1500, 2000, 1);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Kratos", "Masculino",
3200, 1100, 2);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Marta", "Feminino",
2000, 1460, 1);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Hine", "Feminino",
3400, 100, 2);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Boat", "Masculino",
200, 3000, 2);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Neymar", "Masculino",
4000, 5000, 1);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("CJ", "Masculino",
200, 150, 2);
insert into tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Rafael Veiga", "Masculino",
300, 4000,1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe  on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;
