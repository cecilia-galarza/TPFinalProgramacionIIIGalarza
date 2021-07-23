create database DB_TPC
 
GO

use DB_TPC

GO
create table Servicios(
    IDServicio int PRIMARY KEY IDENTITY (1,1),
    Nombre varchar(30) not null
)

GO
create table Productos
(
    IDProducto bigint PRIMARY KEY IDENTITY(1,1),
    nombre varchar(15) not null,
    descripcion varchar(100) not null
)

GO
create table TipoUsuario
(
    IDTipo int PRIMARY KEY IDENTITY(1,1),
    Descripcion varchar(30) not null
)

GO
create table Usuarios
(
    IDUsuario bigint PRIMARY KEY identity(1,1),
    IDTipo int FOREIGN key REFERENCES tipoUsuario(IDTipo) not null,
    nombre varchar(30) not null,
    apellido varchar(30) not null,
    DNI varchar (10) not null unique,
	domicilio varchar(50) null default('N/A'),
	telefono varchar(50) null default('N/A'),
	celular varchar(50) null default('N/A'),
	mail varchar(50) not null unique,
	codigoPostal smallint null DEFAULT(0),
	estado bit not null default(1)
)

GO
create table SerieProducto
(
	NROSerie bigint primary key identity(1000,1),
	IDProducto bigint foreign key references productos(IDproducto),
	IDUsuario bigint FOREIGN KEY references Usuarios(IDUsuario) null
)

GO
CREATE TABLE Autenticaciones
(
    IDUsuario bigint FOREIGN KEY references Usuarios(IDUsuario)not null,
    Contrasenia varchar(100) not null,
	Primary key(IDUsuario)
)

GO
create table EstadoTicket(
	IDEstado int primary key IDENTITY(1,1),
	nombre varchar(50) not null
)

GO
create table Ticket(
	IDTicket int PRIMARY KEY identity(1,1),
    IDTecnico bigint FOREIGN KEY REFERENCES Usuarios(IDUsuario) null,
	IDCliente bigint FOREIGN key references usuarios(IDUsuario) not null,
	IDProducto bigint FOREIGN KEY REFERENCES Productos(IDProducto) not null,
	IDEstado int FOREIGN KEY REFERENCES estadoTicket(IDEstado) not null default(1),
    Problema varchar(300) null,
	Diagnostico varchar(300) null,
	Solucion varchar(300) null,
    FechaIngreso date not null,
    FechaEgreso date null,
	nroserie bigint FOREIGN KEY references serieproducto(nroserie) null,
	IDServicio int  FOREIGN KEY references Servicios(IDServicio) NULL
)

GO
create table ProductosPorCliente(
	IDProducto bigint not null foreign key references productos(IDProducto),
	IDCliente bigint not null foreign key references usuarios(IDUsuario),
	primary key(IDProducto, IDCliente)
)

GO
create table UsuariosPorArea
(
	IDUsuario bigint foreign key references usuarios(IDUsuario) NOT NULL,
	IDServicio int  FOREIGN KEY references Servicios(IDServicio) NOT NULL
	primary key(IDUsuario, IDServicio)	
)


