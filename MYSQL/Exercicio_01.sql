create database db_rh;

use db_rh;

create table tb_endereco(
	cep bigint (8) not null,
    rua varchar(255) not null,
    bairro varchar(255) not null,
    cidade varchar(255) not null,
    primary key (cep)
);
select * from tb_endereco;
insert into tb_endereco (cep, rua, bairro, cidade) 
	 values (45784441, "Rua Jabiraba", "Jd.Campestre", "Itapecerica da Serra"),
			(45784442, "Rua Jupiranga", "Jd Branca Flor", "Itapecerica da Serra"),
			(45784443, "Rua Jabiraca", "São Marcos", "Itapecerica da Serra"),
			(45784444, "Rua Japinamba ", "Valo Velho", "Itapecerica da Serra"),
			(45784445, "Rua Japoronga", "Recreio Primavera", "Itapecerica da Serra");

create table tb_funcionarios(
	id_funcionario bigint(5) auto_increment,
    nome varchar(255) not null,
    cpf varchar(11) not null,
    salario decimal (10,2),
    ativo boolean,
    endereco_cep bigint not null,
    primary key (id_funcionario),
    foreign key (endereco_cep) references tb_endereco(cep)
);

insert into tb_funcionarios (nome, cpf, salario, ativo, endereco_cep)
	 values ("Victor", "4547891231", 2000.00, true, 45784441),
			("Yago", "48975616481", 1280.00, false, 45784441),
            ("Gomes", "78965423456", 1300.00, true, 45784442),
            ("Brandão", "87875454112", 1660.00, false, 45784442),
            ("Domingues", "45789264917", 3000.00, true, 45784443),
            ("Vanessa", "35975143867", 2100.10, false, 45784443),
            ("Bruna", "30157904594", 1750.60, true, 45784444),
            ("Jaqueline", "63089740975", 2450.00, false, 45784444),
            ("Nayara", "96040879101", 1997.00, true, 45784445),
            ("Gabriela", "98763123871", 2550.00, false, 45784445);

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;

update `db_rh`.`tb_funcionarios` set `salario`= '2900.00' where(`id_funcionarios`='4');