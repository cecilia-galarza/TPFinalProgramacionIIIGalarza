GO
CREATE DATABASE DB_TPC

GO
USE DB_TPC

GO
CREATE TABLE TiposUsuario
(
    IDtipo int PRIMARY KEY identity (1,1) not null,
    nombre varchar(10) not null,
   )

GO
CREATE TABLE Usuarios
(
    IDUsuario int PRIMARY KEY,
    Nombre varchar(100) not null,
	IDtipoUsuario int FOREIGN key REFERENCES TiposUsuario(IDtipo) not null,
  	Estado bit not null,
	Telefono varchar(15) null,
    Celular varchar(15) null,
    Email varchar(50) unique not null
)

CREATE TABLE Autenticaciones
(
    IDUsuario int  FOREIGN KEY references Usuarios(IDUsuario)not null,
    Contrasenia varchar(100) not null,
	Primary key(IDUsuario)
)

GO

CREATE TABLE Productos
(
    IDProducto int PRIMARY KEY not null,
    Nombre varchar(15) not null,
    NumeroSerie varchar(15) not null,
    Descripcion varchar(100) not null,
	IDCliente int FOREIGN KEY references usuarios(IDusuario)not null
)
GO
CREATE TABLE EstadosTickets
(
IDEstado int PRIMARY KEY identity(1,1)not null,
Nombre varchar(50) not null

)
GO

CREATE TABLE TicketsEncabezado (
    IDTicket int PRIMARY KEY identity(1,1)not null,
    IDTecnico int FOREIGN KEY REFERENCES Usuarios(IDUsuario)not null,
	IDCliente int FOREIGN KEY REFERENCES Usuarios(IDUsuario)not null,
	IDProducto int FOREIGN KEY REFERENCES Productos(IDProducto) not null,
	IDEstado int FOREIGN KEY REFERENCES EstadosTickets(IDEstado) not null,
    Problema varchar(300) null,
	Diagnostico varchar(300) null,
	Solucion varchar(300) null,
    Estado char not null,
    FechaIngreso date not null,
    FechaEgreso date null
)
GO

CREATE TABLE TicketsDetalle(
IDTicket int FOREIGN KEY REFERENCES TicketsEncabezado(IDTicket)not null,
IDTecnico int not null,
Tarea varchar(100) not null,
Tiempo int not null,
Fecha date not null
)