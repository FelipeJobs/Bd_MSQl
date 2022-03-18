create database db_escola;
use db_escola;
create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade tinyint,
sexo varchar(10),
sala tinyint,
turma varchar(5),
nota double,
primary key(id)
);
insert into tb_alunos(nome, idade, sexo, sala, turma,nota)
values("Maria", 10, "Feminino", 8, "5A",8),
("Mario", 12, "Masculino", 10, "7B",9),
("Roberta", 8, "Feminino", 2, "3C",2),
("Catia", 14, "Feminino", 14, "1ºA",3),
("André", 13, "Masculino", 11, "8D",5),
("Adriana", 10, "Feminino", 15, "5C",10),
("Angelica", 16, "Feminino", 12, "2ºD",8.5),
("Marcelo", 17, "Masculino", 13, "3ºA",6.5);

select nome,turma,nota from tb_alunos where nota >7;
select nome,turma,nota from tb_alunos where nota <7;
update tb_alunos set nota = 8 where id = 8;
select * from tb_alunos;