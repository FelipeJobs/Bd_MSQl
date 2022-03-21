CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
-- criei a primeira tabela
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
PRIMARY KEY (id)
);
-- definir os atributos
INSERT INTO tb_categoria(tipo)VALUES('Salgada'),
('Doce');

-- criando outra tabela
USE db_pizzaria_legal;
CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(100),
valor int,
borda BOOLEAN,
tamanho VARCHAR(20),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);
-- preenchendo a tabela
INSERT INTO tb_pizza VALUES(DEFAULT,'Brigadeiro',45,true,'Grande',2);
INSERT INTO tb_pizza VALUES(DEFAULT,'Calabresa',40,TRUE,'Grande',1),
(DEFAULT,'Mussarela',35,FALSE,'Grande',1),
(DEFAULT,'Romeu e Julieta',25,FALSE,'Pequena',2),
(DEFAULT,'Beijinho',55,TRUE,'Grande',2),
(DEFAULT,'Portuguesa',25,TRUE,'Grande',1),
(DEFAULT,'Atum',60,TRUE,'Grande',1),
(DEFAULT,'Banana',35,TRUE,'Grande',2);
SELECT * FROM tb_pizza;
-- fazer seleções
SELECT sabor,tamanho,valor from tb_pizza WHERE valor >45;
SELECT sabor, tamanho, valor from tb_pizza WHERE valor BETWEEN 29 and 60; 
SELECT * from tb_pizza WHERE sabor LIKE 'c%';
SELECT sabor,tamanho,valor,tb_categoria.tipo FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;
-- o comando abaixo serve para retornar um tipo.
SELECT sabor,valor,tb_categoria.tipo FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = 'Salgada';





