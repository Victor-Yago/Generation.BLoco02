

create database db_cidade_das_frutas;

use db_cidade_das_frutas;



create table tb_categoria(
    id_categ bigint(3) auto_increment,
    nome_categ varchar(30) not null,
    tipo_categ varchar(255) not null,
    primary key(id_categ)
);

insert into tb_categoria(nome_categ, tipo_categ) 
	values ("Frutas", "Frescas"),
	    ("Legumes", "Frescas"),
            ("Verduras", "Frescas"),
            ("Sementes", "Cultivo"),
            ("Nozes", "Torrado");



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
	values ("Ameixa", 1, "kg", 10.99, 1),
	    ("Melão", 1, "kg", 8.99, 1),
	    ("Beterraba", 1, "kg", 7.85, 2),
            ("Abobora", 1, "kg", 18.68, 2),
            ("Alface", 1, "Buque", 3.39, 3),
            ("Brocolis ninja", 1, "unidade", 4.99, 3),
            ("Pimenta", 1, "kg", 8.30, 4),
            ("Jabuticaba", 1, "kg", 4.39, 4),
            ("Amendoas", 930, "g", 83.97, 5),
            ("Castanha do Para", 990, "g", 69.09, 5);


select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.quantidade as "Qtdd",
    tb_produto.unidade as "Unidade/Peso",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_produto.preco > 50
    order by tb_categoria.nome_categ;
    

    
select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.quantidade as "Qtdd",
    tb_produto.unidade as "Unidade/Peso",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_produto.preco between 3 and 60
    order by tb_categoria.tipo_categ desc;


select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.quantidade as "Qtdd",
    tb_produto.unidade as "Unidade/Peso",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_produto.nome_prod like "%c%"
    order by tb_produto.nome_prod;
    

select * from tb_produto inner join tb_categoria
	on tb_categoria.id_categ = tb_produto.fk_categ;


select count(*) from tb_produto;



select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.quantidade as "Qtdd",
    tb_produto.unidade as "Unidade/Peso",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_categoria.nome_categ like "%Legumes%"
    order by tb_produto.nome_prod;

select tb_produto.nome_prod as "Nome do Produto", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_produto.quantidade as "Qtdd",
    tb_produto.unidade as "Unidade/Peso",
    tb_produto.preco as "Preço"
    from tb_produto inner join tb_categoria
    on tb_categoria.id_categ = tb_produto.fk_categ
    where tb_categoria.id_categ like 1
    order by tb_produto.nome_prod;