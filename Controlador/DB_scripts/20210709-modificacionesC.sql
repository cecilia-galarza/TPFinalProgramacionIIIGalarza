use DB_TPC
select * from usuarios
select * from tipoUsuario
select * from Autenticaciones
insert into usuarios (IDTipo, nombre, apellido, DNI, domicilio, telefono, celular, mail, codigoPostal)
values (2, 'Alberto', 'juarez', '19876543', 'pavon', '41326789', '11456789', 'supervisor@gmail.com','1345')

update usuarios set mail='tecnico@gmail.com' where IDUsuario=1
update usuarios set mail='cliente@gmail.com' where IDUsuario=2

insert into Autenticaciones (IDUsuario, Contrasenia) values (1,'tecnico')
insert into Autenticaciones (IDUsuario, Contrasenia) values (2,'cliente')
insert into Autenticaciones (IDUsuario, Contrasenia) values (3,'supervisor')

select * from productos

SELECT U.IDUsuario, U.IDTipo, U.nombre, U.apellido FROM Autenticaciones AS A INNER JOIN usuarios AS U ON A.IDUsuario = U.IDUsuario WHERE U.mail = 'cliente@gmail.com' AND A.Contrasenia = 'cliente'

EXEC PR_Autenticacion 'cliente@gmail.com', 'cli'

SELECT * FROM USUARIOS WHERE IDUsuario = 1

Alter table usuario
	ALTER COLUMN mail varchar(50) not null unique,
	ADD Estado bit default (1)


--//Insertar productos//


--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
--Insert into productos(nombre,numeroSerie,descripcion) values('hearth attack','111111','La mano de killer queen')
