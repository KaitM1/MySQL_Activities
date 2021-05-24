create database db_RH;
use db_RH;

-- tabela
create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
setor varchar(255) not null,
salario decimal not null,
cargahoraria decimal not null,
primary key (id)
);

-- dados
insert into tb_funcionaries(nome,cargo,setor,salario,cargahoraria) values("Márcio","Gerente","rh",10000.00,4.0);
insert into tb_funcionaries(nome,cargo,setor,salario,cargahoraria) values("Pedro","Chefe","rh",1500.0,8.0);
insert into tb_funcionaries(nome,cargo,setor,salario,cargahoraria) values("Rafael","Psicólogo","rh",4500.0,6.0);
insert into tb_funcionaries(nome,cargo,setor,salario,cargahoraria) values("Gabriel","Diretor","rh",100000.0,2.0);
insert into tb_funcionaries(nome,cargo,setor,salario,cargahoraria) values("Ricardo","Estagiário","rh",600.0,6.0);

-- visualização geral de dados
select * from tb_funcionaries;

-- salarios menores que 2000
select * from tb_funcionaries where salario < 2000;

-- salarios maiores que 2000
select * from tb_funcionaries where salario > 2000;

-- atualização de dado da tabela
update tb_funcionaries set salario = 520000 where id = 5;
