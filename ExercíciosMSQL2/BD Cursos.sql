CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
PRIMARY KEY(id),
nivel VARCHAR(30)
);
-- inserindo informações na tabela
INSERT INTO tb_categoria(nivel)
VALUES('Técnico'),
('Superior'),
('Mestredo'),
('Doutorado');
-- criando a tabela de cursos
USE db_cursoDaMinhaVida;
CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
PRIMARY KEY(id),
nome VARCHAR(50),
carga int,
professor VARCHAR(50),
modelo VARCHAR(15),
preco DECIMAL(8,2),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);
SELECT * from tb_cursos;
INSERT INTO tb_cursos
VALUES(DEFAULT,'HTML5',80,'Guanabara','Homeoffice',0,1),
(DEFAULT,'Java Básico',100,'Jeff','Homeoffice',500,1),
(DEFAULT,'Python',120,'Luiz','Homeoffice',450,1),
(DEFAULT,'Ciência da computação',2640,'','Presencial',0,2),
(DEFAULT,'CSS',40,'Aline','Homeoffice',0,1),
(DEFAULT,'Inteligencia artificial',800,'Maria','Presencial',5000,3),
(DEFAULT,'Administração',800,'Paulo','Homeoffice',5200,1),
(DEFAULT,'Recursos Humanos',1200,'Roberto','Presencial',800,1),
(DEFAULT,'ADS',2640,'','Presencial',0,2);

-- retornando utilizando condições
SELECT * from tb_cursos WHERE preco >50;
SELECT * from tb_cursos WHERE preco BETWEEN 3 and 50;
SELECT * from tb_cursos WHERE nome LIKE 'j%';
-- usando o join
SELECT * from tb_cursos INNER JOIN tb_categoria ON
tb_cursos.categoria_id = tb_categoria.id;

-- selecionando por uma categoria específica.
SELECT * from tb_cursos INNER JOIN tb_categoria ON
tb_cursos.categoria_id = tb_categoria.id
WHERE tb_categoria.id =1;

