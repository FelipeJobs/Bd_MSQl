CREATE DATABASE db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
estadoFisico VARCHAR(20),
insalubre BOOLEAN,
PRIMARY KEY(id)
);
ALTER TABLE tb_categoria DROP insalubre;
SELECT * from tb_categoria;
-- inserindo os valores na classe.
INSERT INTO tb_categoria(estadoFisico)
VALUES('Líquido'),
('Gasosos'),
('Sólido');

SELECT * FROM tb_categoria;

-- criando a nova tabela
USE db_construindo_a_nossa_vida;
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
PRIMARY KEY(id),
nome VARCHAR (50) NOT NULL,
preco DECIMAL(8,2),
marca VARCHAR(50),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);
INSERT INTO tb_produtos(nome,preco,marca,categoria_id)
VALUES('Areia',10,'',3),
('Pedra',15,'',3),
('Tinta',250,'Ludicolor',2),
('Cimento',8,'',3),
('Massa corrida',80.5,'Lext',3),
('Àlcool',10.9,'Lex',1),
('Aerosol',20,'Sol',2),
('Madeira',100,'Green',3);
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