CREATE DATABASE db_curso_EAD;

CREATE TABLE tb_categorias(
 id BIGINT AUTO_INCREMENT,
 nome_categoria VARCHAR(100),
 nivel VARCHAR(100), 
 PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
categorias_id BIGINT,
nome_curso VARCHAR(100),
valor DECIMAL(6,2),
duracao BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, nivel)
VALUES ('Java', 'Iniciante'),
('Java', 'Intermediário'),
('Java', 'Avançado'),
('Python', 'Iniciante'),
('Python', 'Intermediário'),
('Python', 'Avançado'),
('SQL', 'Iniciante'),
('SQL', 'Intermediário'),
('SQL', 'Avançado');

SELECT * FROM tb_categorias;

INSERT INTO tb_cursos(nome_curso,valor,duracao,categorias_id)
VALUES ('Java POO', 200.00, 1,1),
('Java BackEnd', 700.00, 3,2),
('Java FullStack', 2000.00, 12,3),
('Python Data', 600.00, 6,4),
('Python Pandas', 1600.00, 9,6),
('SQL Fundamentals', 300.00, 2,7),
('SQL Oracle', 650.00, 3,8),
('MySQL', 450, 3,9);

SELECT * FROM tb_cursos;
SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 and 1000.00;
SELECT * FROM tb_cursos WHERE nome_curso LIKE "%j%"

SELECT tb_cursos, tb_categorias.nome_categoria FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id;

