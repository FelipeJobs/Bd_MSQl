Create DATABASE db_funcionarios;
use db_funcionarios;
CREATE Table tb_dadosdofuncionario(
id bigint auto_increment,
nome varchar(255) not null,
idade tinyint not null,
cargo varchar(40) not null,
salario decimal(8,2) not null,
sexo varchar(10),
primary key(id)
);
insert into tb_dadosdofuncionario(nome,idade,cargo,salario,sexo)
values("Felipe",26,"Gerente", 5500.00,"Masculino"),
("Maria",30,"Presidente", 30000.00,"Feminino"),
("Mario",22,"Estagiário", 2000.00,"Masculino"),
("Adriana",25,"Desenvolvedora Junior", 3500.00,"Feminino"),
("William",26,"Desenvolvedor Senior", 8000.00,"Masculino");
delete from tb_dadosdofuncionario where id = 1 or id = 2;
select * from tb_dadosdofuncionario where salario > 2000;
select * from tb_dadosdofuncionario where salario < 2000;
update tb_dadosdofuncionario set salario = 9000.00 where id = 3;
select * from tb_dadosdofuncionario;