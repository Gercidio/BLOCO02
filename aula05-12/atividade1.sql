CREATE DATABASE db_generation_game_online;
 USE db_generation_game_online;
 
 
 CREATE TABLE tb_classes(
 id BIGINT AUTO_INCREMENT,
 nome_classe VARCHAR(100),
 atributo VARCHAR(100),
 maestria VARCHAR(100),
 PRIMARY KEY (id)
 );
  
  INSERT INTO tb_classes (nome_classe, atributo, maestria)
  VALUES ('Tank', 'Resistência', 'Armadura'),
  ('Arqueiro', 'Ataque a distância', 'Armas'),
  ('Druida', 'Sabedoria', 'Magia da Natureza'),
  ('Berserker', 'Fúria','Execução'), 
  ('Assassino', 'Destreza','furtividade');  
  
  SELECT * FROM tb_classes;
  
 CREATE TABLE tb_personagens(
  id BIGINT AUTO_INCREMENT,
  classes_id BIGINT,
  nome_personagem VARCHAR(100),
  nivel INT,
  xp BIGINT,
  atk BIGINT,
  df BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
 );
  
   INSERT INTO tb_personagens (nome_personagem, nivel, xp, atk, df, classes_id)
  VALUES ('Argan', 2, 150, 800, 2500, 1),
   ('Lyra', 10, 1000, 4000, 750, 2),
   ('Eleandra', 8, 800, 2500, 500, 3),
   ('Grom ', 5, 500, 3000, 3000, 4),
   ('Velen ', 7, 700, 8000, 400, 5),
   ('Dame', 3, 300, 900, 3000, 1),
   ('Thalion ', 9, 900, 7500, 600, 2),
   ('Sylas', 4, 400, 4000, 450, 3);
  
SELECT * FROM tb_personagens WHERE atk > 2000;
SELECT * FROM tb_personagens WHERE atk < 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%a%";

SELECT nome_personagem, atk, df, tb_classes.atributo AS atributo_classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT nome_personagem, atk, df, tb_classes.nome_classe AS Classe_principal
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.id = 3;