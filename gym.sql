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
create table estados(
 idestado int not null primary key,
 descripcion varchar(20)
);

insert into estados values(1,'ACTIVO');
insert into estados values(2,'INACTIVO');
insert into estados values(3,'REGISTRADO');
insert into estados values(4,'PENDIENTE');
insert into estados values(5,'EN MORA');
insert into estados values(6,'PAGADO');
insert into estados values(7,'VENCIDO');
-- ----------------------------------------------------------------

 

create table usuarios(
 idusuario int auto_increment primary key,
 email varchar(35) unique not null,
 clave varchar(16),
 nombre1 varchar(35) not null,
 nombre2 varchar(35) not null,
 apellido1 varchar(35) not null,
 apellido2 varchar(35)not null ,
 direccion varchar(35) not null,
 telefono varchar(35),
 idperfil int not null not null,
 idestado int default 3 not null,
 constraint fk_usuarios_perfiles foreign key (idperfil) references perfiles(idperfil) 
 on update cascade on delete restrict ,
  constraint fk_usuarios_estados foreign key (idestado) references estados(idestado) 
 on update cascade on delete restrict 
);
-- -----------------------------------------------------------------
-- -----------------------------------------------------------------
insert into usuarios values(0,'root','root','Sin','Entranador','','','Dir','Tel',3,1);
insert into usuarios values(default,'leoAdmin@gmail.com','12345','LEO','Admin','L','L','Dir','Tel',1,1);
insert into usuarios values(default,'leoCliente@gmail.com','12345','LEO','Cliente','L','L','Dir','Tel',2,1);
insert into usuarios values(default,'leoEntrenador@gmail.com','12345','LEO','Entrenador','L','L','Dir','Tel',3,1);

select * from usuarios;

create table periodos(
 idperiodo int not null primary key,
 descripcion varchar(20) not null,
 precio float not null
);

-- ---------------------------------------------
insert into periodos values(1,'DIARIO',1.5);
insert into periodos values(2,'SEMANAL',5.00);
insert into periodos values(3,'MENSUAL',15.00);

-- -------------------------------------------------

create table rutinas(
 idrutina int not null primary key,
 descripcion varchar(50),
 adicional float not null
); 

insert into rutinas values(1,'EJERCICIO DE FUERZA',0);
insert into rutinas values(2,'BAJAR DE PESO',20);
insert into rutinas values(3,'AUMENTAR  MASA MUSCULAR',30);

-- -------------------------------------------------------------

create table entrenamiento(
 identrenamiento int not null primary key auto_increment,
 idrutina int not null,
 identrenador int not null default 0,
 idcliente int not null,
 precio float not null,
 idestado int not null default 4,
 saldo float not null default 0,
 abono float not null default 0,
 idperiodo int not null,
 fechainicio date,
 fechafin date,
 constraint fk_entrenamiento_estados foreign key (idestado) references estados(idestado) 
 on update cascade on delete restrict, 
 constraint fk_entrenamiento_periodo foreign key (idperiodo) references periodos(idperiodo) 
 on update cascade on delete restrict 
);
 

 