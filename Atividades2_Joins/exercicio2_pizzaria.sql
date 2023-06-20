CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
preco decimal (5,2),
pagamento varchar(255) not null,
primary key (id)
);

CREATE TABLE tb_pizzas (
id bigint auto_increment,
primary key(id),
nome_sabor varchar(255),
tamanho varchar(255) ,
massa varchar(255),
adicional varchar(255),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (preco, pagamento)
values (18.00 , "Débito");
INSERT INTO tb_categoria (preco, pagamento)
values (25.00, "Crédito");
INSERT INTO tb_categoria (preco, pagamento)
values (50.00, "Dinheiro");
INSERT INTO tb_categoria (preco, pagamento)
values (45.00, "Débito");
INSERT INTO tb_categoria (preco, pagamento)
values (59.00, "Voucher");

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Portuguesa", "Grande", "Fina", "Azeitona", 2);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Calabresa", "Média", "Crocante", "Cheddar", 4);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Brocolis", "Pequena", "Grossa", "Champion", 2);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Frango com Catupiry", "Grande", "Fina", "Queijo", 1);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Margherita", "Grande", "Integral", "Rúcula", 5);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Milho", "Grande", "Fina", "Frango Desfiado", 2);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Vegetariana", "Média", "Grossa", "Manjericão", 2);

INSERT INTO tb_pizzas (nome_sabor, tamanho,massa,adicional,categoria_id)
values ("Quatro Queijos", "Pequena", "Macia", "Borda de catupiry", 2);


SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id WHERE tb_categoria.preco > 45.00;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id  WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome_sabor LIKE "%M%";

SELECT tb_pizzas.*, tb_categoria.preco, tb_categoria.pagamento FROM tb_pizzas
INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id;

SELECT * from tb_pizzas
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id WHERE tb_categoria.pagamento = "Débito";

