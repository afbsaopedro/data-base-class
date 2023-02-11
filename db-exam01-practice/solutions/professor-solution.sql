
use bd_teste1


--1a
select NúmeroLeitor, count(NúmeroLeitor) 'Livros emprestados' from Empréstimo group by NúmeroLeitor

--1b
select count(IDEmpréstimo) 'Livros ainda emprestados' from Empréstimo where DataFim > getdate()

--1c
select Título from Livros where AnoPublicação = (select min(AnoPublicação) from Livros)
--ou
select TOP 1 Título from Livros order by AnoPublicação asc

--1d
select PrimeirosNomes + ' ' + ÚltimosNomes 'Nome Completo' from Leitor
-- ou
Select concat(PrimeirosNomes,' ', ÚltimosNomes) as 'Nome Completo' from Leitor

--1e
select Designação from Coleções
except
select Designação
from Coleções
join Livros on Coleções.IDColeção = Livros.IDColeção
-- ou
select c.Designação from Livros l right join Coleções c 
on c.IDColeção = l.IDColeção where l.IDColeção is null


--2a
use master
IF DB_ID (N'aluguer_viaturas') is not null drop database aluguer_viaturas
create database aluguer_viaturas
go
use aluguer_viaturas
go

if object_id(N'Viaturas', 'U') is not null drop table Viaturas
go
create table Viaturas
(
Matrícula nchar(10) not null primary key,
Lotação tinyint not null,
Marca nchar(30) not null,
Modelo nchar(30) not null
)
go

if object_id(N'Clientes', 'U') is not null drop table Clientes
go
create table Clientes
(
NIC nchar(15) primary key,
NomeCompleto nchar(100) not null,
Morada nchar(100) not null,
Telefone nchar(20) not null,
Email nchar(40)
)
go

if object_id(N'Alugueres', 'U') is not null drop table Alugueres
go
create table Alugueres
(
IDAluguer int primary key identity(1,1),
NIC nchar (15) not null references Clientes(NIC) on update cascade,
Matrícula nchar (10) not null references Viaturas(Matrícula),
DataInício date not null,
DataFim date not null
)
go


--3
insert into Viaturas values ('86-IF-45', 2, 'Renault', 'Kangoo')
insert into Viaturas values ('62-ZF-35', 5, 'Mercedes', 'Classe A')
go

insert into Clientes values ('14568475', 'João Maria da Costa', 'Av. de Belém n.15, 7300-200 Portalegre', '245300400', 'joao.c@hotmail.com')
insert into Clientes values ('5678842', 'Alexandra Pereira da Silva', 'Rua da Liberdade N.5, 2100 Lisboa', '216525425', 'alex.silva@gmail.pt')
go

insert into Alugueres values ('14568475', '86-IF-45', '2020-10-12', '2020-10-13')
insert into Alugueres values ('5678842', '62-ZF-35', '2020-11-15', '2020-11-18')
insert into Alugueres values ('14568475', '62-ZF-35', '2020-11-19', '2021-05-17')
go


--4a
use aluguer_viaturas
go

if object_id(N'Manutenções', 'U') is not null drop table Manutenções
go
create table Manutenções
(
IDManutenção int primary key identity(1,1),
Matrícula nchar (10) not null,
Data date not null,
Quilometragem int not null,
Descrição nchar(200) not null
)
go

--4b
alter table Manutenções add constraint manutenções_veículos foreign key(Matrícula) references Viaturas(Matrícula)
go

--4c
insert into Manutenções (Matrícula,Data,Quilometragem,Descrição) values ('86-IF-45', 01-01-2019, 40320, 'Trocar pneus')
insert into Manutenções values ('86-IF-45', '2020-03-30', 61530, 'Mudança de óleo')
insert into Manutenções values ('62-ZF-35', '2020-08-17', 17820, 'Reparação do ar condicionado')
go

--5a
alter table Alugueres add constraint checkDataFim check (DataFim >= DataInício)
go

--5b
update Alugueres set DataFim = '2021-11-17' where IDAluguer = 3
go

--6
if object_id(N'view_ViaturasDisponíveis', 'v') is not null drop view view_ViaturasDisponíveis
go

create view view_ViaturasDisponíveis as
(
select Viaturas.*
from Viaturas
join Alugueres on Viaturas.Matrícula = Alugueres.Matrícula
group by Viaturas.Lotação, Viaturas.Marca, Viaturas.Matrícula, Viaturas.Modelo
having max(DataFim) < GETDATE()
)
go
-- ou
create view view_ViaturasDisponíveis as
(
select Matrícula, Lotação, Marca, Modelo from Viaturas
except 
select Viaturas.Matrícula, Lotação, Marca, Modelo from Viaturas 
join Alugueres on Viaturas.Matrícula = Alugueres.Matrícula
where DataFim >= getdate()
)
go

select * from view_ViaturasDisponíveis



