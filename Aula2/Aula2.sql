-- criando o banco de dados para uma quitanda
create database db_quitanda;
-- criar tabela de produtos
-- coloquei esse comando para incrementar um código a cada produto cadastrado
use db_quitanda;
create table TB_Produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preço decimal not null,
primary key (id)
-- aqui em cima eu usei o comando para criar a chave primária.
);
-- com esse comando eu insiro dados na minha tabela.
-- caso seja necessário eu posso deixar um atributo como vazio.
INSERT INTO tb_produtos(nome, quantidade, data_validade, preço)
VALUES ("tomate",100, "2022-04-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preço)
VALUES ("maçã",20, "2022-04-12", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preço)
VALUES ("laranja",50, "2022-04-10", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preço)
VALUES ("banana",50, "2022-04-13", 12.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preço)
VALUES ("uva",100, "2022-04-14", 30.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preço)
VALUES ("pêra",127, "2022-04-15", 2.90);
-- esse comando lista todos os dados da minha tabela.
select * from tb_produtos;
-- o comando abaixo altera a estrutura da tabela
alter table tb_produtos modify preço decimal(8,2);
/*esse comando de cima altera a estrutura de uma tabela e o modify serve para
modificar o tipo ou algo relacionado a um dos atributos, no caso eu modifiquei
o decimal do preço.*/

-- o comando abaixo serve para atualizar um dado da tabela
update tb_produtos set preço = 8.50 where id = 6;
select * from tb_produtos;
/*devo tomar cuidado eu tenho que usar o where e linkar com o dado que eu quero
atualizar, normalmente eu uso o id, porque cada registro na tabela tem um ID
diferente, pois se eu fizer o update sem o where ele altera todos os dados
desse determinado atributo.*/

/*Importante: O mSQL tem uma trava que impede que sejam feitas alterações sem
usar o where, para desativa-la, caso seja necessário, 
set sql_safe_updates =0 seu coloco 1 ele volta a travar.*/

-- o comando delete deleta algum registro o ideal é fazer utilizando o id do registro.
delete from tb_produtos where id = 6;
select * from tb_produtos;

-- Visualiza somente o nome e o preço formatado para Reais
SELECT nome, CONCAT('R$ ', FORMAT(preço, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Adiciona um novo Atributo na Tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);
select * from tb_produtos;

-- Remove um atributo da Tabela
ALTER TABLE tb_produtos DROP descricao;
select * from tb_produtos;

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Visualiza somente o nome e o preço, posso usar para vizualizar somente o que eu quero.
SELECT nome, preço FROM tb_produtos;

/* para alterar o nome de um atributo eu uso change
alter table tb_produtos change nome atual nome novo e coloco o formato
 dos dados.
*/
-- Apagar todos os dados da tabela (Não é possível desfazer)
DELETE FROM tb_produtos;


