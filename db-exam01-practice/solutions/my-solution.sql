USE bd_teste1
GO

-- ----------------------------------------------------------------------------------------------------------
-- Ex.1

-- a)
SELECT NúmeroLeitor, count(*) as 'Livros Emprestados'
FROM Empréstimo
GROUP BY NúmeroLeitor
GO

-- b)
SELECT count(*) as 'Livros por entreguar'
FROM Empréstimo
WHERE DataFim > getdate()
GO

-- c)
SELECT Título
FROM Livros
WHERE AnoPublicação = (SELECT min(AnoPublicação) FROM Livros)
GO

-- d)
SELECT concat(PrimeirosNomes, ' ', ÚltimosNomes)
FROM Leitor
GO

-- e)
SELECT Designação
FROM Coleções
WHERE IDColeção NOT IN (SELECT IDColeção FROM Livros)
GO

-- ----------------------------------------------------------------------------------------------------------
-- Ex.2

-- Ex. 2 Setup && a) && b) && c)
CREATE DATABASE aluguer_viaturas
GO

USE aluguer_viaturas
GO

CREATE TABLE Viaturas(
    Matricula NCHAR(10) PRIMARY KEY NOT NULL,
    Lotacao TINYINT NOT NULL,
    Marca NCHAR(30) NOT NULL,
    Modelo NCHAR(30) NOT NULL,
);
GO

CREATE TABLE Clientes(
    NIC NCHAR(15) PRIMARY KEY NOT NULL,
    NomeCompleto NCHAR(100) NOT NULL,
    Morada NCHAR (100) NOT NULL,
    Telefone NCHAR(20) NOT NULL,
    Email NCHAR(40),
)
GO

CREATE TABLE Alugueres(
    IDAluguer INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
    NIC NCHAR(15) NOT NULL,
    Matricula NCHAR(10) NOT NULL,
    DataInicio DATE NOT NULL,
    DataFim DATE NOT NULL,

    CONSTRAINT FK_NIC FOREIGN KEY (NIC) REFERENCES Clientes(NIC),
    CONSTRAINT FK_MATRICULA FOREIGN KEY (Matricula) REFERENCES Viaturas(Matricula)
)
GO

-- ----------------------------------------------------------------------------------------------------------
-- Ex.3

INSERT INTO Viaturas (Matricula, Lotacao, Marca, Modelo)
VALUES ('86-IF-45', 2, 'Renault', 'Kangoo'),
       ('62-ZF-35', 5, 'Mercedes', 'Class A')
GO

INSERT INTO Clientes (NIC, NomeCompleto, Morada, Telefone, Email)
VALUES ('14568475', 'Joao Maria da Costa', 'Av. de Belem n.15, 7300-200 Portalegre', '245300400', 'joao.c@hotmail.com'),
       ('5678842', 'Alexandra Pereira da Silva', 'Rua da Liberdade N.5, 2100 Lisboa', '216525425', 'alex.silva@gmail.pt')
GO

INSERT INTO Alugueres (NIC, Matricula, DataInicio, DataFim)
VALUES ('14568475', '86-IF-45', '2020-10-12', '2020-10-13'),
       ('5678842', '62-ZF-35', '2020-11-15', '2020-11-18'),
       ('14568475', '62-ZF-35', '2020-11-19', '2021-05-17')
GO

-- ----------------------------------------------------------------------------------------------------------
-- Ex.4

-- a) && b)
CREATE TABLE Manutencoes (
    IDManutencao INT PRIMARY KEY NOT NULL IDENTITY (1, 1),
    Matricula NCHAR(10) NOT NULL,
    Quilometragem INT NOT NULL,
    DataManutencao DATE NOT NULL,
    Descricao NVARCHAR(255) NOT NULL,

    CONSTRAINT FK_MATRICULA_MANUTENCAO FOREIGN KEY (Matricula) REFERENCES Viaturas(Matricula),
)
GO

-- c)
INSERT INTO Manutencoes (Matricula, Quilometragem, DataManutencao, Descricao)
VALUES ('86-IF-45', 40320, '2019-01-15', 'Troca de pneus'),
       ('86-IF-45', 61530, '2020-03-30', 'Mudanca do oleo'),
       ('62-ZF-35', 17820, '2020-08-17', 'Reparacao ar condicionado')
GO

-- ----------------------------------------------------------------------------------------------------------
-- Ex.5

-- a)
ALTER TABLE Alugueres
ADD CONSTRAINT DATECHECK CHECK (DataFim >= DataInicio)
GO

-- b)
UPDATE  Alugueres
SET DataFim = '2021-11-17'
WHERE IDAluguer = 3
GO

-- ----------------------------------------------------------------------------------------------------------
-- Ex.6
CREATE VIEW view_ViaturasDisponiveis AS
SELECT Matricula, Lotacao, Marca, Modelo
FROM Viaturas -- INCOMPLETE


-- DAD SOLUTION
-- SELECT v.Matricula, Lotacao, Marca, Modelo
--     FROM Viaturas AS v
--      LEFT JOIN (
--         SELECT Matricula, max(DataFim) AS DataFim
--     FROM Alugueres
--     GROUP BY Matricula
--     ) AS a
--     ON v.Matricula = a.Matricula
--     WHERE DataFim < getdate()
--     OR v.Matricula NOT IN (SELECT Matricula
--                            FROM (SELECT Matricula, max(DataFim) AS DataFim
--                                  FROM Alugueres
--                                  GROUP BY Matricula) AS m)
-- ----------------------------------------------------------------------------------------------------------
-- DAD PROFESSOR INTENDED SOLUTION
-- SELECT v.Matricula, Lotacao, Marca, Modelo
--     FROM Viaturas AS v, (
--         SELECT Matricula, max(DataFim) AS DataFim
--     FROM Alugueres
--     GROUP BY Matricula
--     ) AS a
--     WHERE a.DataFim < getdate() AND v.Matricula = a.Matricula