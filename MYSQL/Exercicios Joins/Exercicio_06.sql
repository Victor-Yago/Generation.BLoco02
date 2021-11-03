

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;



create table tb_categoria(
    id_categ bigint(3) auto_increment,
    nome_categ varchar(30) not null,
    area_categ varchar(255) not null,
    primary key(id_categ)
);

insert into tb_categoria(nome_categ, area_categ) 
	values ("Java", "Linguagem de Programação"),
	    ("JavaScript", "Linguagem de Programação"),
            ("MySql", "Banco de dados"),
            ("MariaDb", "Banco de Dados"),
            ("Photoshop", "Web Designer");



create table tb_curso(
    id_curso bigint(3) auto_increment,
    nome_curso varchar(255) not null,
    qtd_horas bigint(5) not null,
    professor varchar(30) not null,
    preco real not null,
    fk_categ bigint(3) not null,
    primary key(id_curso),
    foreign key(fk_categ) references tb_categoria(id_categ)
);

insert into tb_curso(nome_curso, qtd_horas, professor, preco, fk_categ)
	values ("Java iniciante ao avançado", 18, "Kleber", 60.90, 1),
			("Java Gaming", 77, "Lucas", 27.90, 1),
            ("Logica de programação para Java", 8, "Clovis", 30.90, 1),
            ("JavaScript Basico ao Intermediario", 112, "Olavo", 27.90, 2),
            ("JavaScript Intermediario ao Anvançado ", 12, "Nayara", 80.90, 2),
            ("MySql Basico ao avançado", 24, "Pedro", 22.90, 3),
            ("MariaDb Basico ao Avanaçado ", 13, "Jussara", 27.90, 4),
            ("Photoshop para iniciantes", 11, "Jairo", 22.90, 5);



select tb_curso.nome_curso as "Nome do Curso",
    tb_curso.qtd_horas as "Total de Horas",
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.area_categ as "Tipo",
    tb_curso.preco as "Preço"
    from tb_curso inner join tb_categoria
    on tb_categoria.id_categ = tb_curso.fk_categ
    where tb_curso.preco > 50
    order by tb_categoria.nome_categ;
    

    
select tb_curso.nome_curso as "Nome do Curso",
    tb_curso.qtd_horas as "Total de Horas",
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.area_categ as "Tipo",
    tb_curso.preco as "Preço"
    from tb_curso inner join tb_categoria
    on tb_categoria.id_categ = tb_curso.fk_categ
    where tb_curso.preco between 3 and 60
    order by tb_curso.qtd_horas;
    


select tb_curso.nome_curso as "Nome do Curso",
    tb_curso.qtd_horas as "Total de Horas",
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.area_categ as "Tipo",
    tb_curso.preco as "Preço"
    from tb_curso inner join tb_categoria
    on tb_categoria.id_categ = tb_curso.fk_categ
    where tb_curso.nome_curso like "%J%"
    order by tb_curso.nome_curso;
    


select * from tb_curso inner join tb_categoria
	on tb_categoria.id_categ = tb_curso.fk_categ;


select count(*) from tb_curso;



select tb_curso.nome_curso as "Nome do Curso",
    tb_curso.qtd_horas as "Total de Horas",
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.area_categ as "Tipo",
    tb_curso.preco as "Preço"
    from tb_curso inner join tb_categoria
    on tb_categoria.id_categ = tb_curso.fk_categ
    where tb_categoria.nome_categ like "%Java%"
    order by tb_curso.nome_curso;

select tb_curso.nome_curso as "Nome do Curso",
    tb_curso.qtd_horas as "Total de Horas",
    tb_categoria.nome_categ as "Categoria",
    tb_categoria.area_categ as "Tipo",
    tb_curso.preco as "Preço"
    from tb_curso inner join tb_categoria
    on tb_categoria.id_categ = tb_curso.fk_categ
    where tb_categoria.id_categ like 5
    order by tb_curso.nome_curso;