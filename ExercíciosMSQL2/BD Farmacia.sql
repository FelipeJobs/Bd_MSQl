CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
PRIMARY KEY(id)
);
-- criando as categorias
INSERT INTO tb_categoria(categoria)
VALUES('Remédio'),
('Higiene'),
('Ofmológico'),
('Outros');
-- criando a segunda tabela
USE db_farmacia_do_bem;
CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(150),
preco DECIMAL(8,2),
marca VARCHAR(50),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);
INSERT INTO tb_produto
VALUES(DEFAULT,'Anador',5.50,'Positivo',1);
INSERT INTO tb_produto VALUES(DEFAULT,'Papel higiênico',9.50,'Confort',2),
(DEFAULT,'Colírio',45.50,'Lotus',3),
(DEFAULT,'Halls',3.50,'MID',4),
(DEFAULT,'Doril',9.50,'DOR',1),
(DEFAULT,'Torsilax',15.50,'TORX',1),
(DEFAULT,'Captopril',18.50,'Presion',1),
(DEFAULT,'Frauda',30.50,'PAMPS',2);
SELECT * from tb_produto;

-- condições
SELECT * FROM tb_produto WHERE preco >50;
SELECT * from tb_produto WHERE preco BETWEEN 3 and 60;
SELECT * from tb_produto WHERE nome LIKE'b%';
-- join
SELECT * from tb_produto INNER JOIN tb_categoria ON
tb_produto.categoria_id = tb_categoria.id;
-- retornar uma classe específica, nesse caso fiz utilizando o id.
SELECT * from tb_produto INNER JOIN tb_categoria ON
tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.id = 1;



