CREATE DATABASE db_RH;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
banco_horas BIGINT,
data_inicio DATE,
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, email, banco_horas, data_inicio, salario)
VALUE ("João Silva", "joao.silva@email.com", 30, "2022-05-15", 5000.00),
("Ana Santos", "ana.santos@email.com", 20, "2021-09-10", 4500.00),
("Carlos Oliveira", "carlos.oliveira@email.com", 15, "2023-01-25", 3000.00),
("Maria Pereira", "maria.pereira@email.com", 25, "2020-03-08", 3500.00),
("Pedro Almeida", "pedro.almeida@email.com", 18, "2021-11-30", 1500.00),
("Raquel Costa", "raquel.costa@email.com", 1, "2023-04-12", 1600.00),
("Luis Santos", "luis.santos@email.com", 28, "2022-07-03", 1700.00),
("Marta Lima", "marta.lima@email.com", 2, "2021-12-18", 2400.00),
("Joana Rodrigues", "joana.rodrigues@email.com", 24, "2023-02-28", 3400.00),
("Miguel Fernandes", "miguel.fernandes@email.com", 5, "2020-05-17", 2200.00);

SELECT *, CONCAT('R$', FORMAT(salario, 2, 'pt-br')) AS salario FROM tb_funcionarios; 
SELECT *, DATE_FORMAT(data_inicio, '%d/%m/%Y') AS data_inicio FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);
