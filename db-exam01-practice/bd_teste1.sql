USE master;

DROP DATABASE bd_teste1
CREATE DATABASE bd_teste1
go

use bd_teste1
go

if object_id(N'Coleções', 'U') is not null drop table Coleções
go
CREATE TABLE Coleções
(
	IDColeção int IDENTITY(1,1) PRIMARY KEY,
	Designação nvarchar(50) NOT NULL
)
go

if object_id(N'Leitor', 'U') is not null drop table Leitor
go
CREATE TABLE Leitor
(
	NúmeroLeitor int IDENTITY(1,1) PRIMARY KEY,
	DataRegisto date NOT NULL DEFAULT (getdate()),
	PrimeirosNomes nvarchar(50) NOT NULL,
	ÚltimosNomes nvarchar(50) NOT NULL,
	Profissão nvarchar(50) NOT NULL
)
go

if object_id(N'Livros', 'U') is not null drop table Livros
go
CREATE TABLE Livros
(
	COTA nchar(10) NOT NULL PRIMARY KEY,
	Título nvarchar(100) NOT NULL,
	AnoPublicação nchar(4) NOT NULL,
	NúmeroPáginas smallint NOT NULL,
	ISBN nchar(25) NOT NULL,
	PermissãoEmpréstimo nchar(3) NULL CHECK 
	(PermissãoEmpréstimo like 'Sim' OR PermissãoEmpréstimo like 'Nao'),
	IDColeção int NOT NULL REFERENCES Coleções (IDColeção)
)
GO

if object_id(N'Empréstimo', 'U') is not null drop table Empréstimo
go
CREATE TABLE Empréstimo
(
	IDEmpréstimo int IDENTITY(1,1) PRIMARY KEY,
	NúmeroLeitor int NOT NULL REFERENCES Leitor (NúmeroLeitor),
	COTA nchar(10) NOT NULL REFERENCES Livros (COTA),
	DataInício date NOT NULL DEFAULT (getdate()),
	DataFim date NOT NULL
)
go

INSERT Coleções (Designação) VALUES (N'Linguas')
GO
INSERT Coleções (Designação) VALUES (N'Matematica')
GO
INSERT Coleções (Designação) VALUES (N'Estatistica')
GO
INSERT Coleções (Designação) VALUES (N'Informatica')
GO
INSERT Coleções (Designação) VALUES (N'Design')
GO
INSERT Coleções (Designação) VALUES (N'Gestao e Engenharia')
GO

INSERT Leitor (DataRegisto, PrimeirosNomes, ÚltimosNomes, Profissão) 
VALUES (N'2020-11-02', N'Jose Manuel', N'Silva', N'Estudante')
GO
INSERT Leitor (DataRegisto, PrimeirosNomes, ÚltimosNomes, Profissão) 
VALUES (N'2020-11-03', N'Maria ', N'Lopes', N'Tecnica Informatica')
GO
INSERT Leitor (DataRegisto, PrimeirosNomes, ÚltimosNomes, Profissão) 
VALUES (N'2020-11-10', N'Joaquim', N'Ramos', N'Arquitecto')
GO
INSERT Leitor (DataRegisto, PrimeirosNomes, ÚltimosNomes, Profissão) 
VALUES (N'2020-12-04', N'Manuel', N'Figueiredo', N'Administrativo')
GO
INSERT Leitor (DataRegisto, PrimeirosNomes, ÚltimosNomes, Profissão) 
VALUES (N'2020-12-02', N'Alfredo', N'Pereira', N'Escriturário')
GO
INSERT Leitor (DataRegisto, PrimeirosNomes, ÚltimosNomes, Profissão) 
VALUES (N'2020-12-05', N'Maria', N'Chaves', N'Engenheiro civíl')
GO

INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1226-9', N'DESENVOLVIMENTO AVANÇADO PARA A WEB - DO FRONT-END AO BACK-END', 
N'2020', 344, N'978-972-722-915-4', N'Sim', 4)
GO
INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1658-1', N'HISTÓRIA DO DESIGN GRaFICO', N'2010', 720, N'975-784-526-985', N'nao', 5)
GO
INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1816-9', N'Segurança em Redes Informaticas', N'2018', 424, N'9789727228577', N'NaO', 4)
GO
INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1546-3', N'Introdução à programação em C', N'2017', 272, N'3-85131-041-9', N'SIM', 4)
GO
INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1846-1', N'Java language', N'2010', 272, N'0-75931-41-9', N'SIM', 4)
GO
INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1276-8', N'Arquitetura para iniciantes', N'2020', 272, N'1-25231-06-9', N'SIM', 6)
GO
INSERT Livros (COTA, Título, AnoPublicação, NúmeroPáginas, ISBN, PermissãoEmpréstimo, IDColeção) 
VALUES (N'TGI-1836-7', N'Design de interiores', N'1990', 272, N'8-95861-071-9', N'SIM', 5)
GO

INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (2, N'TGI-1846-1', N'2020-11-01', N'2020-11-15')
GO
INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (1, N'TGI-1546-3', N'2020-11-02', N'2020-11-10')
GO
INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (1, N'TGI-1658-1', N'2020-11-02', N'2020-12-10')
GO
INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (3, N'TGI-1846-1', N'2020-11-02', N'2020-11-16')
GO
INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (4, N'TGI-1276-8', N'2020-11-05', N'2020-12-05')
GO
INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (5, N'TGI-1836-7', N'2020-11-15', N'2020-12-18')
GO
INSERT Empréstimo (NúmeroLeitor, COTA, DataInício, DataFim) 
VALUES (6, N'TGI-1546-3', N'2020-12-01', N'2020-12-20')
GO