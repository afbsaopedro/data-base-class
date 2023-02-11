

USE [master]
GO

IF DB_ID ('bd_teste2') is not null drop database [bd_teste2]
GO

CREATE DATABASE [bd_teste2]
GO

USE [bd_teste2]
GO

CREATE TABLE [Clientes](
	[NIF] [nvarchar](20) PRIMARY KEY,
	[NomeCompleto] [nvarchar](100) NULL,
	[DataNascimento] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
	[Telefone] [nvarchar](20) NULL,
	[Morada] [nvarchar](100) NULL,
	[CodigoPostal] [nvarchar](30) NULL,
	[Localidade] [nvarchar](50) NULL,
);
GO

CREATE TABLE [Medicos](
	[NIF] [nvarchar](20) PRIMARY KEY,
	[NomeCompleto] [nvarchar](100) NULL,
	[DataNascimento] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
	[Telefone] [nvarchar](20) NULL,
	[Morada] [nvarchar](100) NULL,
	[CodigoPostal] [nvarchar](30) NULL,
	[Localidade] [nvarchar](50) NULL,
	[NumeroCedula] [nvarchar](20) NULL,
	[Especialidade] [nvarchar](100) NULL
);
GO

CREATE TABLE [Consultas](
	[IDConsulta] [int] PRIMARY KEY IDENTITY,
	[NIFCliente] [nvarchar](20) NULL REFERENCES [Clientes]([NIF]),
	[NIFMedico] [nvarchar](20) NULL REFERENCES [Medicos]([NIF]),
	[DataHora] [datetime] NULL,
	[Descricao] [nvarchar](255) NULL
);
GO


INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'114194436', N'Tanisha Ward', CAST(N'1979-05-10T00:00:00.000' AS DateTime), N'interdum@icloud.ca', N'1-579-386-1938', N'P.O. Box 626, 3197 Arcu Avenue', N'73052-86423', N'Snaaskerke')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'117246008', N'Gage Herring', CAST(N'2004-10-11T00:00:00.000' AS DateTime), N'phasellus@aol.org', N'255-5462', N'Ap #619-1687 Blandit Avenue', N'2086', N'Ourense')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'118016509', N'Naida Richard', CAST(N'2004-08-03T00:00:00.000' AS DateTime), N'donec.porttitor.tellus@hotmail.edu', N'1-151-571-0563', N'Ap #976-4143 Morbi Avenue', N'83-57', N'R?ch Giá')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'120193957', N'Hilary Gilbert', CAST(N'2005-05-09T00:00:00.000' AS DateTime), N'ac.mattis.semper@protonmail.net', N'753-4333', N'195-8568 In St.', N'70016', N'Whitehorse')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'125257291', N'Ishmael Mcintyre', CAST(N'2000-02-10T00:00:00.000' AS DateTime), N'ac@aol.edu', N'727-8181', N'557-8932 Neque Rd.', N'54971', N'Silifke')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'126041806', N'Christopher Ford', CAST(N'1984-12-23T00:00:00.000' AS DateTime), N'lobortis.tellus.justo@hotmail.edu', N'332-6166', N'189 Lectus, Road', N'7024 HH', N'Linköping')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'138853438', N'Medge Mckenzie', CAST(N'1990-02-28T00:00:00.000' AS DateTime), N'nec@google.edu', N'871-1787', N'Ap #985-1003 Rutrum Rd.', N'7244-4083', N'Tonalá')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'141866657', N'Ariana Alvarez', CAST(N'1993-09-09T00:00:00.000' AS DateTime), N'lacus.quisque@google.com', N'831-2552', N'Ap #521-554 Penatibus Rd.', N'5084', N'Pietermaritzburg')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'141979458', N'Hoyt Pace', CAST(N'1985-11-22T00:00:00.000' AS DateTime), N'per.inceptos@protonmail.com', N'876-0184', N'Ap #924-7903 Ac Rd.', N'11185', N'Gangneung')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'151567012', N'Zeus Sanford', CAST(N'1987-06-02T00:00:00.000' AS DateTime), N'mattis@aol.net', N'588-3763', N'553-8218 Magnis Road', N'7236', N'Tabuk')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'151573905', N'Alexandra Griffin', CAST(N'1964-12-24T00:00:00.000' AS DateTime), N'mauris.id.sapien@outlook.org', N'1-263-911-7763', N'Ap #880-8076 Duis Road', N'71063', N'Täby')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'162432600', N'Liberty Sullivan', CAST(N'1971-10-30T00:00:00.000' AS DateTime), N'tellus.id.nunc@yahoo.com', N'171-2360', N'860-1405 Non, Street', N'20361', N'Hamburg')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'170356363', N'Ramona Bentley', CAST(N'1986-08-09T00:00:00.000' AS DateTime), N'sodales.elit@icloud.edu', N'200-8255', N'P.O. Box 453, 6350 Dui, Rd.', N'02-211', N'Biñan')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'173163003', N'Hakeem Roy', CAST(N'1964-07-07T00:00:00.000' AS DateTime), N'nulla.dignissim@outlook.ca', N'1-427-337-1185', N'Ap #279-7318 Urna. Road', N'65726', N'Seogwipo')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'173745794', N'Deanna Humphrey', CAST(N'1995-09-05T00:00:00.000' AS DateTime), N'id.nunc@icloud.org', N'1-969-552-5881', N'9299 Orci, Ave', N'40819', N'Henderson')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'180206060', N'Keegan Bryan', CAST(N'1965-05-20T00:00:00.000' AS DateTime), N'sociis.natoque.penatibus@aol.com', N'1-423-332-4141', N'4472 Maecenas Av.', N'182020', N'Ergani')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'187353202', N'Erin Reynolds', CAST(N'1985-07-15T00:00:00.000' AS DateTime), N'integer@icloud.net', N'946-6065', N'916-8575 Integer St.', N'3621', N'Dublin')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'199466074', N'Kyra Downs', CAST(N'1954-02-25T00:00:00.000' AS DateTime), N'erat.volutpat.nulla@yahoo.com', N'1-674-871-1781', N'Ap #496-5926 Velit Avenue', N'763752', N'Columbus')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'200102414', N'Hope Rice', CAST(N'1969-08-25T00:00:00.000' AS DateTime), N'elit.sed@icloud.edu', N'1-429-528-0837', N'109-4674 Ridiculus Street', N'602671', N'Makassar')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'204749374', N'Kirby Moon', CAST(N'2000-12-01T00:00:00.000' AS DateTime), N'odio.semper.cursus@google.org', N'817-4649', N'307-1691 Eget St.', N'48-856', N'Darlington')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'219967516', N'Erin Holmes', CAST(N'1989-04-21T00:00:00.000' AS DateTime), N'id@protonmail.edu', N'1-245-154-9953', N'6219 Proin Rd.', N'127062', N'Crowsnest Pass')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'226811222', N'Maggie Howell', CAST(N'1964-06-18T00:00:00.000' AS DateTime), N'at.pede.cras@yahoo.ca', N'1-256-411-4686', N'298-8223 Nonummy. St.', N'37V 6A3', N'Chandigarh')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'229317274', N'Davis Wilcox', CAST(N'1984-11-23T00:00:00.000' AS DateTime), N'commodo.ipsum.suspendisse@google.net', N'268-0278', N'798 Ridiculus Avenue', N'650342', N'Saint Petersburg')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'231920711', N'Astra Bailey', CAST(N'2004-12-09T00:00:00.000' AS DateTime), N'turpis.aliquam@google.edu', N'1-442-466-1867', N'Ap #684-439 Fermentum Rd.', N'RV7 5OP', N'Cali')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'232919050', N'Porter Meyers', CAST(N'1955-12-10T00:00:00.000' AS DateTime), N'vivamus.nibh@icloud.couk', N'520-8745', N'P.O. Box 799, 3585 Odio. Street', N'2469', N'Yekaterinburg')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'233613494', N'Channing House', CAST(N'1993-06-17T00:00:00.000' AS DateTime), N'donec.tincidunt@icloud.org', N'456-8964', N'Ap #604-7838 Aliquet St.', N'63775', N'Deutschkreutz')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'237727876', N'Amber Daniel', CAST(N'1999-10-02T00:00:00.000' AS DateTime), N'donec@google.ca', N'1-551-324-4375', N'698-6802 Nullam Street', N'45865-625', N'Niort')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'238262561', N'Wylie Hernandez', CAST(N'1953-08-07T00:00:00.000' AS DateTime), N'mi.fringilla@protonmail.couk', N'1-671-863-6389', N'425-1931 Nec St.', N'Y5E 7W7', N'Ensenada')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'243529300', N'Kenneth Castaneda', CAST(N'1957-11-26T00:00:00.000' AS DateTime), N'pellentesque.habitant.morbi@icloud.ca', N'654-6147', N'Ap #981-9923 Neque St.', N'67473-314', N'Sfruz')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'245552886', N'Hadley Branch', CAST(N'1956-02-15T00:00:00.000' AS DateTime), N'ut.lacus@google.ca', N'777-7125', N'876-4336 Magna. Avenue', N'63-058', N'Meridian')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'250850528', N'Ivy Owens', CAST(N'1970-11-03T00:00:00.000' AS DateTime), N'lacus.pede.sagittis@google.edu', N'1-432-739-8575', N'P.O. Box 394, 9965 Consequat, Ave', N'188953', N'Belfast')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'255006373', N'Iona Ewing', CAST(N'1952-12-17T00:00:00.000' AS DateTime), N'consectetuer.adipiscing.elit@google.edu', N'1-494-575-4240', N'P.O. Box 685, 9644 Sed Av.', N'61815', N'Gävle')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'258540617', N'Maile Leblanc', CAST(N'1990-03-19T00:00:00.000' AS DateTime), N'gravida.mauris.ut@yahoo.org', N'1-218-716-8213', N'1996 Gravida Rd.', N'46681', N'Arzano')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'260264521', N'Aphrodite Crawford', CAST(N'1999-09-19T00:00:00.000' AS DateTime), N'et@google.net', N'1-201-349-6525', N'875-8628 Phasellus Road', N'04297', N'Mokpo')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'268632624', N'Colby Parks', CAST(N'1981-11-26T00:00:00.000' AS DateTime), N'odio.semper.cursus@yahoo.edu', N'370-8039', N'885-5355 Ac Rd.', N'665012', N'Monghidoro')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'269440268', N'Mercedes York', CAST(N'1999-10-25T00:00:00.000' AS DateTime), N'tempor.diam@protonmail.net', N'166-6467', N'P.O. Box 995, 3638 A Street', N'8388-8486', N'Huaraz')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'269690725', N'Adele Hendrix', CAST(N'2004-08-23T00:00:00.000' AS DateTime), N'purus.sapien@aol.couk', N'1-453-923-0016', N'800-506 Mauris St.', N'46672', N'Lódz')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'276315668', N'Kermit Burns', CAST(N'1956-07-24T00:00:00.000' AS DateTime), N'ultrices.mauris.ipsum@aol.org', N'463-2485', N'353-7490 Eu Ave', N'237298', N'Mandai')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'287361344', N'Felix Blankenship', CAST(N'1964-01-13T00:00:00.000' AS DateTime), N'consectetuer.adipiscing@protonmail.edu', N'1-664-452-3043', N'896-8341 Pede. Ave', N'64811', N'Biarritz')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'287379364', N'Caryn Maynard', CAST(N'2000-07-02T00:00:00.000' AS DateTime), N'ut.tincidunt@aol.org', N'285-8557', N'871-2672 Nullam Street', N'45-61', N'Verrayes')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'297450623', N'Addison Mccall', CAST(N'2001-05-25T00:00:00.000' AS DateTime), N'aenean.gravida.nunc@google.couk', N'355-8027', N'528-586 Enim Avenue', N'8345', N'Coevorden')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'309938618', N'Mona Castro', CAST(N'2002-04-05T00:00:00.000' AS DateTime), N'a@protonmail.couk', N'1-832-228-7186', N'P.O. Box 405, 8792 In Av.', N'836523', N'Tokoroa')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'312559531', N'Adele Flowers', CAST(N'1962-11-16T00:00:00.000' AS DateTime), N'ultrices@aol.com', N'1-646-273-6518', N'P.O. Box 238, 6860 Tempor St.', N'18076', N'Woodlands')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'315438452', N'Xandra Barber', CAST(N'2000-12-21T00:00:00.000' AS DateTime), N'dignissim.lacus.aliquam@outlook.net', N'547-4273', N'Ap #132-5235 Sapien Av.', N'3545', N'Belfast')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'318244155', N'Brendan Compton', CAST(N'1967-03-03T00:00:00.000' AS DateTime), N'est.mauris.eu@icloud.ca', N'833-6136', N'P.O. Box 971, 6364 Mi Road', N'41155', N'Los Lagos')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'319999747', N'Zephr Mcfarland', CAST(N'2001-08-19T00:00:00.000' AS DateTime), N'hendrerit.neque.in@hotmail.org', N'378-7541', N'568-1114 Cras St.', N'442153', N'Bagh')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'322939432', N'Driscoll Whitehead', CAST(N'2001-02-01T00:00:00.000' AS DateTime), N'enim@hotmail.edu', N'1-283-285-3536', N'Ap #402-4562 Semper. St.', N'53748', N'Punggol')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'337820844', N'McKenzie Beach', CAST(N'1955-06-13T00:00:00.000' AS DateTime), N'viverra.maecenas.iaculis@icloud.couk', N'946-5377', N'P.O. Box 134, 6638 Adipiscing St.', N'9116', N'Soissons')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'339438161', N'Fritz Morton', CAST(N'1998-06-30T00:00:00.000' AS DateTime), N'id.blandit.at@aol.ca', N'133-3778', N'249-108 Sapien, Ave', N'3028', N'Canberra')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'340917442', N'Katell Booth', CAST(N'1985-12-18T00:00:00.000' AS DateTime), N'phasellus.libero.mauris@yahoo.org', N'1-317-673-3542', N'P.O. Box 235, 5010 Leo, Av.', N'51012', N'Sokoto')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'350130824', N'Bo Charles', CAST(N'1972-03-23T00:00:00.000' AS DateTime), N'ut@hotmail.com', N'1-275-544-0101', N'Ap #371-5288 Sed Rd.', N'73743', N'Lauro de Freitas')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'354612656', N'Lewis Patterson', CAST(N'1973-03-29T00:00:00.000' AS DateTime), N'fusce.dolor@yahoo.org', N'1-481-388-2086', N'5080 Egestas Road', N'614807', N'Málaga')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'354974970', N'Drake Short', CAST(N'1961-07-10T00:00:00.000' AS DateTime), N'ante.bibendum.ullamcorper@icloud.com', N'1-468-431-2134', N'646 Non Street', N'306455', N'Shaanxi')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'355002375', N'Jaden Walls', CAST(N'1994-03-28T00:00:00.000' AS DateTime), N'metus.aliquam@hotmail.net', N'1-663-521-3044', N'629-7179 Volutpat Street', N'1444', N'Avesta')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'370197417', N'Yeo Massey', CAST(N'1984-12-15T00:00:00.000' AS DateTime), N'et.ipsum.cursus@yahoo.couk', N'1-396-315-2605', N'344-9404 Donec Road', N'878866', N'Berlin')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'380667495', N'Keelie Booker', CAST(N'1980-08-31T00:00:00.000' AS DateTime), N'lacus.pede@aol.couk', N'1-211-357-5458', N'465-2585 Nulla. Street', N'57-543', N'Zierikzee')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'383221598', N'Hector Duke', CAST(N'1952-06-09T00:00:00.000' AS DateTime), N'iaculis.quis@yahoo.com', N'233-8267', N'669-5898 Aenean Road', N'22411', N'Kitsman')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'389509798', N'Alice Chandler', CAST(N'1980-03-01T00:00:00.000' AS DateTime), N'mauris@yahoo.edu', N'1-323-564-8707', N'818-2306 Posuere, Road', N'858315', N'Leticia')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'392324872', N'Louis Marshall', CAST(N'1973-08-21T00:00:00.000' AS DateTime), N'diam.luctus@aol.org', N'1-820-488-5278', N'977-7773 Dui. Street', N'65422-131', N'Vinh Long')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'395436610', N'Hayes Davenport', CAST(N'2001-05-16T00:00:00.000' AS DateTime), N'ipsum.nunc@google.org', N'784-4665', N'P.O. Box 796, 1786 Ipsum St.', N'528269', N'Mykolaiv')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'397301403', N'Harlan O''Neill', CAST(N'1989-10-23T00:00:00.000' AS DateTime), N'sapien.cursus.in@protonmail.ca', N'986-8950', N'587-8417 Pede, Ave', N'6449', N'Suncheon')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'410887434', N'Kaitlin Clayton', CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'et@yahoo.couk', N'1-303-526-3515', N'4721 Fusce St.', N'16272', N'Glauchau')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'414892980', N'Victor Graham', CAST(N'1951-03-06T00:00:00.000' AS DateTime), N'nec.orci.donec@google.com', N'1-172-667-4146', N'Ap #958-6115 Amet, St.', N'g3B 6M1', N'Andong')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'424046442', N'Cruz Jefferson', CAST(N'1996-07-28T00:00:00.000' AS DateTime), N'arcu.nunc.mauris@protonmail.com', N'169-5714', N'946-593 Dui. Rd.', N'3552', N'Balsas')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'431385090', N'Kelsey Casey', CAST(N'1953-05-13T00:00:00.000' AS DateTime), N'vestibulum.mauris@hotmail.couk', N'1-528-575-7108', N'759-8046 Sed Rd.', N'74491', N'Curarrehue')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'433383100', N'Beatrice Kane', CAST(N'1992-04-28T00:00:00.000' AS DateTime), N'lacus.pede@google.org', N'1-228-100-8941', N'Ap #764-2389 Nunc St.', N'262108', N'Talgarth')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'440675163', N'Hedda Ortiz', CAST(N'1988-05-23T00:00:00.000' AS DateTime), N'ut.nisi@yahoo.com', N'436-5774', N'Ap #951-1459 Tempus Ave', N'637649', N'Nelspruit')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'448498420', N'Brynn Crane', CAST(N'1996-06-03T00:00:00.000' AS DateTime), N'sem@outlook.com', N'426-4581', N'6905 Nisi Avenue', N'6635', N'Galway')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'465595143', N'Graiden Hodges', CAST(N'1991-10-08T00:00:00.000' AS DateTime), N'nibh.quisque@hotmail.ca', N'1-618-216-7952', N'P.O. Box 736, 8816 Sed Street', N'Y6R 9E1', N'Cáceres')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'466005749', N'Audrey Strickland', CAST(N'1993-08-04T00:00:00.000' AS DateTime), N'suspendisse.non.leo@yahoo.couk', N'1-791-734-4371', N'313-6948 Donec Rd.', N'246234', N'Juliaca')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'468312784', N'Helen Bolton', CAST(N'1988-04-24T00:00:00.000' AS DateTime), N'aptent.taciti@google.couk', N'830-5784', N'1899 Neque Rd.', N'84042', N'Bengkulu')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'468577412', N'Ava Hicks', CAST(N'1991-05-11T00:00:00.000' AS DateTime), N'tincidunt@google.net', N'1-297-941-6286', N'661-2865 Fermentum Ave', N'3728', N'Villers-la-Ville')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'471583673', N'Gemma Blackwell', CAST(N'1970-04-09T00:00:00.000' AS DateTime), N'mauris.elit@yahoo.edu', N'475-8134', N'Ap #167-2197 Varius. Rd.', N'26410', N'Mandai')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'473878592', N'Abra Love', CAST(N'1999-08-13T00:00:00.000' AS DateTime), N'sed@protonmail.couk', N'1-650-805-6042', N'2970 Senectus Rd.', N'83131-83464', N'Guadalupe')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'476041424', N'Ciara Crawford', CAST(N'1983-03-04T00:00:00.000' AS DateTime), N'tempor.lorem.eget@aol.org', N'1-742-437-7515', N'Ap #482-2857 Nunc St.', N'31483', N'Buti')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'480009297', N'Adele Roth', CAST(N'1951-05-23T00:00:00.000' AS DateTime), N'dolor@yahoo.com', N'1-768-704-5169', N'423-5940 Penatibus Rd.', N'7711', N'Galway')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'483842283', N'Chase Tillman', CAST(N'1980-06-09T00:00:00.000' AS DateTime), N'sodales@yahoo.net', N'222-5405', N'445-8088 Est Road', N'881777', N'Marina South')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'484292654', N'Nelle Haney', CAST(N'1958-01-23T00:00:00.000' AS DateTime), N'nunc.mauris.sapien@aol.org', N'1-936-557-8253', N'Ap #655-5142 Purus. Street', N'21335', N'Baden')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'484590211', N'Venus Reese', CAST(N'1950-10-22T00:00:00.000' AS DateTime), N'neque.non@google.com', N'1-306-962-2098', N'Ap #493-4805 Ut Ave', N'2151-8504', N'Wanaka')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'488220813', N'Adrian Le', CAST(N'1970-11-22T00:00:00.000' AS DateTime), N'orci.in@yahoo.net', N'565-7121', N'Ap #249-4680 Morbi Rd.', N'735104', N'Jurong East')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'488630574', N'Yuri Roach', CAST(N'1994-02-04T00:00:00.000' AS DateTime), N'curabitur.egestas@aol.net', N'1-718-136-5777', N'P.O. Box 818, 6293 Quis, St.', N'8729', N'San Pedro')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'490958125', N'Justin Hinton', CAST(N'1996-11-24T00:00:00.000' AS DateTime), N'phasellus.at@protonmail.com', N'220-1622', N'Ap #521-4225 Ac Rd.', N'4737 OE', N'Crato')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'494296908', N'Uriel Ortiz', CAST(N'1999-09-22T00:00:00.000' AS DateTime), N'ut@outlook.edu', N'519-1565', N'927-3308 Non, St.', N'41316', N'Hull')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'495336535', N'Erich Palmer', CAST(N'2003-11-15T00:00:00.000' AS DateTime), N'donec.dignissim@aol.net', N'924-4472', N'Ap #231-3823 Pede, St.', N'3498', N'Lào Cai')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'515871863', N'Adria Anthony', CAST(N'1965-06-01T00:00:00.000' AS DateTime), N'adipiscing@protonmail.com', N'1-168-466-3557', N'463-3049 A Rd.', N'334366', N'Zeist')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'516472234', N'Stephanie Carr', CAST(N'1961-04-06T00:00:00.000' AS DateTime), N'neque.sed@hotmail.ca', N'406-1577', N'6432 Nibh Ave', N'61468-882', N'Dublin')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'527738930', N'Axel Cox', CAST(N'1969-01-14T00:00:00.000' AS DateTime), N'libero.mauris.aliquam@google.edu', N'251-5103', N'P.O. Box 227, 4956 Libero. Av.', N'94365', N'Río Ibáñez')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'532862560', N'Sebastian Santiago', CAST(N'2003-03-03T00:00:00.000' AS DateTime), N'vestibulum.ante@protonmail.couk', N'676-5563', N'P.O. Box 987, 6896 Nec St.', N'30404', N'Oslo')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'550277861', N'Davis Mendez', CAST(N'1952-12-15T00:00:00.000' AS DateTime), N'cras.dolor@outlook.com', N'758-4359', N'269-4370 Nunc Rd.', N'61-43', N'Nässjö')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'553353080', N'Oliver Roman', CAST(N'1956-04-18T00:00:00.000' AS DateTime), N'vel.lectus.cum@protonmail.couk', N'1-386-212-8851', N'892-6562 Ipsum Rd.', N'84887', N'Kovel')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'553639365', N'Donovan Bridges', CAST(N'1990-09-29T00:00:00.000' AS DateTime), N'orci.luctus.et@icloud.com', N'486-5621', N'5432 Erat. St.', N'337748', N'Richmond')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'554986986', N'Melvin Sexton', CAST(N'1981-03-11T00:00:00.000' AS DateTime), N'eu@protonmail.edu', N'479-3587', N'312-8270 Nunc Avenue', N'77739', N'Oudtshoorn')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'570766036', N'Laurel Mendoza', CAST(N'1995-09-18T00:00:00.000' AS DateTime), N'eu.eleifend.nec@aol.edu', N'421-9391', N'522-8376 Sem St.', N'YF72 7TN', N'Palakkad')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'571163066', N'Hayley Bonner', CAST(N'2002-02-12T00:00:00.000' AS DateTime), N'orci.tincidunt@aol.ca', N'1-248-153-4260', N'368-6705 Tempus Road', N'440503', N'Cherkasy')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'575183356', N'Jolene Perez', CAST(N'1953-04-25T00:00:00.000' AS DateTime), N'posuere.enim@outlook.org', N'1-216-273-3042', N'959-2069 Sit Rd.', N'81350', N'Pangnirtung')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'576682295', N'Justin Rhodes', CAST(N'1992-09-21T00:00:00.000' AS DateTime), N'neque.sed@icloud.com', N'1-531-986-8639', N'P.O. Box 853, 1437 Auctor. Rd.', N'6328', N'Alnwick')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'581991713', N'Wade Mcintyre', CAST(N'1965-05-11T00:00:00.000' AS DateTime), N'integer@yahoo.ca', N'762-5555', N'2538 Donec Rd.', N'2015 BO', N'Mazatlán')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'586592676', N'Naida Curtis', CAST(N'1960-01-24T00:00:00.000' AS DateTime), N'orci.ut.sagittis@aol.couk', N'432-1002', N'202-6290 Donec Street', N'3221-8588', N'Stafford')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'592406370', N'Kasimir Cote', CAST(N'1964-12-12T00:00:00.000' AS DateTime), N'et.netus@hotmail.com', N'578-5826', N'6195 Eget Road', N'64813', N'Huaraz')
GO
INSERT [dbo].[Clientes] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade]) VALUES (N'592809986', N'Aphrodite Yates', CAST(N'1977-12-23T00:00:00.000' AS DateTime), N'luctus@yahoo.net', N'1-463-239-1779', N'P.O. Box 819, 6774 Eu Avenue', N'BE4D 0YB', N'Carletonville')
GO


INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'115365369', N'Jakeem Small', CAST(N'1974-07-15T00:00:00.000' AS DateTime), N'neque@aol.ca', N'827-1055', N'P.O. Box 683, 3621 Proin Rd.', N'686534', N'Paraíso', N'68098', N'Cirurgia Maxilofacial')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'116943377', N'Ciaran Frank', CAST(N'1986-10-31T00:00:00.000' AS DateTime), N'semper.nam@google.ca', N'678-8037', N'P.O. Box 237, 9875 Erat. Street', N'21761', N'Tehuacán', N'14916', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'126480273', N'Abel Webster', CAST(N'2003-04-08T00:00:00.000' AS DateTime), N'turpis.in@hotmail.net', N'1-627-216-0229', N'828-5939 Ipsum Av.', N'87163-184', N'Sagamu', N'1955', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'127151028', N'Cecilia Aguilar', CAST(N'1955-11-14T00:00:00.000' AS DateTime), N'parturient.montes.nascetur@outlook.org', N'737-7750', N'9148 Tempor St.', N'89126', N'Lamitan', N'96891', N'Cirurgia Plástica, Reconstrutiva e Estética')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'127369133', N'Todd Puckett', CAST(N'1969-04-01T00:00:00.000' AS DateTime), N'fermentum.metus@hotmail.edu', N'659-7268', N'Ap #574-4242 Ultricies Av.', N'232358', N'Darlington', N'79372', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'131515245', N'Lynn Allison', CAST(N'1961-10-25T00:00:00.000' AS DateTime), N'consectetuer.adipiscing@aol.org', N'1-661-435-1685', N'P.O. Box 512, 213 Enim. Rd.', N'27-578', N'Tiarno di Sopra', N'45664', N'Anestesiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'137843709', N'Blake Leblanc', CAST(N'1986-10-29T00:00:00.000' AS DateTime), N'in.aliquet@icloud.ca', N'435-2666', N'Ap #501-7290 Ipsum. Rd.', N'8658', N'Sokoto', N'31645', N'Gastrenterologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'138990015', N'Hector Powell', CAST(N'1986-03-18T00:00:00.000' AS DateTime), N'ullamcorper@outlook.edu', N'1-149-788-9045', N'Ap #518-481 Ut St.', N'7676', N'Alnwick', N'29639', N'Cirurgia Cardíaca')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'144366798', N'Josiah Webb', CAST(N'2003-01-16T00:00:00.000' AS DateTime), N'mattis.cras@yahoo.edu', N'1-701-673-3542', N'Ap #890-5925 Leo. Ave', N'01020', N'Kidwelly', N'39528', N'Cirurgia Plástica, Reconstrutiva e Estética')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'147050189', N'Desiree Foreman', CAST(N'1981-03-02T00:00:00.000' AS DateTime), N'egestas.aliquam.nec@aol.org', N'1-631-568-5785', N'P.O. Box 638, 2833 Risus. Street', N'3697', N'Bünyan', N'73520', N'Anatomia Patológica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'161938764', N'Cullen Huber', CAST(N'1995-08-30T00:00:00.000' AS DateTime), N'cursus.vestibulum.mauris@yahoo.edu', N'1-568-232-8725', N'Ap #284-6791 Mattis. Rd.', N'822369', N'Belfast', N'70422', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'162005112', N'MacKenzie Wright', CAST(N'1951-12-01T00:00:00.000' AS DateTime), N'et.magnis.dis@google.ca', N'452-9943', N'981 Ut Street', N'04226', N'Calapan', N'30594', N'Cardiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'163156303', N'Orson Medina', CAST(N'1957-11-10T00:00:00.000' AS DateTime), N'nullam.lobortis@google.edu', N'608-9735', N'Ap #636-2559 Quis Avenue', N'48550', N'Norrköping', N'93512', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'167552224', N'Willow Bean', CAST(N'1999-07-26T00:00:00.000' AS DateTime), N'facilisis@yahoo.ca', N'132-6907', N'P.O. Box 863, 202 Tortor Ave', N'86509', N'Pamplona', N'14350', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'186484014', N'Kylan Dennis', CAST(N'2003-09-05T00:00:00.000' AS DateTime), N'lorem@icloud.ca', N'1-734-783-6355', N'Ap #842-9034 Non, St.', N'10201', N'Qinghai', N'4264', N'Cardiologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'190706500', N'Fulton Serrano', CAST(N'1969-01-26T00:00:00.000' AS DateTime), N'gravida.mauris.ut@aol.edu', N'1-818-762-2538', N'Ap #951-1277 Ornare Ave', N'73979', N'Zaragoza', N'70401', N'Cirurgia Maxilofacial')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'197108598', N'Orson Garcia', CAST(N'1951-04-03T00:00:00.000' AS DateTime), N'scelerisque.neque.sed@protonmail.ca', N'1-227-332-3562', N'P.O. Box 900, 7433 Libero. Ave', N'88725', N'Alingsås', N'30419', N'Cirurgia Cardíaca')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'198194742', N'Breanna Mckinney', CAST(N'1983-02-08T00:00:00.000' AS DateTime), N'donec.luctus@aol.com', N'1-738-544-8642', N'Ap #706-9415 Et Avenue', N'874449', N'Hubei', N'62223', N'Gastrenterologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'200057848', N'Jolie Page', CAST(N'1971-03-21T00:00:00.000' AS DateTime), N'fusce.aliquam@yahoo.org', N'620-0694', N'P.O. Box 953, 4907 Nulla Avenue', N'40403', N'Quilicura', N'83264', N'Cardiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'214487392', N'Cora Coleman', CAST(N'1959-07-22T00:00:00.000' AS DateTime), N'pede.nunc.sed@protonmail.couk', N'983-6576', N'P.O. Box 120, 2222 Eros Ave', N'68095', N'Hamburg', N'7322', N'Cardiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'216042849', N'Perry Hatfield', CAST(N'1952-08-04T00:00:00.000' AS DateTime), N'sed@icloud.ca', N'279-3357', N'456-516 Metus Av.', N'1298', N'Taltal', N'20877', N'Cardiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'226486303', N'Aurelia Howell', CAST(N'1963-03-15T00:00:00.000' AS DateTime), N'diam.proin.dolor@outlook.edu', N'1-991-526-8045', N'Ap #605-1040 Cursus St.', N'585844', N'Yeongcheon', N'71122', N'Cardiologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'236366784', N'Ivor Garner', CAST(N'1976-01-09T00:00:00.000' AS DateTime), N'cras@icloud.com', N'1-325-848-2452', N'329-9283 Dolor Ave', N'5387 ZR', N'Ningxia', N'9674', N'Anatomia Patológica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'236757797', N'Hakeem Duncan', CAST(N'1950-09-26T00:00:00.000' AS DateTime), N'nunc.commodo.auctor@protonmail.couk', N'871-0474', N'Ap #345-4415 Id, Ave', N'50119', N'Franeker', N'82281', N'Gastrenterologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'236866869', N'Hayden Nicholson', CAST(N'1970-02-05T00:00:00.000' AS DateTime), N'mauris@aol.ca', N'1-313-920-9802', N'Ap #924-6396 Risus. Street', N'73552', N'Tranent', N'29167', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'249763305', N'Paki Hubbard', CAST(N'1968-11-19T00:00:00.000' AS DateTime), N'et.rutrum@aol.ca', N'261-5688', N'Ap #619-4979 Dui, Av.', N'A3N 8C3', N'Sarpsborg', N'25390', N'Cirurgia Plástica, Reconstrutiva e Estética')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'250862381', N'Charity Horne', CAST(N'1970-10-23T00:00:00.000' AS DateTime), N'lobortis.class@hotmail.net', N'514-6294', N'596-3281 At Street', N'E7 7PB', N'Nässjö', N'36446', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'252137998', N'Desiree Cummings', CAST(N'1991-10-24T00:00:00.000' AS DateTime), N'rutrum.justo@google.net', N'1-257-512-8446', N'P.O. Box 401, 2008 A Ave', N'23285-731', N'Chuncheon', N'29078', N'Cirurgia Vascular')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'255003324', N'Patience Larsen', CAST(N'1996-05-09T00:00:00.000' AS DateTime), N'feugiat.sed@hotmail.edu', N'561-4578', N'Ap #568-1476 Lorem Av.', N'1241', N'Ankara', N'42410', N'Cirurgia Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'257455713', N'Germaine Bauer', CAST(N'1961-11-03T00:00:00.000' AS DateTime), N'mus.proin@aol.edu', N'785-1626', N'Ap #799-5368 Aliquet. St.', N'15-37', N'Zirl', N'85819', N'Cirurgia Vascular')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'259677496', N'Travis Snow', CAST(N'1969-09-20T00:00:00.000' AS DateTime), N'at.pede.cras@aol.net', N'1-292-214-5079', N'365-6030 Tempor Street', N'551147', N'Phan Rang–Tháp Chàm', N'34118', N'Endocrinologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'260462859', N'Zephania Woodward', CAST(N'1956-05-10T00:00:00.000' AS DateTime), N'malesuada.fringilla@outlook.org', N'467-4598', N'865-499 Sem St.', N'26251', N'Oristano', N'32350', N'Cardiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'265685110', N'Zelenia Mays', CAST(N'1987-01-31T00:00:00.000' AS DateTime), N'aliquam@protonmail.com', N'394-7508', N'6253 Class St.', N'8414', N'Santa Maria', N'89664', N'Anatomia Patológica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'277760335', N'Georgia Mcmillan', CAST(N'1957-02-06T00:00:00.000' AS DateTime), N'orci.luctus.et@yahoo.com', N'537-6335', N'Ap #225-5115 Fusce Rd.', N'8738', N'Hubei', N'58240', N'Gastrenterologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'282124753', N'Rogan Howell', CAST(N'1994-05-20T00:00:00.000' AS DateTime), N'semper.rutrum@protonmail.ca', N'515-6181', N'9726 Non Rd.', N'3942', N'Porvenir', N'92224', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'282963863', N'Branden Witt', CAST(N'1990-11-15T00:00:00.000' AS DateTime), N'pede@icloud.edu', N'1-248-385-4378', N'Ap #591-2117 Convallis Rd.', N'21333', N'Huaraz', N'40806', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'293129946', N'Perry Cantu', CAST(N'1958-08-23T00:00:00.000' AS DateTime), N'dapibus.ligula.aliquam@google.ca', N'1-724-478-0640', N'526-4176 Consectetuer Avenue', N'38875372', N'Purranque', N'5809', N'Dermatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'310289829', N'Rogan Alford', CAST(N'1992-06-09T00:00:00.000' AS DateTime), N'eleifend@protonmail.com', N'1-893-254-6660', N'P.O. Box 234, 868 Nullam Road', N'2788-2552', N'Bellary', N'82986', N'Estomatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'311716414', N'Valentine Cash', CAST(N'1952-02-20T00:00:00.000' AS DateTime), N'lorem.sit.amet@google.couk', N'1-421-304-4316', N'662-9883 Metus Rd.', N'166307', N'Ibagué', N'76872', N'Dermatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'316239602', N'Melyssa Owen', CAST(N'1973-06-09T00:00:00.000' AS DateTime), N'blandit.viverra@hotmail.org', N'1-720-715-4422', N'P.O. Box 629, 2240 Pede, Avenue', N'368294', N'Connah''s Quay', N'84651', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'318987176', N'Gwendolyn Winters', CAST(N'1963-04-05T00:00:00.000' AS DateTime), N'risus.duis@protonmail.couk', N'1-142-468-6375', N'Ap #669-6713 Consequat Rd.', N'6514', N'Ð?ng H?i', N'87114', N'Endocrinologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'335687492', N'Price Tate', CAST(N'1973-11-03T00:00:00.000' AS DateTime), N'magnis.dis.parturient@icloud.couk', N'1-754-684-1814', N'667-8902 Natoque St.', N'112891', N'Värnamo', N'30188', N'Cirurgia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'348586042', N'James Buchanan', CAST(N'1986-01-01T00:00:00.000' AS DateTime), N'consectetuer@aol.net', N'161-3665', N'127-8678 Risus. Rd.', N'70552', N'Moncton', N'42129', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'350675495', N'Quinlan Phillips', CAST(N'1959-10-13T00:00:00.000' AS DateTime), N'dolor.sit.amet@google.org', N'1-864-562-1964', N'Ap #612-6176 Pellentesque Avenue', N'16275', N'Ceuta', N'74994', N'Cirurgia Cardíaca')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'359344705', N'Ruth Downs', CAST(N'1988-07-07T00:00:00.000' AS DateTime), N'augue.porttitor@aol.net', N'651-7131', N'P.O. Box 365, 2993 Morbi Ave', N'15856', N'Suncheon', N'17297', N'Cardiologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'366653896', N'Karen Vincent', CAST(N'1957-04-24T00:00:00.000' AS DateTime), N'suspendisse@yahoo.couk', N'303-1871', N'297-9709 Phasellus Avenue', N'82606', N'Bacabal', N'62302', N'Anatomia Patológica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'367169128', N'Blythe Patel', CAST(N'1966-11-22T00:00:00.000' AS DateTime), N'nulla.eget@protonmail.couk', N'1-338-262-3858', N'Ap #945-4185 Tristique Road', N'19478', N'Tongerlo', N'39228', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'368094361', N'Perry Gilmore', CAST(N'1996-05-16T00:00:00.000' AS DateTime), N'et.nunc.quisque@icloud.ca', N'1-879-958-4161', N'6742 Ut St.', N'963974', N'Cisnes', N'94433', N'Endocrinologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'369595030', N'Iris Juarez', CAST(N'2004-04-17T00:00:00.000' AS DateTime), N'erat@hotmail.net', N'1-768-446-3527', N'Ap #226-6213 Ipsum. St.', N'967282', N'Gaziantep', N'52437', N'Cardiologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'371113198', N'Daquan Porter', CAST(N'1966-04-21T00:00:00.000' AS DateTime), N'volutpat.nulla.facilisis@icloud.couk', N'1-741-243-2655', N'845-5759 Sed Road', N'4027', N'Carletonville', N'63163', N'Cirurgia Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'377941754', N'Keiko Waller', CAST(N'1979-05-01T00:00:00.000' AS DateTime), N'et.malesuada@protonmail.couk', N'1-422-824-1376', N'917-6020 Id, Road', N'27527', N'Daejeon', N'76108', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'378382663', N'Dalton Medina', CAST(N'1966-09-27T00:00:00.000' AS DateTime), N'lobortis.tellus@protonmail.edu', N'752-3736', N'529-7847 Ornare Rd.', N'8460', N'Treguaco', N'96375', N'Dermatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'378614549', N'Chandler Simon', CAST(N'1992-11-01T00:00:00.000' AS DateTime), N'nam.interdum@protonmail.edu', N'1-852-720-4618', N'Ap #285-4859 Interdum. Ave', N'7251 IU', N'General Lagos', N'5230', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'382075804', N'Alice English', CAST(N'1967-05-01T00:00:00.000' AS DateTime), N'nunc.id@hotmail.edu', N'1-437-432-8032', N'4665 Mollis St.', N'31234', N'Vienna', N'28681', N'Gastrenterologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'386115985', N'Aiko Byrd', CAST(N'1978-04-05T00:00:00.000' AS DateTime), N'magnis@icloud.edu', N'288-2675', N'572-2926 Et, Street', N'68-37', N'Tongue', N'33042', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'387638803', N'Rose Ruiz', CAST(N'1957-02-07T00:00:00.000' AS DateTime), N'nullam.velit.dui@yahoo.com', N'1-264-128-3491', N'Ap #478-2043 Ridiculus St.', N'6387', N'Dieppe', N'21226', N'Cirurgia Maxilofacial')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'392536452', N'Carla Phillips', CAST(N'1955-03-16T00:00:00.000' AS DateTime), N'dignissim.maecenas@outlook.couk', N'1-323-844-2927', N'6056 Integer St.', N'519216', N'Bida', N'66562', N'Endocrinologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'396540866', N'Phillip Woodward', CAST(N'1983-11-25T00:00:00.000' AS DateTime), N'donec.fringilla@icloud.com', N'242-6044', N'Ap #506-3639 Dapibus Av.', N'27024', N'Tanjung Pinang', N'3600', N'Anatomia Patológica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'398346429', N'Cora Finley', CAST(N'1992-12-20T00:00:00.000' AS DateTime), N'nisi@protonmail.org', N'629-0205', N'P.O. Box 692, 1539 Mollis. Avenue', N'65164-474', N'Delhi', N'23385', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'398740302', N'Gage Banks', CAST(N'1982-04-30T00:00:00.000' AS DateTime), N'nonummy.ipsum.non@protonmail.couk', N'508-4642', N'P.O. Box 219, 6918 Vestibulum Avenue', N'6642', N'Heusden', N'31667', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'398930099', N'Rooney Thompson', CAST(N'1979-10-04T00:00:00.000' AS DateTime), N'aenean.gravida@hotmail.couk', N'277-9234', N'Ap #693-1482 Pede, Road', N'72120', N'Palmerston North', N'76610', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'399349650', N'Emmanuel Roberts', CAST(N'1970-03-23T00:00:00.000' AS DateTime), N'cursus.a@yahoo.net', N'818-7738', N'5176 Mollis St.', N'441466', N'Salzburg', N'66684', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'401615394', N'Xaviera Ward', CAST(N'1997-04-12T00:00:00.000' AS DateTime), N'velit.justo@hotmail.couk', N'1-494-398-3430', N'Ap #130-2417 Sociosqu Av.', N'D8I 6GG', N'Oss', N'48102', N'Gastrenterologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'411989565', N'Ann Mathews', CAST(N'1990-01-15T00:00:00.000' AS DateTime), N'vivamus.molestie.dapibus@google.com', N'1-968-487-9840', N'Ap #418-8055 Eget Rd.', N'13718', N'Mjölby', N'72005', N'Cirurgia Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'417995641', N'Ciaran Waller', CAST(N'1959-05-31T00:00:00.000' AS DateTime), N'a@icloud.ca', N'954-0276', N'Ap #329-7450 Ornare Road', N'3799', N'Pondicherry', N'55173', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'420379871', N'Levi Wilder', CAST(N'1968-10-12T00:00:00.000' AS DateTime), N'a.dui.cras@google.ca', N'1-223-417-3176', N'P.O. Box 430, 5536 Amet Av.', N'9121', N'Zwelitsha', N'47412', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'440491371', N'Xander Huber', CAST(N'1969-03-08T00:00:00.000' AS DateTime), N'dui@icloud.ca', N'312-2985', N'957-6168 Pellentesque Ave', N'45321-66882', N'Hulst', N'5135', N'Cirurgia Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'442493295', N'Amos Richardson', CAST(N'1996-03-16T00:00:00.000' AS DateTime), N'tincidunt@icloud.ca', N'749-2439', N'P.O. Box 830, 9268 Mi. St.', N'89034', N'Shreveport', N'29912', N'Gastrenterologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'443335034', N'Quyn Neal', CAST(N'1990-02-19T00:00:00.000' AS DateTime), N'sodales.mauris@hotmail.couk', N'1-238-887-1586', N'541-2479 Ligula. Rd.', N'91672', N'Stonewall', N'88903', N'Cirurgia Cardíaca')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'443867149', N'Armand Bennett', CAST(N'2003-11-09T00:00:00.000' AS DateTime), N'id@yahoo.net', N'601-6586', N'2376 Nisi. St.', N'BG1 8GB', N'Pretoria', N'81258', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'450547803', N'Pearl Gardner', CAST(N'1951-05-26T00:00:00.000' AS DateTime), N'arcu.vivamus.sit@hotmail.com', N'1-755-747-8666', N'Ap #204-5095 Ipsum Av.', N'75742-591', N'Prenzlau', N'50641', N'Estomatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'460506988', N'Hope Stein', CAST(N'1966-10-05T00:00:00.000' AS DateTime), N'elit.pharetra@outlook.edu', N'1-696-224-6456', N'6723 Vestibulum Rd.', N'599736', N'Gongju', N'91794', N'Gastrenterologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'462628908', N'Audrey Madden', CAST(N'1974-11-07T00:00:00.000' AS DateTime), N'quis.lectus@outlook.net', N'1-824-718-7824', N'Ap #984-721 Vehicula Road', N'25028-57634', N'Zamora de Hidalgo', N'50250', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'471281830', N'Anastasia Haney', CAST(N'2002-11-03T00:00:00.000' AS DateTime), N'sagittis@protonmail.ca', N'1-853-215-4945', N'903-6733 Ipsum Av.', N'3737', N'La Rochelle', N'25315', N'Endocrinologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'474451823', N'Carl Juarez', CAST(N'1970-11-16T00:00:00.000' AS DateTime), N'a@icloud.com', N'1-676-489-4762', N'585-5273 Dolor, Road', N'753166', N'Betim', N'25127', N'Anatomia Patológica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'478410900', N'Quintessa Savage', CAST(N'2003-01-26T00:00:00.000' AS DateTime), N'placerat.orci.lacus@outlook.org', N'1-465-168-3575', N'163-7343 Nec Avenue', N'54586', N'Cabadbaran', N'30377', N'Cirurgia Maxilofacial')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'487323800', N'Chelsea Nichols', CAST(N'1991-06-06T00:00:00.000' AS DateTime), N'in@google.com', N'680-7077', N'641-7819 Erat Ave', N'8112', N'Nicoya', N'87848', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'494920013', N'Larissa Graham', CAST(N'1954-01-30T00:00:00.000' AS DateTime), N'sodales.at@hotmail.couk', N'1-323-665-4305', N'P.O. Box 759, 4571 Sit Av.', N'51262-330', N'Austin', N'40529', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'499154171', N'Suki Walker', CAST(N'1998-06-13T00:00:00.000' AS DateTime), N'dictum.eleifend@yahoo.couk', N'1-378-532-2533', N'Ap #536-4782 Feugiat. Street', N'791780', N'Cherain', N'60167', N'Cirurgia Plástica, Reconstrutiva e Estética')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'504190340', N'Stuart Herring', CAST(N'1973-06-22T00:00:00.000' AS DateTime), N'nulla.eget.metus@hotmail.com', N'1-929-317-7721', N'Ap #634-9287 Donec Street', N'6411-4857', N'Pelluhue', N'68946', N'Dermatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'506292217', N'Lucas Olsen', CAST(N'1978-06-16T00:00:00.000' AS DateTime), N'interdum.feugiat@outlook.edu', N'1-233-350-2195', N'P.O. Box 760, 3518 Rutrum Rd.', N'15418', N'Governador Valadares', N'57843', N'Cirurgia Cardíaca')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'512360149', N'Arden Frank', CAST(N'1977-07-30T00:00:00.000' AS DateTime), N'vitae.risus@icloud.org', N'363-5646', N'Ap #838-1093 Nostra, Ave', N'21837', N'Flekkefjord', N'84107', N'Gastrenterologia Pediátrica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'524137801', N'Darrel Roach', CAST(N'1964-06-02T00:00:00.000' AS DateTime), N'auctor.mauris@aol.couk', N'1-264-702-5679', N'887-1718 Enim, St.', N'797971', N'Pontey', N'41509', N'Estomatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'529893142', N'Samantha Spence', CAST(N'1970-08-11T00:00:00.000' AS DateTime), N'sollicitudin.commodo@outlook.edu', N'828-6452', N'P.O. Box 563, 4352 Sed Ave', N'1214 OT', N'Ulsan', N'59436', N'Anestesiologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'529970865', N'Jordan Orr', CAST(N'1958-04-03T00:00:00.000' AS DateTime), N'metus@outlook.couk', N'1-619-466-4967', N'P.O. Box 978, 5370 Vulputate, Avenue', N'716721', N'Neufeld an der Leitha', N'35014', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'531354488', N'Lavinia Mcdonald', CAST(N'1985-09-04T00:00:00.000' AS DateTime), N'fringilla.purus.mauris@hotmail.org', N'318-2632', N'Ap #978-2662 Aliquet Ave', N'262395', N'Brakpan', N'36846', N'Clínica Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'533515263', N'Simon Blake', CAST(N'1984-03-26T00:00:00.000' AS DateTime), N'nascetur@aol.net', N'1-213-807-3762', N'9331 Velit. Avenue', N'4263 OI', N'Pskov', N'12758', N'Dermatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'536381860', N'Barclay Stephenson', CAST(N'1953-12-24T00:00:00.000' AS DateTime), N'donec.felis@yahoo.com', N'1-413-417-6435', N'136-8817 Pellentesque Ave', N'31809', N'Dublin', N'76822', N'Cirurgia Vascular')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'536460817', N'Simon Combs', CAST(N'1968-04-18T00:00:00.000' AS DateTime), N'magna@icloud.org', N'717-2613', N'P.O. Box 202, 4355 Non, Av.', N'71238', N'Isabela City', N'9908', N'Acupuntura')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'538624021', N'Todd Ward', CAST(N'1973-02-14T00:00:00.000' AS DateTime), N'rutrum.urna.nec@google.ca', N'1-715-554-0744', N'217 Ac St.', N'66-25', N'Hugli-Chinsurah', N'7877', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'543102270', N'Keely Diaz', CAST(N'1997-10-07T00:00:00.000' AS DateTime), N'faucibus.orci@hotmail.edu', N'212-9856', N'415-368 Eu Av.', N'127754', N'Puntarenas', N'56784', N'Gastrenterologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'548189884', N'Jakeem Talley', CAST(N'2004-08-27T00:00:00.000' AS DateTime), N'integer.in@google.org', N'259-3698', N'Ap #747-3221 Sit Street', N'447259', N'Riosucio', N'59682', N'Cirurgia Cardíaca')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'552899021', N'Grady Briggs', CAST(N'2000-10-03T00:00:00.000' AS DateTime), N'neque.nullam@icloud.couk', N'489-1149', N'Ap #513-6689 Nullam Rd.', N'8557', N'Nancy', N'49406', N'Cuidados Paliativos')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'560419982', N'Maisie Velazquez', CAST(N'1963-10-13T00:00:00.000' AS DateTime), N'nunc.mauris@aol.net', N'1-528-336-5513', N'897-1924 Non, Rd.', N'2728 SW', N'Levanger', N'32329', N'Genética Médica')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'571627791', N'Stacy Mays', CAST(N'2005-05-25T00:00:00.000' AS DateTime), N'orci.lobortis@aol.org', N'499-0405', N'835-8778 Lorem Street', N'866152', N'Biên Hòa', N'26732', N'Estomatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'574406214', N'Hope Reeves', CAST(N'1963-08-02T00:00:00.000' AS DateTime), N'egestas@google.edu', N'1-830-159-0163', N'Ap #665-3076 Nullam Street', N'364675', N'Junagadh', N'98620', N'Cirurgia Geral')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'575465341', N'Faith Wilkinson', CAST(N'1986-11-11T00:00:00.000' AS DateTime), N'iaculis@google.org', N'1-489-434-8710', N'Ap #897-4729 Tempus Av.', N'8986', N'Vito d''Asio', N'11419', N'Cirurgia Maxilofacial')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'577637418', N'Tyler Hill', CAST(N'1953-12-18T00:00:00.000' AS DateTime), N'consequat.nec.mollis@outlook.org', N'951-1793', N'201-6697 Inceptos Street', N'47114', N'Castelló', N'4377', N'Gastrenterologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'578474425', N'Rafael Lane', CAST(N'1980-05-11T00:00:00.000' AS DateTime), N'in.dolor@aol.com', N'1-378-356-9146', N'220-1406 Augue Street', N'28087', N'Bremerhaven', N'98530', N'Estomatologia')
GO
INSERT [dbo].[Medicos] ([NIF], [NomeCompleto], [DataNascimento], [Email], [Telefone], [Morada], [CodigoPostal], [Localidade], [NumeroCedula], [Especialidade]) VALUES (N'582164597', N'Petra Kline', CAST(N'1957-06-12T00:00:00.000' AS DateTime), N'libero.est@outlook.net', N'1-948-631-3118', N'Ap #442-8657 Id Ave', N'XE3V 0YM', N'Radebeul', N'30769', N'Gastrenterologia Pediátrica')
GO


INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-11-18T00:00:00.000' AS DateTime), N'Anestesiologia', N'114194436', N'115365369')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-02-26T00:00:00.000' AS DateTime), N'Estomatologia', N'117246008', N'116943377')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-07-21T00:00:00.000' AS DateTime), N'Cardiologia Pediátrica', N'118016509', N'126480273')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-11-26T00:00:00.000' AS DateTime), N'Gastrenterologia', N'120193957', N'127151028')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-10-10T00:00:00.000' AS DateTime), N'Cirurgia Geral', N'125257291', N'127369133')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'126041806', N'131515245')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-08-04T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'138853438', N'137843709')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Acupuntura', N'141866657', N'138990015')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2015-11-28T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'141979458', N'144366798')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-11-15T00:00:00.000' AS DateTime), N'Clínica Geral', N'151567012', N'147050189')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-06-12T00:00:00.000' AS DateTime), N'Estomatologia', N'151573905', N'161938764')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2015-12-19T00:00:00.000' AS DateTime), N'Cirurgia Geral', N'162432600', N'162005112')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-07-10T00:00:00.000' AS DateTime), N'Cirurgia Cardíaca', N'170356363', N'163156303')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-04-07T00:00:00.000' AS DateTime), N'Dermatologia', N'173163003', N'167552224')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-03-10T00:00:00.000' AS DateTime), N'Gastrenterologia', N'173745794', N'186484014')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-03-17T00:00:00.000' AS DateTime), N'Dermatologia', N'180206060', N'190706500')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-06-26T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'187353202', N'197108598')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-02-17T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'199466074', N'198194742')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-11-06T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'200102414', N'200057848')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2015-11-12T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'204749374', N'214487392')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-08-20T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'219967516', N'216042849')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-01-12T00:00:00.000' AS DateTime), N'Cirurgia Pediátrica', N'226811222', N'226486303')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-07-01T00:00:00.000' AS DateTime), N'Cirurgia Vascular', N'229317274', N'236366784')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-11-12T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'231920711', N'236757797')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-08-26T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'232919050', N'236866869')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-04-11T00:00:00.000' AS DateTime), N'Cirurgia Vascular', N'233613494', N'249763305')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-10-13T00:00:00.000' AS DateTime), N'Cardiologia Pediátrica', N'237727876', N'250862381')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-12-23T00:00:00.000' AS DateTime), N'Cirurgia Cardíaca', N'238262561', N'252137998')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-03-09T00:00:00.000' AS DateTime), N'Gastrenterologia Pediátrica', N'243529300', N'255003324')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-10-07T00:00:00.000' AS DateTime), N'Cardiologia', N'245552886', N'257455713')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-11-12T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'250850528', N'259677496')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2015-11-29T00:00:00.000' AS DateTime), N'Genética Médica', N'255006373', N'260462859')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-05-08T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'258540617', N'265685110')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2015-10-05T00:00:00.000' AS DateTime), N'Genética Médica', N'260264521', N'277760335')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-05-03T00:00:00.000' AS DateTime), N'Cirurgia Torácica', N'268632624', N'255003324')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-10-29T00:00:00.000' AS DateTime), N'Acupuntura', N'269440268', N'282963863')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-10-11T00:00:00.000' AS DateTime), N'Cardiologia', N'269690725', N'293129946')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-05-17T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'276315668', N'310289829')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-12-15T00:00:00.000' AS DateTime), N'Cirurgia Plástica, Reconstrutiva e Estética', N'287361344', N'255003324')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-10-25T00:00:00.000' AS DateTime), N'Endocrinologia', N'287379364', N'316239602')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-02-10T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'297450623', N'318987176')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-03-29T00:00:00.000' AS DateTime), N'Cirurgia Plástica, Reconstrutiva e Estética', N'309938618', N'335687492')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-07-11T00:00:00.000' AS DateTime), N'Cardiologia', N'312559531', N'348586042')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-10-01T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'315438452', N'350675495')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-10-26T00:00:00.000' AS DateTime), N'Clínica Geral', N'318244155', N'359344705')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-09-29T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'319999747', N'255003324')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'Cirurgia Cardíaca', N'322939432', N'367169128')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-12-29T00:00:00.000' AS DateTime), N'Dermatologia', N'337820844', N'368094361')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-06-20T00:00:00.000' AS DateTime), N'Dermatologia', N'339438161', N'369595030')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'Gastrenterologia', N'340917442', N'371113198')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-09-08T00:00:00.000' AS DateTime), N'Genética Médica', N'350130824', N'377941754')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'Genética Médica', N'354612656', N'378382663')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-03-21T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'354974970', N'255003324')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-01-09T00:00:00.000' AS DateTime), N'Endocrinologia', N'355002375', N'382075804')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-04-13T00:00:00.000' AS DateTime), N'Endocrinologia', N'370197417', N'386115985')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-08-10T00:00:00.000' AS DateTime), N'Estomatologia', N'380667495', N'387638803')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-08-16T00:00:00.000' AS DateTime), N'Clínica Geral', N'383221598', N'392536452')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-07-15T00:00:00.000' AS DateTime), N'Cirurgia Vascular', N'389509798', N'371113198')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-04-22T00:00:00.000' AS DateTime), N'Cirurgia Geral', N'392324872', N'398346429')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-10-02T00:00:00.000' AS DateTime), N'Estomatologia', N'395436610', N'398740302')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-09-21T00:00:00.000' AS DateTime), N'Genética Médica', N'397301403', N'398930099')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-04-28T00:00:00.000' AS DateTime), N'Dermatologia', N'410887434', N'371113198')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-01-14T00:00:00.000' AS DateTime), N'Gastrenterologia Pediátrica', N'414892980', N'401615394')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-12-17T00:00:00.000' AS DateTime), N'Cirurgia Cardíaca', N'424046442', N'411989565')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'Endocrinologia', N'431385090', N'417995641')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'Gastrenterologia', N'433383100', N'371113198')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-09-08T00:00:00.000' AS DateTime), N'Clínica Geral', N'440675163', N'440491371')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-06-24T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'448498420', N'442493295')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2019-06-20T00:00:00.000' AS DateTime), N'Gastrenterologia', N'465595143', N'443335034')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-10-27T00:00:00.000' AS DateTime), N'Anestesiologia', N'466005749', N'443867149')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'Anestesiologia', N'468312784', N'450547803')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-05-21T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'468577412', N'460506988')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-12-26T00:00:00.000' AS DateTime), N'Genética Médica', N'471583673', N'462628908')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-05-17T00:00:00.000' AS DateTime), N'Cirurgia Plástica, Reconstrutiva e Estética', N'473878592', N'471281830')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-09-29T00:00:00.000' AS DateTime), N'Cuidados Paliativos', N'476041424', N'474451823')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-03-22T00:00:00.000' AS DateTime), N'Cirurgia Cardíaca', N'480009297', N'450547803')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-09-18T00:00:00.000' AS DateTime), N'Cardiologia', N'483842283', N'450547803')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-05-27T00:00:00.000' AS DateTime), N'Cirurgia Geral', N'484292654', N'494920013')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-08-14T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'484590211', N'499154171')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Dermatologia', N'488220813', N'504190340')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-04-06T00:00:00.000' AS DateTime), N'Dermatologia', N'488630574', N'506292217')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-10-14T00:00:00.000' AS DateTime), N'Cirurgia Vascular', N'490958125', N'512360149')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2023-01-18T00:00:00.000' AS DateTime), N'Cirurgia Geral', N'494296908', N'524137801')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-10-29T00:00:00.000' AS DateTime), N'Dermatologia', N'495336535', N'529893142')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2016-02-04T00:00:00.000' AS DateTime), N'Cirurgia Plástica, Reconstrutiva e Estética', N'515871863', N'529970865')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2022-12-04T00:00:00.000' AS DateTime), N'Genética Médica', N'516472234', N'531354488')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2023-06-19T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'527738930', N'533515263')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-01-30T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'532862560', N'536381860')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-01-20T00:00:00.000' AS DateTime), N'Cirurgia Maxilofacial', N'550277861', N'536460817')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Anatomia Patológica', N'553353080', N'538624021')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-08-16T00:00:00.000' AS DateTime), N'Cirurgia Torácica', N'553639365', N'543102270')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'Cirurgia Cardíaca', N'554986986', N'548189884')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'Cirurgia Torácica', N'570766036', N'552899021')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-01-06T00:00:00.000' AS DateTime), N'Cirurgia Geral', N'571163066', N'560419982')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'Anestesiologia', N'575183356', N'571627791')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-09-17T00:00:00.000' AS DateTime), N'Dermatologia', N'576682295', N'574406214')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2021-07-05T00:00:00.000' AS DateTime), N'Gastrenterologia', N'581991713', N'575465341')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2018-10-21T00:00:00.000' AS DateTime), N'Clínica Geral', N'586592676', N'577637418')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2020-11-02T00:00:00.000' AS DateTime), N'Acupuntura', N'592406370', N'578474425')
GO
INSERT [dbo].[Consultas] ( [DataHora], [Descricao], [NIFCliente], [NIFMedico]) VALUES (CAST(N'2017-10-21T00:00:00.000' AS DateTime), N'Cardiologia Pediátrica', N'592809986', N'582164597')
GO

