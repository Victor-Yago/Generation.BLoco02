create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
	id_prod bigint auto_increment,
    nome varchar(100) not null,
    categoria varchar(100) not null,
    preco decimal(10,2) not null,
    quantidade bigint not null,
    primary key (id_prod)
);

insert into tb_produto (nome, categoria, preco, quantidade)
	 values ("Notebook", "Eletronicos", 3000.00, 10),
			("Video-Game", "Eletronicos", 2100.00, 80),
            ("Aspirador de pó", "Eletrodomesticos", 300.00, 65),
            ("Batedeira", "Eletrodomesticos", 405.00, 30),
            ("Tenis", "Calçados", 150.00, 240),
            ("Coturno", "Calçados", 500.00, 20),
            ("Camiseta", "Vestuario", 80.00, 120),
            ("Calça-Sarja", " Vestuario",120, 77);
    
select * from tb_produto where preco > 500.00;

select * from tb_produto where preco < 500.00;

update `db_ecommerce`.`tb_produto` set `quantidade`='420' where(`id_prod`='6');