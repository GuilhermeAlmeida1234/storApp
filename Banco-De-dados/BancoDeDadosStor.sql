CREATE DATABASE StorApp
USE StorApp

CREATE TABLE tbl_prestador (
	IDPrestador INT IDENTITY PRIMARY KEY,
	nomePrestador VARCHAR(50),
	profissao VARCHAR(50),
	CPFPrestador CHAR(11),
	telefonePrestador VARCHAR (15),
	emailPrestador VARCHAR (50),
	rua VARCHAR(50),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(20),
	UF CHAR(2),
	pontoDeReferencia VARCHAR(100)
)

CREATE TABLE tbl_contratante (
	IDContratante INT IDENTITY PRIMARY KEY,
	nomeContratante VARCHAR(70),
	CPFContratante CHAR(11),
	telefoneContratante VARCHAR(15),
	emailContratante VARCHAR(50),
	rua VARCHAR(100),
	bairro VARCHAR(100),
	cidade VARCHAR(100),
	estado VARCHAR(100),
	UF CHAR(2),
	pontoDeReferencia VARCHAR(100)
)

CREATE TABLE tbl_serviços(
	IDServico INT IDENTITY PRIMARY KEY,
	dataHora DATETIME,
	valorServiço DECIMAL(7,2),
)

CREATE TABLE tbl_servicoRealizado(
	ID INT IDENTITY PRIMARY KEY,
	IDPrestador INT,
	IDContratante INT,
	FOREIGN KEY (IDPrestador) REFERENCES tbl_prestador (IDPrestador),
	FOREIGN KEY (IDContratante) REFERENCES tbl_contratante (IDContratante)
)