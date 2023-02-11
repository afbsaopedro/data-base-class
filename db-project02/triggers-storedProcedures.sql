USE db_TI2;
GO;

CREATE PROCEDURE sp_a @CC NVARCHAR(12)
AS
BEGIN
SELECT FullName, CONCAT(StressAddress, ', ', Zipcode) FROM Customer
WHERE CC = @CC
END
GO;

EXEC sp_a @CC = '971602679055'
GO;

CREATE PROCEDURE sp_b
AS
BEGIN
SELECT * INTO CustomerBackup FROM Customer
END
GO;

EXEC sp_b

USE db_TI2;
GO;

CREATE PROCEDURE sp_a @CC NVARCHAR(12)
AS
BEGIN
SELECT FullName, CONCAT(StressAddress, ', ', Zipcode) FROM Customer
WHERE CC = @CC
END
GO;

EXEC sp_a @CC = '971602679055'
GO;

CREATE PROCEDURE sp_b
AS
BEGIN
SELECT * INTO CustomerBackup FROM Customer
END
GO;

EXEC sp_b

CREATE TRIGGER tr_c ON PurchaseComponent AFTER UPDATE, INSERT
    AS
    DECLARE @IDComponent INT
    SET @IDComponent = (SELECT IDComponent FROM inserted)
    IF EXISTS(SELECT IDFirstComponent FROM Compatibility WHERE IDFirstComponent = @IDComponent)
        BEGIN
            -- dentro de ciclo
            -- comparar IDComponent FROM PurchaseComponent com IDSecondComponent FROM Compatiblity
            -- IF false --> rollback
        END
    ELSE EXISTS(SELECT IDSecondComponent FROM Compatibility WHERE IDSecondComponent = @IDComponent)
        BEGIN
            -- mesma logica do IF
        END
