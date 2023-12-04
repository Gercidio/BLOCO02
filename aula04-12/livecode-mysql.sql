CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
 VALUE ("maçã",20, "2023-12-15", 5.00),
 ("laranja",50, "2023-12-15", 10.00),
 ("banana",200, "2023-12-15", 12.00),
 ("uva",1200, "2023-12-15", 30.00),
 ("pêra",500, "2023-12-15", 2.99);

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

DELETE FROM tb_produtos WHERE id = 1;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 10.00;

SELECT * FROM tb_produtos WHERE NOT id = 3;

SELECT nome, CONCAT('R$', FORMAT(preco, 2, 'pt-br')) AS preço FROM tb_produtos; 
SELECT nome, DATE_FORMAT(datavalidade, '%d/%m/%Y') AS datavalidade FROM tb_produtos;

SELECT * FROM tb_produtos;

SELECT @@collation_database;

