create database constsolucion; 
use constsolucion;

create table tbl_usuario(
	id_usuario		int primary Key auto_increment,
	nome_usuario 	varchar(256) not null,
	email 			varchar(256) not null,
	senha			varchar(32) not null,
	telefone 		varchar(14) not null,
    nascimento		date
);

/*
create table tbl_resolutor(
	id_resolutor 	int primary key auto_increment,
	email 			varchar(256) not null,
	senha 			varchar(15) not null,
    
    cnpj 			int(14) not null,
	cpf 			int(11) not null,
	telefone 		int(14) not null,
    
	e_id_usuario 	int,

	constraint fk_id_usuario foreign key (e_id_usuario) references tbl_usuario(id_usuario) 
);
*/

/*create table tbl_admin(
	id_admin 	int primary key auto_increment,
	nome 		varchar(100) not null,
    email 		varchar(100) not null,
    senha 		varchar(15) not null
);
*/

create table tbl_endereco(
	cep 		varchar(9) primary key not null,
	rua 		varchar(100),
	bairro 		varchar(100),
	municipio 	varchar(50),
    latitude 	float not null,
    logitude 	float not null
);

create table tbl_denuncia(
	id_denuncia 	int primary key auto_increment,
	qnt_denuncia 	int,
	descrição 		text,
	tipo_problema 	varchar(50),
    fk_cep 			varchar(9) not null,
    
    constraint fk_cep foreign Key(fk_cep) references tbl_endereco(cep)
    
);

create table tbl_imagem(
	id_imagem 		int primary key auto_increment,
    tipo_imagem		varchar(4) not null,
    nome_imagem		varchar(255) not null,
    imagem 			blob not null,
    fk_id_denuncia 	int,
    
    constraint fk_id_denuncia foreign key(fk_id_denuncia) references tbl_denuncia(id_denuncia)
);
