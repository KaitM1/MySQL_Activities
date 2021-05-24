create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint(5) auto_increment,
tipo varchar(20),
tamanho varchar(10),
ativo boolean not null,
primary key( id)
);

insert tb_categorias(tipo,tamanho,ativo) values("doce","brotinho",true);
insert tb_categorias(tipo,tamanho,ativo) values("salgada","brotinho",true);
insert tb_categorias(tipo,tamanho,ativo) values("doce","normal",true);
insert tb_categorias(tipo,tamanho,ativo) values("salgada","normal",true);
insert tb_categorias(tipo,tamanho,ativo) values("salgada ou doce","premium",true);

select * from tb_categorias;

create table tb_pizzas(
id bigint(8) auto_increment,
nome varchar(30),
preco decimal,
quantidade varchar(20),
descrição varchar(60),
categorias_id bigint,
primary key(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Calabresa",38.00,"8 pedaços","Calabresa",4);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Toscana",35.00,"8 pedaços","Calabresa com Mussarela",4);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Frango Com Catupiry",25.00,"4 pedaços","Frango com Catupiry",2);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Nutella Special",40.00,"4 pedaços","Pizza doce com Nutella",1);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Muçarela",42.00,"8 pedaços","Mussarela",4);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Romeu e Julieta",55.00,"12 pedaços","Queijo Branco com Goiaba",5);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Brigadeiro",36.00,"8 pedaços","Pizza doce de brigadeiro",3);
insert tb_pizzas(nome,preco,quantidade,descrição,categorias_id) values("Especialíssima da Casa",60.00,"12 pedaços","Calabresa, Mussarela e Nutella Special",5);

select * from tb_pizzas;

-- pizzas acima de R$45,00
select * from tb_pizzas where preco > 45.00;

-- pizzas entre R$29,00 e R$60,00
select * from tb_pizzas where preco between 29 and 60;

-- Pizzas iniciadas em C
select * from tb_pizzas where nome like "%C%";

-- inner join entre pizza e categorias
select *from tb_pizzas inner join tb_categorias on tb_categorias.id=tb_pizzas.id;

-- pizzas doces 
select tipo,nome,quantidade from tb_pizzas inner join tb_categorias on tb_pizzas.id=tb_categorias.id;
