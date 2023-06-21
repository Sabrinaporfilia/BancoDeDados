CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
tipo varchar(50) not null,
indicacao varchar(255) not null,
primary key(id)
);

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome varchar(50) not null,
marca varchar(50) not null,
uso varchar(20) not null,
preco decimal (5,2) not null,
primary key(id)
);

ALTER TABLE tb_produtos ADD categoria_id bigint;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(tipo,indicacao)
values ("Analgésico", "Aliviar e reduzir dor");
INSERT INTO tb_categorias(tipo,indicacao)
values ("Antibióticos", "Tratamento de infecções bacterianas");
INSERT INTO tb_categorias(tipo, indicacao)
values ("Anti-inflamatório", "Dor de cabeça,costas,dentes,artrite, cólicas, febre, minimizar as dores de pós-operatória e pós-traumática");
INSERT INTO tb_categorias(tipo,indicacao)
values ("Antigripal", "Previne a gripe");
INSERT INTO tb_categorias(tipo,indicacao)
values ("Vitaminas", "Fortalecer o sistema imunológico");


INSERT INTO tb_produtos (nome,marca,uso,preco, categoria_id)
values ("Amoxicilina", "Biosmtética","Via Oral/Comprimido", 23.99, 2);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Paracetamol", "Medley","Via Oral", 9.78, 1);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Vitamina C", "Raia","Via Oral", 6.00, 5);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Buscopan", "Boehringer","Via Oral", 16.99, 3);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Benegripe", "Hypera Pharma","Via Oral", 68.00, 4);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Ibuprofeno", "Multilab","Via Oral", 25.00, 3);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Aspirina", "Bayer","Via Oral/Comprimido", 57.00, 1);
INSERT INTO tb_produtos (nome,marca,uso,preco,categoria_id)
values ("Cimegripe", "Cimed","Via Oral", 13.49, 4);




SELECT * FROM tb_produtos WHERE preco> 50.00;


 
SELECT * FROM  tb_produtos WHERE preco BETWEEN 5.00 AND 50.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.*, tb_categorias.* FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * from tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tb_categorias.tipo = "Analgésico";
