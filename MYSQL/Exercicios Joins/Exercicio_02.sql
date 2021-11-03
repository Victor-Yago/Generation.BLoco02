
create database db_pizzaria_legal;

use db_pizzaria_legal;



create table tb_categoria(
    id_categ bigint(3) auto_increment,
    nome_categ varchar(30) not null,
    tipo_categ varchar(255) not null,
    primary key(id_categ)
);
select * from tb_categoria;
insert into tb_categoria(nome_categ, tipo_categ) 
	values ("Tradicionais", "Salgada"),
	    ("Especiais", "Salgada"),
            ("Vegetarianas", "Salgada"),
            ("Gourmet", "Doce"),
            ("Moda do chefe", "Doce");


create table tb_pizza(
    id_pizza bigint(3) auto_increment,
    nome_pizza varchar(30) not null,
    ingrediente varchar(255) not null,
    tamanho varchar(10) not null,
    preco real not null,
    fk_categ bigint(3) not null,
    primary key(id_pizza),
    foreign key(fk_categ) references tb_categoria(id_categ)
);
select * from tb_pizza;
insert into tb_pizza(nome_pizza, ingrediente, tamanho, preco, fk_categ)
	values ("Frango com Catupryri", "Frango desfiado e catupiry", "G", 35.40, 1),
	    ("Baiana", "Calabreza moida, pimenta e azeitonas", "GG", 48.70, 1),
            ("Atum", "Atum Moido, Cebola e azeitonas", "G", 47.50, 2),
            ("Frangorela", "Frango Desfiado,milho,Queijo mussarela e azeitonas", "GG", 65.80, 2),
            ("Espinafre", "Espinafre,mandioqueijo, tomate e azeitonas", "G", 33.10, 3),
            ("Brocolis", "Molho de tomate, Brocolis e mandioqueijo", "GG", 40.20, 3),
            ("Nuttela com Morangos ", "nuttela e pedaços de morango", "M", 28.60, 4),
            ("Prestigio", "Chocolate ao leite com raspas de coco", "M", 32.30, 4),
            ("Floresta negra", "Cerejas e chocolate", "G", 25.90, 5),
            ("Chocolate Branco", "Chocolate branco com farinha de oreo", "GG", 30.40, 5);



select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_pizza.preco > 40
    order by tb_categoria.nome_categ;
    



select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_pizza.preco between 29 and 60
    order by tb_categoria.tipo_categ desc;
    


select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_pizza.nome_pizza like "%c%"
    order by tb_categoria.tipo_categ desc;
    


select * from tb_pizza inner join tb_categoria
	on tb_categoria.id_categ = tb_pizza.fk_categ;


select count(*) from tb_pizza;



select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.tipo_categ like "%Doce%"
    order by tb_pizza.nome_pizza;

select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.tipo_categ like "%Salgada%"
	order by tb_pizza.nome_pizza;
    
select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.id_categ like 1
    order by tb_pizza.nome_pizza;
    
select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.id_categ like 2
    order by tb_pizza.nome_pizza;

select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.id_categ like 3
    order by tb_pizza.nome_pizza;
    
select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.id_categ like 4
    order by tb_pizza.nome_pizza;
    
select tb_pizza.nome_pizza as "Nome da Pizza", 
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.tipo_categ as "Tipo",
    tb_pizza.preco as "Preço"
    from tb_pizza inner join tb_categoria
    on tb_categoria.id_categ = tb_pizza.fk_categ
    where tb_categoria.id_categ like 5
    order by tb_pizza.nome_pizza;