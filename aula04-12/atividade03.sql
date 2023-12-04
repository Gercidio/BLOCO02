CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome_aluno VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
turma VARCHAR(255) NOT NULL,
disciplina VARCHAR(255) NOT NULL,
data_ingresso DATE,
nota_final DECIMAL NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_estudantes MODIFY nota_final decimal(4, 2);


INSERT INTO tb_estudantes(nome_aluno, email, turma, disciplina, data_ingresso, nota_final)
VALUE("Maria Silva", "maria.silva@email.com", "9A", "Introdução a Lógica de Programação", "2020-02-10", 8.5),
("Ana Santos", "ana.santos@email.com", "8A", "Introdução a Lógica de Programação", "2020-02-10", 9.5),
("Pedro Oliveira", "pedro.oliveira@email.com", "9A", "Introdução a Lógica de Programação", "2021-02-10", 7.5),
("Raquel Costa", "raquel.costa@email.com", "8A", "Introdução a Lógica de Programação", "2021-02-10", 8.0),
("Luis Santos", "luis.santos@email.com", "7A", "Introdução a Lógica de Programação", "2023-02-10", 6.5),
("Marta Lima", "marta.lima@email.com", "7A", "Introdução a Lógica de Programação", "2023-02-10", 6.5),
("Joana Rodrigues", "joana.rodrigues@email.com", "1A", "Introdução a Lógica de Programação", "2022-02-10", 5.5),
("Miguel Fernandes", "miguel.fernandes@email.com", "1A", "Introdução a Lógica de Programação", "2022-02-10", 5.0);

SELECT * FROM tb_estudantes WHERE nota_final > 7.00;
SELECT * FROM tb_estudantes WHERE nota_final < 7.00;