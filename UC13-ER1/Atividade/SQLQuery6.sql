--Usuario
--Personagem
--Classe
--Habilidade
--HabilidadeDeClasse

CREATE DATABASE RPG

USE RPG

CREATE TABLE Usuarios(
UsuarioID INT PRIMARY KEY IDENTITY
,Email VARCHAR(100) UNIQUE NOT NULL
,Senha VARCHAR(100) NOT NULL
)


CREATE TABLE Classes(
  ClasseId INT PRIMARY KEY IDENTITY
 ,Nome VARCHAR(200) UNIQUE NOT NULL
 ,Descricao VARCHAR(255) NOT NULL
)

CREATE TABLE personagens(
  PersonagemId INT PRIMARY KEY IDENTITY
 ,NomePersonagem VARCHAR(15) UNIQUE NOT NULL
 ,UsuarioID INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioId)
 ,ClasseId INT FOREIGN KEY REFERENCES Classes(classeID)
)

CREATE TABLE Habilidades(
 HabilidadeId INT PRIMARY KEY IDENTITY
 ,Nome VARCHAR(100) UNIQUE NOT NULL
 )

 CREATE TABLE ClasseHabilidade(
  ClasseId INT PRIMARY KEY IDENTITY
 ,HabilidadeID INT FOREIGN KEY REFERENCES Habilidades(HabilidadeId)
 )
 --DML
	INSERT INTO Usuarios VALUES ('ednaldo@ednaldo1.com', '12345')
	INSERT INTO  personagens (NomePersonagem, UsuarioID, ClasseId) VALUES ('BitBug',3,3)

	UPDATE Usuarios
	SET Senha= '123456'
	WHERE UsuarioID =1

	--DQL
	SELECT * FROM Usuarios
	SELECT * FROM Classes
	SELECT * FROM Habilidades
	SELECT * FROM personagens
	SELECT * FROM ClasseHabilidade

	SELECT * FROM personagens
	INNER JOIN Classes
	ON personagens. ClasseId= Classes.ClasseId

	--ExemploJoin
	CREATE DATABASE JOINS
	USE JOINS 
