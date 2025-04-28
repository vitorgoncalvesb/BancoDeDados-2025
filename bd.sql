/* LógicoLoja: */

CREATE DATABASE etecrgs;

USE etecmcm;

CREATE TABLE Produtos (
    Id_Produto int PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    qtde int,
    preco decimal(10,2),
    Marca varchar(255),
    fk_Categorias_Id_Categoria int
);

CREATE TABLE Categorias (
    Id_Categoria int PRIMARY KEY AUTO_INCREMENT,
    nome_cat varchar(255)
);
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_2
    FOREIGN KEY (fk_Categorias_Id_Categoria)
    REFERENCES Categorias (Id_Categoria)
    ON DELETE RESTRICT;	


