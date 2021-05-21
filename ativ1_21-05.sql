create database db_generation_game_online;
use db_generation_game_online;

-- Tabela de classe
create table tb_classe(
id bigint(6) auto_increment,
categoria varchar(255),
especialidade varchar(255),
ataque varchar(255),
itemInicial boolean,
primary key(id)
);

insert tb_classe (categoria,especialidade,ataque,itemInicial) values ("Primordial","Criação","Dano Verdadeiro",true);
insert tb_classe (categoria,especialidade,ataque,itemInicial) values ("Goblin","Carregar itens","Físico",true);
insert tb_classe (categoria,especialidade,ataque,itemInicial) values ("Demônio","Ceifar","Híbrido",true);
insert tb_classe (categoria,especialidade,ataque,itemInicial) values ("Espírito","Curar","Mágico",true);
insert tb_classe (categoria,especialidade,ataque,itemInicial) values ("Vegetoso","Plantar","Mágico",true);
insert tb_classe (categoria,especialidade,ataque,itemInicial) values ("Humano","Lutar","Físico",false);

select * from tb_classe;

-- tabela de personagem
create table tb_personagem(
id bigint(8) auto_increment,
nome varchar(255),
clan varchar(255),
genero varchar(255),
nivel bigint,
poder bigint,
defesa bigint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Destinus","Primordiais","Não possui",1000,4500,7000,1);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Berk","Carregadores","Masculino",15,320,520,2);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Kirlye","Anunciadores","Feminino",15,220,650,2);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Morbius","Demônios","Não possui",65,1650,900,3);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("HooneyMoon","Anjos","Não possui",65,1520,1800,4);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Gardner","Fazendeiros","Assexuado",10,550,1470,5);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Guts","Berserk","Masculino",1,400,600,6);
insert tb_personagem(nome,clan,genero,nivel,poder,defesa,classe_id) values("Tryna","Kracktor","Feminino",1,400,600,6);

select * from tb_personagem;

-- poder maior que 2000
select * from tb_personagem where poder > 2000;

-- defesa entre 1000 e 2000
select * from tb_personagem where defesa between 1000 and 2000;

-- Personagens com a letra C
select * from tb_personagem where nome like "G%";

-- inner join
select *from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.id;

select * from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.id where tb_classe.id=1;
