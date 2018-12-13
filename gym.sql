drop database if exists gym;

create database gym; 

use gym;


-- ----------------------------------------------------------------

create table perfiles(
 idperfil int not null primary key,
 descripcion varchar(20)
);

insert into perfiles values(1,'ADMINISTRADOR');
insert into perfiles values(2,'CLIENTE');
insert into perfiles values(3,'ENTRENADOR');
-- ----------------------------------------------------------------

 

create table usuarios(
 idusuario int auto_increment primary key,
 email varchar(35) unique,
 clave varchar(16),
 nombre varchar(35),
 apellido varchar(35),
 idperfil int not null,
 constraint fk_usuarios_perfiles foreign key (idperfil) references perfiles(idperfil) 
 on update cascade on delete restrict 
);
-- -----------------------------------------------------------------
insert into usuarios(email,clave,nombre,apellido,idperfil) values('leoAdmin@gmail.com','12345','LEO','L',1);
insert into usuarios(email,clave,nombre,apellido,idperfil) values('leoEntrenador@gmail.com','12345','Entrnador','Entrena',3);


 
 
 