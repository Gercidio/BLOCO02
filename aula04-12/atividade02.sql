CREATE DATABASE e_commerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
preco DECIMAL(6,2),
categoria VARCHAR(255),
estoque BIGINT,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos MODIFY COLUMN  id BIGINT AUTO_INCREMENT;

INSERT INTO tb_produtos(nome_produto, preco, categoria, estoque) 
VALUE ("Camiseta Casual", 39.99, "Camisetas", 150),
 ("Tênis Esportivo", 550.00, "Calçados", 100),
 ("Calça Jeans Slim", 59.99, "Camisetas", 80),
 ("Vestido Floral", 759.99, "Vestidos", 120),
  ("Tênis Corrida", 559.99, "Calçados", 170),
 ("Body infantil", 129.99, "Infantil", 50),
 ("Gorro", 59.90, "Acessório", 30),
 ("Sapato Social", 339.99, "Calçados", 90);

SELECT *, CONCAT('R$', FORMAT(preco, 2, 'pt-br')) AS preco FROM tb_produtos; 

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 229.99 WHERE id = 8;

