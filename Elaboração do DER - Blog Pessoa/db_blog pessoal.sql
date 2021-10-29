CREATE TABLE `tb_tema` (
	`id_tema` INT NOT NULL AUTO_INCREMENT,
	`Descrição` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_tema`)
);

CREATE TABLE `tb_postagem` (
	`id_postagem` INT NOT NULL,
	`titulo` varchar(255) NOT NULL,
	`data_postagem` TIMESTAMP(255) NOT NULL,
	`texto` varchar(255) NOT NULL,
	`fk_usuario` BINARY(255) NOT NULL,
	`fk_tema` BINARY(255) NOT NULL
);

CREATE TABLE `tb_usuários` (
	`id_usuario` INT NOT NULL,
	`nome` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`fk_usuario`) REFERENCES `tb_usuários`(`id_usuario`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`fk_tema`) REFERENCES `tb_tema`(`id_tema`);




