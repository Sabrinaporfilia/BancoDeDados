CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE db_colaboradores (
	id bigint auto_increment, 
    nome varchar(255) not null, 
    idade int,
    cpf varchar (14),
    telefone varchar(14) not null,
    salario decimal (6,2) not null,
    primary key(id)
    );
    
INSERT INTO db_colaboradores (nome, idade, cpf, telefone, salario) 
values ("Marcelo Silva",23,"453.532.362-19", "(19)97289-8271", 1362.00);
INSERT INTO db_colaboradores (nome, idade, cpf, telefone, salario) 
values ("Jean Marcos",34,"152.938.782-78", "(11)98254-9832", 1890.00);
INSERT INTO db_colaboradores (nome, idade, cpf, telefone, salario) 
values ("Luana Barros",40,"163.463.901-09", "(18)98762-3210", 2500.87);
INSERT INTO db_colaboradores (nome, idade, cpf, telefone, salario) 
values ("Rafaela Mirante",21,"674.624.012-45", "(38)97152-0752", 2876.23);
INSERT INTO db_colaboradores (nome, idade, cpf, telefone, salario) 
values ("Yan Alves",26,"235.694.903-31", "(21)90732-0760", 2648.97);

SELECT nome, salario FROM db_colaboradores WHERE salario > 2000.00;

SELECT nome, salario FROM db_colaboradores WHERE salario < 2000.00;

UPDATE db_colaboradores SET salario = 1600.00 WHERE id = 2;
