create database db_produtos;
use db_produtos;
create table tb_dadosdosprodutos(
id bigint auto_increment,
nome varchar(50)not null,
preço int not null,
categoria varchar(50) not null,
quantidade mediumint not null,
marca varchar(255),
primary key(id));
insert tb_dadosdosprodutos(nome, preço, categoria, quantidade, marca)
values("Celular",1200.00,"Eletrônico",100,"Motorola"),
("Computador",2500.00,"Eletrônico",100,"Dell"),
("Armário",800.00,"Movel",20,"Madereira"),
("Colchão",1200.00,"Movel",35,"Castor"),
("Fone",80.00,"Eletrônico",250,"Music"),
("Batedeira",200.00,"Eletrodoméstico",120,"Arno"),
("Lâmpada",30.00,"Eletrônico",120,"Luminus"),
("Tablet",900.00,"Eletrônico",10,"Samsung");
select * from tb_dadosdosprodutos where preço >500;
select * from tb_dadosdosprodutos where preço<500;
update tb_dadosdosprodutos set preço = 150 where id =6;
select * from tb_dadosdosprodutos