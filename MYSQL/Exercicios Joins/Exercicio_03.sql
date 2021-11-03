
 
create database db_farmacia_do_bem;

use db_farmacia_do_bem;



create table tb_categoria(
    id_categ bigint(3) auto_increment,
    nome_categ varchar(30) not null,
    tipo_categ varchar(255) not null,
    primary key(id_categ)
);

insert into tb_categoria(nome_categ, tipo_categ) 
	values ("Shampoo", "Higiene Pessoal"),
	    ("Sabonete", "Higiene Pessoal"),
	    ("Comprimido", "Medicação"),
            ("Xarope", "Medicação"),
            ("Vitamina", "Suplemento"),
            ("Pomada", "Dermatologico"),
            ("Preservativo", "Anticoncepcional");


create table tb_produto(
    id_prod bigint(3) auto_increment,
    nome_prod varchar(255) not null,
    quantidade real not null,
    unidade varchar(10) not null,
    preco real not null,
    fk_categ bigint(3) not null,
    primary key(id_prod),
    foreign key(fk_categ) references tb_categoria(id_categ)
);

insert into tb_produto(nome_prod, quantidade, unidade, preco, fk_categ)
	values 	("Shampoo neutrox", 325, "ml", 10.69, 1),
			("Shampoo Dove", 200, "ml", 13.50, 1),
			("Sabonete Protex", 85, "g", 2.29, 2),
            ("Sabonete Liquido Protex", 250, "ml", 7.99, 2),
            ("Dorflex", 1, "g", 18.90, 3),
            ("Zolpidem", 10, "mg", 35.90, 3),
            ("Benegrip", 250, "ml", 15.79, 4),
            ("Mucofan", 100, "ml", 16.29, 4),
            ("Vitamina C", 1000, "mg", 70.49, 5),
            ("Omega3", 400, "mg", 25.90, 5),
            ("Hipoglos", 46 , "g", 20.90, 6),
            ("Minancora", 36, "g", 13.59, 6),
            ("preservativo Juntex", 1, "un", 10, 7),
            ("Pilula do dia Seguinte", 1 , "mg", 100.99, 7);



select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_produto.preco > 45
    order by tb_categoria.nome_categ;
    


    
select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_produto.preco between 3 and 60
    order by tb_categoria.tipo_categ desc;
    



select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_produto.nome_prod like "%b%"
    order by tb_categoria.tipo_categ desc;
    


select * from tb_produto inner join tb_categoria
	on tb_categoria.id_categ = tb_produto.fk_categ;


select count(*) from tb_produto;




select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_categoria.tipo_categ like "%Medicamentos%"
    order by tb_produto.nome_prod;

select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_categoria.id_categ like 1
    order by tb_produto.nome_prod;