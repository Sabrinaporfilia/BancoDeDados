USE  db_generation_game_online;

CREATE TABLE tb_personagens(
id bigint auto_increment,
primary key(id),
nome varchar(255) not null,
ataque int not null,
defesa int not null,
habilidade varchar(255) not null,
classe_id bigint,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Jimin", 3000, 2000,"Se cura 25% mais rápido a cada abate", 2);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Naico", 1500, 3000,"Cura os aliados ao seu redor", 5);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Minata", 2500, 1500,"Ágil, seus ataques ficam mais rápidos com a vida em 10%", 5);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Sayra", 3500, 5000,"Tem muita defesa para tomar a frente de seus aliados", 1);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Mike", 1300, 2000,"Sua arma se torna sua fuga, ganha 200% de velocidade", 4);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Alani", 4000, 2200,"Grande força, mais chances do inimigo ficar atordoado", 3);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Odine", 1000, 1000,"Fica invisivel no meio de inimigos por 20 segundos", 3);
INSERT INTO tb_personagens (nome, ataque, defesa, habilidade, classe_id)
values ("Willy", 2278, 3845,"Com sua magia, pode mover inimigos", 2);


-- ALTER TABLE tb_personagens ADD classe_id bigint;
-- ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
-- FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT tb_personagens.*, tb_classes.nome_classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.nome_classe = "arqueiro";

