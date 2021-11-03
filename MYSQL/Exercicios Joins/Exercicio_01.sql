create database db_generation_game_online;

use db_generation_game_online;



create table tb_classe(
    id_classe bigint(3) auto_increment,
    nome_classe varchar(30) not null,
    habilidade varchar(30) not null,
    fraqueza varchar(30) not null,
    primary key(id_classe)
);

insert into tb_classe(nome_classe, habilidade, fraqueza) 
	values ("Archer", "Precisão", "Magia"),
	    ("Mage", "Conhecimento/Magias", "Força Física"),
            ("Warrior", "Força", "Destreza"),
            ("Swordsman", "Destreza", "Divindade"),
            ("Paladin", "Força/Magia de cura", "Ataques a longa distância");


create table tb_personagem(
    id_pers bigint(3) auto_increment,
    nome_pers varchar(30) not null,
    fk_classe bigint(3) not null,
    poder_atq bigint not null,
    poder_def bigint not null,
    primary key(id_pers),
    foreign key(fk_classe) references tb_classe(id_classe)
);

insert into tb_personagem(nome_pers, fk_classe, poder_atq, poder_def)
	values ("dezena_123", 5, 4500, 3000),
	    ("goodslayer_123", 3, 3800, 1400),
	    ("mabi_123", 1, 1900, 1880),
	    ("nath_123", 5, 4300, 2800),
            ("oraffa_123", 4, 2800, 800),
            ("lissa_123", 2, 1500, 1100),
            ("camis_123", 1, 1700, 1900),
            ("leo_123", 4, 2700, 800);


select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe",
	tb_personagem.poder_atq as "Poder de Ataque"
	from tb_personagem inner join tb_classe
	on tb_classe.id_classe = tb_personagem.fk_classe
	where tb_personagem.poder_atq > 2000
	order by tb_personagem.poder_atq desc;
    

    
select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe",
	tb_personagem.poder_def as "Poder de Defesa"
	from tb_personagem inner join tb_classe
	on tb_classe.id_classe = tb_personagem.fk_classe
	where tb_personagem.poder_def between 1000 and 2000
	order by tb_personagem.poder_def desc;
    


select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe"
	from tb_personagem inner join tb_classe
	on tb_classe.id_classe = tb_personagem.fk_classe
	where tb_personagem.nome_pers like "C%";
    


select * from tb_personagem inner join tb_classe
	on tb_classe.id_classe = tb_personagem.fk_classe;

/* Comando para contar quantas linhas tem na tabela */
select count(*) from tb_personagem;



select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe"
    from tb_personagem inner join tb_classe
    on tb_classe.id_classe = tb_personagem.fk_classe
    where tb_personagem.fk_classe like 1
    order by tb_personagem.nome_pers;
    
select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe"
    from tb_personagem inner join tb_classe
    on tb_classe.id_classe = tb_personagem.fk_classe
    where tb_personagem.fk_classe like 2
    order by tb_personagem.nome_pers;
    
select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe"
    from tb_personagem inner join tb_classe
    on tb_classe.id_classe = tb_personagem.fk_classe
    where tb_personagem.fk_classe like 3
    order by tb_personagem.nome_pers;
    
select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe"
    from tb_personagem inner join tb_classe
    on tb_classe.id_classe = tb_personagem.fk_classe
    where tb_personagem.fk_classe like 4
    order by tb_personagem.nome_pers;
    
select tb_personagem.nome_pers as "Nome do Personagem", 
    tb_classe.nome_classe as "Classe"
    from tb_personagem inner join tb_classe
    on tb_classe.id_classe = tb_personagem.fk_classe
    where tb_personagem.fk_classe like 5
    order by tb_personagem.nome_pers;


/*  drop database [nome_da_database] --para derrubar um db
    desc [nome_da_tabela] --para descrição da tabela
    count([nome_da_coluna]) --para contar quantas linhas tem na coluna
    select sum([nome_da_coluna]) from [nome_da_tabela] --para somar
    select avg([nome_da_coluna]) from [nome_da_tabela] --para tirar a média
    select max([nome_da_coluna]) from [nome_da_tabela] --para selecionar o max
    select min([nome_da_coluna]) from [nome_da_tabela] --para selecionar o min
    limit [quantidade] --para limitar até a quantidade desejada
    truncate table [nome_da_tabela] --para limpar a tabela, apenas os valores são excluídos
*/