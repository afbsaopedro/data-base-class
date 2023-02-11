USE bd_teste2
GO

-- 1.a [X]
SELECT NomeCompleto, Email FROM Medicos
GO

-- 1.b [X]
SELECT TOP 1 Clientes.NomeCompleto, COUNT(Consultas.NIFCliente) AS 'Número Total de Consultas'
FROM Consultas
JOIN Clientes ON Clientes.NIF = Consultas.NIFCliente
GROUP BY Consultas.NIFCliente, Clientes.NomeCompleto
ORDER BY SUM(CAST(Consultas.NIFCliente AS INT)) DESC
GO

-- 1.c [X]
SELECT TOP 1 Clientes.NomeCompleto AS 'Cliente', Medicos.NomeCompleto AS 'Médico'
FROM Consultas
INNER JOIN Medicos ON Medicos.NIF = Consultas.NIFMedico
INNER JOIN Clientes ON Clientes.NIF = Consultas.NIFCliente
WHERE Consultas.DataHora = '2017-10-21'
GO

-- 2. [X]
CREATE VIEW v_especialidades AS
SELECT Especialidade from Medicos
GROUP BY Especialidade
GO

-- 3.a [X]
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2023-02-15T16:00:00.000' AS DateTime), N'Dermatologia', N'576682295', N'574406214')
GO

-- 3.b [X]
DELETE FROM Consultas
WHERE DataHora = '2023-06-19T00:00:00.000'
GO

-- 3.c [X]
UPDATE Consultas
SET NIFMedico = 529970865
WHERE IDConsulta = 90
GO

-- 4.a [X]
CREATE PROCEDURE quatro_a @NIFMedico INT
AS
    BEGIN
        SELECT * FROM Consultas
        WHERE NIFMedico = @NIFMedico
    END
GO

-- Executar procedure
EXEC quatro_a @NIFMedico = 115365369
GO

-- 4.b [ ]
GO