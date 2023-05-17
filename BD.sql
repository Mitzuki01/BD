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

create table tbl_denuncia(
	id_denuncia 		int primary key auto_increment not null,
	imagem 		blob,
	tipo_problema 	varchar(100),
    desc_problema text,
    longitude 	float not null,
    latitude 	float not null
);