USE master
GO;


CREATE DATABASE db_TI2
GO;

USE db_TI2
GO;

CREATE TABLE  ComponentCategory(
    IDCategory INT PRIMARY KEY NOT NULL,
    Description NVARCHAR(100) NOT NULL
);
GO;

CREATE TABLE ComponentSubcategory(
    IDSubcategory INT PRIMARY KEY NOT NULL,
    ParentCategory INT NOT NULL,
    Description NVARCHAR(100) NOT NULL,

    CONSTRAINT FK_ParentCategory FOREIGN KEY (ParentCategory) REFERENCES ComponentCategory (IDCategory)
);
GO;

CREATE TABLE Nationality(
    IDNationality NVARCHAR(50) PRIMARY KEY NOT NULL,
    Description NVARCHAR(50)
);
GO;

CREATE TABLE Customer(
    IDCustomer INT PRIMARY KEY NOT NULL,
    FullName NVARCHAR(200) NOT NULL,
    CC NVARCHAR(12) NOT NULL,
    CCDate DATE NOT NULL,
    NIF NVARCHAR(9) NOT NULL,
    IDNationality NVARCHAR(50),
    StressAddress NVARCHAR(200) NOT NULL,
    Zipcode NVARCHAR(100) NOT NULL,
    BirthDate DATE,
    ContactNumber NVARCHAR(20) NOT NULL,
    Email NVARCHAR(75),

    CONSTRAINT FK_Nationality FOREIGN KEY (IDNationality) REFERENCES Nationality (IDNationality)
);
GO;

CREATE TABLE Component(
    IDComponent INT PRIMARY KEY NOT NULL,
    Subcategory INT NOT NULL,
    Description NVARCHAR(100),

    CONSTRAINT FK_Subcategory FOREIGN KEY (Subcategory) REFERENCES ComponentSubcategory (IDSubcategory)
);
GO;

CREATE TABLE Purchase(
    IDPurchase INT PRIMARY KEY NOT NULL,
    IDCustomer INT NOT NULL,
    PurchaseDate DATE NOT NULL,

    CONSTRAINT FK_Customer FOREIGN KEY (IDCustomer) REFERENCES Customer (IDCustomer)
);
GO;

CREATE TABLE PurchaseComponent(
    IDPurchase INT NOT NULL,
    IDComponent INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,

    PRIMARY KEY (IDPurchase, IDComponent),
    CONSTRAINT FK_Purchase FOREIGN KEY (IDPurchase) REFERENCES Purchase (IDPurchase),
    CONSTRAINT FK_Component FOREIGN KEY (IDComponent) REFERENCES Component (IDComponent)
);
GO;

CREATE TABLE Compatibility(
    IDFirstComponent INT NOT NULL,
    IDSecondComponent INT NOT NULL,

    PRIMARY KEY (IDFirstComponent, IDSecondComponent),
    CONSTRAINT FK_FirstComponent FOREIGN KEY (IDFirstComponent) REFERENCES Component (IDComponent),
    CONSTRAINT FK_SecondComponent FOREIGN KEY (IDSecondComponent) REFERENCES Component (IDComponent)
);
GO

CREATE TABLE Assembly(
    IDAssembly INT PRIMARY KEY NOT NULL,
    IDPurchase INT NOT NULL,
    Description NVARCHAR(100),

    CONSTRAINT FK_PurchaseID FOREIGN KEY (IDPurchase) REFERENCES Purchase (IDPurchase)
)
GO;

