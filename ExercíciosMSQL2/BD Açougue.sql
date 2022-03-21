CREATE DATABASE db_cidade_das_carnes ;
use db_cidade_das_carnes;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
categoriaCarne VARCHAR(100),
tipo INT,
PRIMARY KEY(id)
);
-- inserindo os valores na classe.
INSERT INTO tb_categoria(categoriaCarne,tipo)
VALUES('Branca',1),
('Branca',2),
('Vermelha',1),
('Vermelha',2),
('Porco',1);
SELECT * FROM tb_categoria;

-- criando a nova tabela
use db_cidade_das_carnes;
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
PRIMARY KEY(id),
nome VARCHAR(50),
preco DECIMAL(8,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);
INSERT INTO tb_produtos(nome,preco,categoria_id)
VALUES('Pernil',35.5,5),
('Filé de frango',25,1),
('Alcatra',45.5,3),
('Miolo de acém',35.5,4),
('Carne moída',20,4),
('Bisteca',30,5),
('Toicinho',15,5),
('Colchão duro',28.5,4);
SELECT * from tb_produtos;

-- retornando utilizando condições
SELECT * from tb_produtos WHERE preco >50;
SELECT * from tb_produtos WHERE preco BETWEEN 3 and 50;
SELECT * from tb_produtos WHERE nome LIKE 'c%';
-- usando o join
SELECT * from tb_produtos INNER JOIN tb_categoria ON
tb_produtos.categoria_id = tb_categoria.id;

-- selecionando por uma categoria específica.
SELECT * from tb_produtos INNER JOIN tb_categoria ON
tb_produtos.categoria_id = tb_categoria.id
WHERE tb_categoria.id =1;




