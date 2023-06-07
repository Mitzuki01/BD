CREATE DATABASE constsolucion;

USE constsolucion;

-- Tabela tbl_usuario
CREATE TABLE tbl_usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome_usuario VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  senha VARCHAR(50) NOT NULL,
  nascimento DATE NOT NULL
);

-- Tabela tbl_denuncia
CREATE TABLE tbl_denuncia (
  id_denuncia INT AUTO_INCREMENT PRIMARY KEY,
  desc_problema varchar(256),
  tipo_problema VARCHAR(100),
  latitude float not null,
  longitude float not null,
  imagem varchar(256) not null
);

select * from tbl_denuncia
