use DB_TPC

GO

alter table productos drop column numeroSerie
create table servicios
(
    IDServicio int PRIMARY KEY IDENTITY (1,1),
    Nombre varchar(30) not null
)
alter table ticket add IDservicio int not null FOREIGN key REFERENCES servicios(IDServicio) default(1)

--Moficicacion en la tabla de tickets para que un tecnico pueda tener valor null

alter table ticket alter COLUMN IDTecnico bigint null