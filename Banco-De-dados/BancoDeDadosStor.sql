CREATE DATABASE StorApp
USE StorApp
Create table Tbl_Prestador (
 id_Prestador INT IDENTITY PRIMARY KEY,
 Nome_Prestador Varchar (70),
 CPF_Prestador CHAR (11),
 Telefone_Prestador Varchar (15),
 Email_Prestador Varchar (50),
 Endereço_Prestador Varchar(50)
)

Create table Tbl_Contratnte (
 id_Contrante INT IDENTITY PRIMARY KEY,
 Nome_Contratante Varchar (70),
 CPF_Contratante CHAR (11),
 Telefone_Contratante Varchar (15),
 Email_Contratante Varchar (50),
 Endereço_Contratante Varchar(50)
)

create table Serviços(
id_ServiçoPrestado INT IDENTITY PRIMARY KEY,
ID_prestador INT,
data_Hora DATETIME,
valor_Serviço DECIMAL (7,2),
)


