CREATE DATABASE db_produtos;

USE db_produtos;

CREATE TABLE db_produtos (
id bigint auto_increment, 
    nome_produto varchar(255) not null, 
    estoque int,
    fabricante varchar (255),
    cor varchar(255) not null,
    preco decimal (6,2) not null,
    primary key(id)
    );

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("Iphone",40,"Apple","vermelho", 5000);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("Xbox",12,"Microsoft","preto com branco", 2000);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("PS4",19,"Sony","preto",2600);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("PS5",60,"Sony","branco", 5000);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("Motorola G3",20,"Motorola","preto e azul", 2100);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("Samsung Galaxy",10,"Samsung","Cinza", 1870);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("Samsung Pocket",5,"Samsung","preto", 399);

INSERT INTO db_produtos (nome_produto, estoque, fabricante, cor, preco) 
values ("Controle PS4",60,"Sony","preto", 250);

SELECT * FROM db_produtos WHERE preco > 500;

SELECT * FROM db_produtos WHERE preco < 500;

UPDATE db_produtos SET preco = 6000 WHERE id = 2;

