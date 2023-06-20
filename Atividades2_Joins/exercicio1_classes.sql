CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
nome_classe varchar(255) not null,
armamento varchar(255) not null,
primary key (id)
);

INSERT INTO tb_classes (nome_classe, armamento)
values ("Guerreiro","Espada");
INSERT INTO tb_classes (nome_classe, armamento)
values ("Arqueiro","Arco");
INSERT INTO tb_classes (nome_classe, armamento)
values ("Mago","Cajado");
INSERT INTO tb_classes (nome_classe, armamento)
values ("Ninja","Kunai");
INSERT INTO tb_classes (nome_classe, armamento)
values ("Necromante","Orbe");
INSERT INTO tb_classes (nome_classe, armamento)
values ("Curandeiro","Livro");

select * from tb_classes;