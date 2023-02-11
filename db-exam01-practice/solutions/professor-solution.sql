
use bd_teste1


--1a
select N�meroLeitor, count(N�meroLeitor) 'Livros emprestados' from Empr�stimo group by N�meroLeitor

--1b
select count(IDEmpr�stimo) 'Livros ainda emprestados' from Empr�stimo where DataFim > getdate()

--1c
select T�tulo from Livros where AnoPublica��o = (select min(AnoPublica��o) from Livros)
--ou
select TOP 1 T�tulo from Livros order by AnoPublica��o asc

--1d
select PrimeirosNomes + ' ' + �ltimosNomes 'Nome Completo' from Leitor
-- ou
Select concat(PrimeirosNomes,' ', �ltimosNomes) as 'Nome Completo' from Leitor

--1e
select Designa��o from Cole��es
except
select Designa��o
from Cole��es
join Livros on Cole��es.IDCole��o = Livros.IDCole��o
-- ou
select c.Designa��o from Livros l right join Cole��es c 
on c.IDCole��o = l.IDCole��o where l.IDCole��o is null


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
Matr�cula nchar(10) not null primary key,
Lota��o tinyint not null,
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
Matr�cula nchar (10) not null references Viaturas(Matr�cula),
DataIn�cio date not null,
DataFim date not null
)
go


--3
insert into Viaturas values ('86-IF-45', 2, 'Renault', 'Kangoo')
insert into Viaturas values ('62-ZF-35', 5, 'Mercedes', 'Classe A')
go

insert into Clientes values ('14568475', 'Jo�o Maria da Costa', 'Av. de Bel�m n.15, 7300-200 Portalegre', '245300400', 'joao.c@hotmail.com')
insert into Clientes values ('5678842', 'Alexandra Pereira da Silva', 'Rua da Liberdade N.5, 2100 Lisboa', '216525425', 'alex.silva@gmail.pt')
go

insert into Alugueres values ('14568475', '86-IF-45', '2020-10-12', '2020-10-13')
insert into Alugueres values ('5678842', '62-ZF-35', '2020-11-15', '2020-11-18')
insert into Alugueres values ('14568475', '62-ZF-35', '2020-11-19', '2021-05-17')
go


--4a
use aluguer_viaturas
go

if object_id(N'Manuten��es', 'U') is not null drop table Manuten��es
go
create table Manuten��es
(
IDManuten��o int primary key identity(1,1),
Matr�cula nchar (10) not null,
Data date not null,
Quilometragem int not null,
Descri��o nchar(200) not null
)
go

--4b
alter table Manuten��es add constraint manuten��es_ve�culos foreign key(Matr�cula) references Viaturas(Matr�cula)
go

--4c
insert into Manuten��es (Matr�cula,Data,Quilometragem,Descri��o) values ('86-IF-45', 01-01-2019, 40320, 'Trocar pneus')
insert into Manuten��es values ('86-IF-45', '2020-03-30', 61530, 'Mudan�a de �leo')
insert into Manuten��es values ('62-ZF-35', '2020-08-17', 17820, 'Repara��o do ar condicionado')
go

--5a
alter table Alugueres add constraint checkDataFim check (DataFim >= DataIn�cio)
go

--5b
update Alugueres set DataFim = '2021-11-17' where IDAluguer = 3
go

--6
if object_id(N'view_ViaturasDispon�veis', 'v') is not null drop view view_ViaturasDispon�veis
go

create view view_ViaturasDispon�veis as
(
select Viaturas.*
from Viaturas
join Alugueres on Viaturas.Matr�cula = Alugueres.Matr�cula
group by Viaturas.Lota��o, Viaturas.Marca, Viaturas.Matr�cula, Viaturas.Modelo
having max(DataFim) < GETDATE()
)
go
-- ou
create view view_ViaturasDispon�veis as
(
select Matr�cula, Lota��o, Marca, Modelo from Viaturas
except 
select Viaturas.Matr�cula, Lota��o, Marca, Modelo from Viaturas 
join Alugueres on Viaturas.Matr�cula = Alugueres.Matr�cula
where DataFim >= getdate()
)
go

select * from view_ViaturasDispon�veis



