CREATE DATABASE db_estudantes;

USE db_estudantes;

CREATE TABLE db_estudantes (
	id bigint auto_increment, 
    nome varchar(255) not null, 
    idade int,
    cpf varchar (14),
	materia varchar(255) not null,
    nota decimal (2,1) not null,
    primary key(id)
    );
    
INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Marcos Andrade",15,"412.325.008-15", "Matematica", 7.5);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Andre Gomes",16,"232.758.311-08", "Fisíca", 5);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Rute Anjos",14,"443.860.532-10", "Portugues", 9.6);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Cintia Soares",15,"083.135.621-54", "Ciencias", 3.5);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Rosa San",16,"473.192.008-74", "Matematica", 6);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Willian Neves",14,"973.334.765-00", "Quimica", 8);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Ana Mariana",13,"543.678.231-06", "Portugues", 3);

INSERT INTO db_estudantes (nome, idade, cpf, materia, nota) 
values ("Julia Bartolomeu",15,"002.345.765-16", "Artes", 7.9);

SELECT * FROM db_estudantes WHERE nota > 7;

SELECT * FROM db_estudantes WHERE nota < 7;

UPDATE db_estudantes SET nota = 9 WHERE id = 8;