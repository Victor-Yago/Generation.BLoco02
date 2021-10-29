create database db_escola;

use db_escola;

create table tb_estudante(
	id_estudante bigint auto_increment,
    nome varchar(100) not null,
    data_nasc date not null,
    turma varchar(100) not null,
    nota decimal(10,2) not null,
    primary key (id_estudante)
);

insert into tb_estudante (nome, data_nasc, turma, nota)
	 values ("Carlos", '1997-05-06', "4ª série A", 8.2),
			("Alessandra", '1998-04-14', "2ª série B", 9.8),
            ("Lucas", '1997-03-28', "3ª série C", 5.4),
            ("David", '1998-04-24', "3ª série A", 3.8),
            ("Henrique", '1999-06-08', "3ª série B", 7.5),
            ("Paula", '1997-07-04', "2ª série C", 5.2),
            ("Pedro", '1998-01-14', "2ª série A", 6.7),
            ("Claudia ", '1996-02-20', "4ª série B", 9.7);
    
select * from tb_estudante where nota > 7.00;

select * from tb_estudante where nota < 7.00;

update `db_escola`.`tb_estudante` set `nota`='6.8' where(`id_estudante`='4');