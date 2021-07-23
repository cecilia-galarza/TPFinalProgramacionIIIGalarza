select * from usuarios where IDTipo=4
select * from tipoUsuario
select * from Autenticaciones
select * from productos
select * from productosPorCliente
select * from serieProducto
select * from areas
select * from estadoTicket
select * from ticket
--Ejecutar lo siguiente:

--Insertar supervisor inicial
insert into usuarios (IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal)
values (2, 'Alberto', 'juarez', '19876543', 'pavon', '41326789', '11456789', 'supervisor@gmail.com','1345')

update usuarios set mail='tecnico@gmail.com' where IDUsuario=1
update usuarios set mail='cliente@gmail.com' where IDUsuario=2



--//Insertar productos//

Insert into productos(nombre, descripcion) values ('Comp 4NFCY ' , 'Aluminio Alta' )
Insert into productos(nombre, descripcion) values ('Comp 2KES-05Y' , 'Semihermetico 2 cilindros' )
Insert into productos(nombre, descripcion) values ('Comp 4H-15.2' , 'Semihermetico 4 cilindros Alta' )
Insert into productos(nombre, descripcion) values ('Comp 4HE 25Y' , 'Semihermetico 4 cilindros Baja' )
Insert into productos(nombre, descripcion) values ('Comp 4JE-15Y' , 'Semihermetico 4 cilindros Media' )
Insert into productos(nombre, descripcion) values ('Comp 4NFCY ' , 'Aluminio Alta' )
Insert into productos(nombre, descripcion) values ('Comp 6F-40.2' , 'Semihermetico 4 cilindros' )
Insert into productos(nombre, descripcion) values ('Comp 6F-40.2Y' , 'Semihermetico 6 cilindros Alta' )
Insert into productos(nombre, descripcion) values ('Comp 6F-50.2' , 'Semihermetico  cilindros Baja' )
Insert into productos(nombre, descripcion) values ('Comp 6G-40.2' , 'Semihermetico 6 cilindros Media' )
Insert into productos(nombre, descripcion) values ('Comp 6GE-40 Y' , 'hermetico 6 cilindros Alta' )
Insert into productos(nombre, descripcion) values ('Comp 6H-25.2' , 'hermetico 6 cilindros Baja' )
Insert into productos(nombre, descripcion) values ('Comp 6HE-28 Y' , 'hermetico 6 cilindros Media' )
Insert into productos(nombre, descripcion) values ('Comp CSH9563' , 'Tornillo Alta' )

--Insertar usuarios
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Roberto', 'Dasa', '99345123', 'Paso 2', '1234567', '1234567', 'dasa@gmail.com', 1648)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Rocio', 'Masa', '33567894', 'Garay 45', '5678903', '5678903', 'masa@gmail.com', 1970)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Claudia', 'Farias', '24567890', 'Jujuy 90', '6734562', '6734562', 'farias@gmail.com', 1764)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Axel', 'Pozo', '8765432', 'Goyena 23', '5678392', '1125678392', 'pozo@gmail.com', 2021)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Juan', 'Aranda', '6748738', 'Giribone 67', 'N/A', 'N/A', 'aranda@gmail.com', 2345)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Silvia', 'Salinas', '567842', 'Cespedes 786', 'N/A', '1145678932', 'salinas@gmail.com', 1008)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Jesus', 'Costa', '9076462', 'Echeverria', '5678943', 'N/A', 'costa@gmail.com', 2010)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Javier', 'Silva', '336743', 'Juramento 210', 'N/A', '1145236754', 'silva@gmail.com', 1000)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Anabela', 'Gallo', '9439282', 'Ciudad 98', 'N/A', 'N/A', 'gallo@gmail.com', 1456)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (4 , 'Lionel', 'Messi', '34567892', 'Cuba 56', '47324567', 'N/A', 'messi@gmail.com', 2028)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (2 , 'Marcelo ', 'Gallardo', '87642788', 'Rio 456', '47316789', '1156783421', 'gallardo@gmail.com', 2999)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (2 , 'Hector', 'Paredes', '7896543', 'Salta 12', 'N/A', '115678943', 'paredes@gmail.com', 2000)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (2 , 'Pedro', 'Cejas', '89067543', 'Gorriti 23', '456722341', 'N/A', 'cejas@gmail.com', 1034)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (2 , 'Abel', 'Pintos', '33215678', 'Bermejo 78', '41396754', '1143347890', 'pintos@gmail.com', 1648)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (2 , 'Bernardo', 'Barros', '10515234', 'Mar 467', '476722341', 'N/A', 'barros@gmail.com', 1646)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (3 , 'Peter', 'Pan', '20567892', 'Barros 876', 'N/A', '114798456', 'pan@gmail.com', 1784)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (3 , 'Mac ', 'Gyver', '21456789', 'Callao 12', 'N/A', '112345987', 'gyver@gmail.com', 1238)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (3 , 'Horacio', 'Rega', '22345876', 'Alberdi 1', '41387945', '115234896', 'rega@gmail.com', 1749)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (3 , 'Adrian', 'Santos', '10456897', 'Vila 89', '47923563', 'N/A', 'santos@gmail.com', 1414)
Insert into usuarios(IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal) values (3 , 'Julio ', 'Iglesias', '11452398', 'Salta 45', 'N/A', '1129873421', 'iglesias@gmail.com', 2023)

--insertar Area
insert into areas (nombre, descripcion) values ('Service','Mantenimiento')

--insertar usuarios por area
insert into usuariosporarea (Idusuario, IDArea) values (19,1)
insert into usuariosporarea (Idusuario, IDArea) values (20,2)
insert into usuariosporarea (Idusuario, IDArea) values (21,1)
insert into usuariosporarea (Idusuario, IDArea) values (22,2)
insert into usuariosporarea (Idusuario, IDArea) values (23,1)

--inserar producto por cliente
insert into productosPorCliente (Idproducto, IDcliente) values (1,2)
insert into productosPorCliente (Idproducto, IDcliente) values (2,4)
insert into productosPorCliente (Idproducto, IDcliente) values (3,5)
insert into productosPorCliente (Idproducto, IDcliente) values (4,5)
insert into productosPorCliente (Idproducto, IDcliente) values (5,7)
insert into productosPorCliente (Idproducto, IDcliente) values (6,8)
insert into productosPorCliente (Idproducto, IDcliente) values (7,9)

--Insertar columna en tabla Serie producto
Alter table serieproducto
add IDUsuario bigint FOREIGN KEY references Usuarios(IDUsuario) null

--Insertar columna en tabla ticket
Alter table ticket
add nroserie bigint FOREIGN KEY references serieproducto(nroserie) null


--insertar tabla serieproductos
Insert into serieproducto(idproducto, idusuario) values (1 ,2)
Insert into serieproducto(idproducto, idusuario) values (1 ,2)
Insert into serieproducto(idproducto, idusuario) values (2 ,4)
Insert into serieproducto(idproducto, idusuario) values (3 ,5)
Insert into serieproducto(idproducto, idusuario) values (4 ,5)
Insert into serieproducto(idproducto, idusuario) values (5 ,7)
Insert into serieproducto(idproducto, idusuario) values (6 ,8)
Insert into serieproducto(idproducto, idusuario) values (7 ,9)
Insert into serieproducto(idproducto, idusuario) values (8 ,6)
Insert into serieproducto(idproducto, idusuario) values (9 ,7)
Insert into serieproducto(idproducto, idusuario) values (10 ,8)
Insert into serieproducto(idproducto, idusuario) values (11 ,9)
Insert into serieproducto(idproducto, idusuario) values (12 ,10)
Insert into serieproducto(idproducto, idusuario) values (13 ,11)
Insert into serieproducto(idproducto, idusuario) values (14 ,12)
Insert into serieproducto(idproducto, idusuario) values (15 ,13)
update serieproducto set idusuario=12 where NROSerie=1000
update serieproducto set idusuario=11 where NROSerie=1001

--Alterar tabla ticket IDTECNICO A NULL Y AREA DE 
Alter table ticket
alter column IDTecnico BIGINT null

Alter table ticket
add  IDArea int  foreign key references AREAS(IDAREA) NULL

--Insertar ticket
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie) values (NULL,12,1,1,'rotura cigüeñal',NULL,NULL,'2021-07-02',NULL,1000)
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie,idarea) values (NULL,5,3,1,'mantenimiento 1',NULL,NULL,'2021-07-03',NULL,1005,2)
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie,idarea) values (NULL,4,2,1,'rotura',NULL,NULL,'2021-07-05',NULL,1004,1)
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie,idarea) values (NULL,7,5,5,'mantenimiento 1',NULL,NULL,'2021-06-01','2021-06-30',1007,2)
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie,idarea) values (NULL,9,7,1,'rotura',NULL,NULL,'2021-07-01',NULL,1009,1)
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie,idarea) values (NULL,6,8,5,'mantenimiento 1',NULL,NULL,'2021-05-01','2021-06-01',1010,2)
insert into ticket (idtecnico, Idcliente, idproducto, idestado, Problema, Diagnostico, Solucion, Fechaingreso,FechaEgreso, nroserie,idarea) values (NULL,13,15,1,'rotura',NULL,NULL,'2021-07-03',NULL,1017,1)
update ticket set problema ='rotura cigüeñal'where IDTicket=1





