CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(30),
PRIMARY KEY(id)
);
-- estou inserindo dados na tabela classe.
INSERT INTO tb_classe VALUE(DEFAULT,'Arqueiro'),
(DEFAULT,'Espadachim'),
(DEFAULT,'Mago'),
(DEFAULT,'Lutador'),
(DEFAULT,'Mago');
SELECT * FROM tb_classe;
DELETE FROM tb_classe WHERE id=5;

-- Estou criando outra tabela
USE db_generation_game_online;
CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30),
ataque INT,
defesa INT,
precisao INT,
ataqueM INT,
hp MEDIUMINT,
PRIMARY KEY(id),
classe_id BIGINT,
FOREIGN KEY (classe_id)REFERENCES tb_classe(id)
);
INSERT INTO tb_personagem VALUES(DEFAULT,'Itachi',300,150,80,20,2000,1),
(DEFAULT, 'Gaara',2500,2000,75,280,30000,2),
(DEFAULT,'Gai',3500,1800,60,10,25000,4),
(DEFAULT,'Kakashi',3200,1300,100,8,35000,2),
(DEFAULT,'Naruto',1000,5000,90,10,40000,4),
(DEFAULT,'Choji',5000,1200,90,350,28000,4),
(DEFAULT,'Sasuke',3800,1500,88,150,32000,1),
(DEFAULT,'Sakura',10,1500,90,4000,35000,3);
-- aqui estou colocando os retornos das informações.
SELECT * FROM tb_personagem WHERE ataque > 2000 OR ataqueM > 2000;
SELECT * FROM tb_personagem WHERE ataque BETWEEN 1000 AND 2000 OR ataqueM BETWEEN 1000 AND 200;
SELECT * FROM tb_personagem WHERE nome LIKE 'c%';
SELECT nome,ataque,defesa,precisao,ataqueM,hp,tb_classe.classe FROM tb_personagem INNER JOIN tb_classe ON
tb_personagem.classe_id = tb_classe.id;
-- esse comando abaixo serve para retornar os dados de uma classe
SELECT nome,tb_classe.classe FROM tb_personagem INNER JOIN tb_classe ON
tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.classe = 'Arqueiro';


