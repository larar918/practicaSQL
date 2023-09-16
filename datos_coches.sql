-- Creamos el schema

create schema practica;

-- Creamos las tablas

create table practica.grupo(
	id serial primary key,
	nombre varchar(30)
);

create table practica.marca(
	id serial primary key,
	nombre varchar(25),
	id_grupo int,
	constraint fk_idgrupo foreign key (id_grupo) references practica.grupo(id)
);

create table practica.modelo(
	id serial primary key,
	nombre varchar(25),
	id_marca int,
	constraint fk_idmarca foreign key (id_marca) references practica.marca(id)
);

create table practica.aseguradora(
	id serial primary key,
	nombre varchar(25)
);

create table practica.vehiculo(
	id serial primary key,
	matricula varchar(10),
	id_modelo int,
	color varchar(10),
	kilometros int,
	fec_compra date,
	id_aseguradora int,
	num_poliza int,
	constraint fk_idaseguradora foreign key (id_aseguradora) references practica.aseguradora(id),
	constraint fk_idmodelo foreign key (id_modelo) references practica.modelo(id)
);

create table practica.revision(
	id serial primary key,
	id_vehiculo int,
	kilometros int,
	fecha date,
	importe float,
	moneda varchar(10),
	constraint fk_idvehiculo foreign key (id_vehiculo) references practica.vehiculo(id)	
);


-- Insertamos los datos

-- Grupos

insert into practica.grupo (nombre) values ('Grupo Volksvagen');
insert into practica.grupo (nombre) values ('Toyota Motor Corporation');
insert into practica.grupo (nombre) values ('Hyundai Motor Company');	
insert into practica.grupo (nombre) values ('Ford');		
insert into practica.grupo (nombre) values ('Honda');

-- Marcas	

insert into practica.marca (nombre,id_grupo) values ('Audi',1);
insert into practica.marca (nombre,id_grupo) values ('Seat',1);
insert into practica.marca (nombre,id_grupo) values ('Skoda',1);
insert into practica.marca (nombre,id_grupo) values ('Lexus',2);
insert into practica.marca (nombre,id_grupo) values ('Toyota',2);
insert into practica.marca (nombre,id_grupo) values ('Hyundai',3);
insert into practica.marca (nombre,id_grupo) values ('Kia',3);
insert into practica.marca (nombre,id_grupo) values ('Ford',4);
insert into practica.marca (nombre,id_grupo) values ('Honda',5);


-- Modelos

insert into practica.modelo (nombre,id_marca) values ('A1',1);
insert into practica.modelo (nombre,id_marca) values ('A4',1);
insert into practica.modelo (nombre,id_marca) values ('Ibiza',2);
insert into practica.modelo (nombre,id_marca) values ('Leon',2);
insert into practica.modelo (nombre,id_marca) values ('Octavia',3);
insert into practica.modelo (nombre,id_marca) values ('Fabia',3);
insert into practica.modelo (nombre,id_marca) values ('UX',4);
insert into practica.modelo (nombre,id_marca) values ('RZ',4);
insert into practica.modelo (nombre,id_marca) values ('Corolla',5);
insert into practica.modelo (nombre,id_marca) values ('Yaris',5);
insert into practica.modelo (nombre,id_marca) values ('i10',6);
insert into practica.modelo (nombre,id_marca) values ('i20',6);
insert into practica.modelo (nombre,id_marca) values ('Rio',7);
insert into practica.modelo (nombre,id_marca) values ('Picanto',7);
insert into practica.modelo (nombre,id_marca) values ('Focus',8);
insert into practica.modelo (nombre,id_marca) values ('Fiesta',8);
insert into practica.modelo (nombre,id_marca) values ('Civic',9);
insert into practica.modelo (nombre,id_marca) values ('Jazz',9);

-- Compañias aseguradoras

insert into practica.aseguradora (nombre) values ('Mutua Madrileña');
insert into practica.aseguradora (nombre) values ('Mapfre');
insert into practica.aseguradora (nombre) values ('Allianz');
insert into practica.aseguradora (nombre) values ('AXA');
insert into practica.aseguradora (nombre) values ('Direct Seguros');

-- Vehiculos

insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('6193HQL',33132,'Blanco',14,1,316560,TO_DATE('2007-06-01','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('5553PWT',24111,'Negro',7,2,486221,TO_DATE('2022-07-08','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('6840QDC',46079,'Gris',13,3,506056,TO_DATE('2003-09-16','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7067PMS',71490,'Verde',4,4,285686,TO_DATE('2022-08-12','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7922ZVZ',40848,'Negro',10,5,898841,TO_DATE('2013-07-23','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('8501LDK',129042,'Rojo',8,1,406436,TO_DATE('2011-06-08','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('5164JXW',135167,'Azul',10,2,840402,TO_DATE('2004-02-12','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('4659RKS',148994,'Blanco',3,3,972444,TO_DATE('2021-05-01','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('0141HDM',25426,'Gris',2,4,523325,TO_DATE('2004-09-10','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7503DWC',71791,'Negro',14,5,285034,TO_DATE('2000-09-07','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('8604ZGZ',120079,'Azul',4,1,643693,TO_DATE('2020-04-05','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('0454PMS',94078,'Blanco',13,2,223055,'2008/06/05');
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7286VFW',90345,'Rojo',6,3,444626,TO_DATE('2019-02-11','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('2313RKM',63689,'Azul',15,4,380320,TO_DATE('2007-09-09','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('3193JBF',75801,'Gris',18,5,630056,TO_DATE('2003-05-20','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('3038ZNB',58453,'Azul',17,1,407344,TO_DATE('2017-01-19','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('0046KGN',113826,'Rojo',8,2,683672,TO_DATE('2011-02-03','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('0502NPF',111132,'Blanco',11,3,973233,TO_DATE('2018-04-25','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('1256DPZ',21507,'Blanco',1,4,612699,TO_DATE('2019-12-10','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('5644VLW',44060,'Azul',15,5,958241,TO_DATE('2006-02-11','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7358WYM',48507,'Amarillo',12,1,562813,TO_DATE('2004-03-07','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('6361YCY',125662,'Verde',6,2,528678,TO_DATE('2004-09-05','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('2294RLK',137932,'Negro',17,3,761339,TO_DATE('2005-09-19','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('5018ZRW',96723,'Amarillo',10,4,395671,TO_DATE('2014-05-17','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('2199QGF',63216,'Blanco',13,5,993081,TO_DATE('2004-03-08','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('5638FHB',37193,'Verde',11,1,104289,TO_DATE('2007-01-13','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('6137DPN',23468,'Gris',7,2,463804,TO_DATE('2023-08-15','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('6151XFB',46039,'Blanco',14,3,744284,TO_DATE('2001-06-27','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('3641QPY',164197,'Rojo',4,4,893085,TO_DATE('2006-10-29','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7676GLW',93945,'Azul',5,5,198571,TO_DATE('2012-12-26','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('1931BNZ',68735,'Amarillo',8,1,229320,TO_DATE('2008-07-07','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7395QKP',102530,'Rojo',8,2,739076,TO_DATE('2003-03-01','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7336QPQ',124362,'Blanco',18,3,324712,TO_DATE('2011-08-10','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('8443PMT',20852,'Rojo',11,4,352397,TO_DATE('2003-04-18','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('3687XZQ',25460,'Negro',14,5,821266,TO_DATE('2022-04-15','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('4609KCG',156919,'Azul',4,1,637469,TO_DATE('2017-05-20','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7663NWD',61523,'Amarillo',7,2,151249,TO_DATE('2006-09-12','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('3866VRQ',54721,'Verde',13,4,500113,TO_DATE('2012-02-01','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('7759TQN',151136,'Blanco',6,5,508997,TO_DATE('2015-08-17','YYYY-MM-DD'));
insert into practica.vehiculo (matricula,kilometros,color,id_modelo,id_aseguradora,num_poliza,fec_compra) values ('1667TRS',29986,'Rojo',1,3,782099,TO_DATE('2019-11-07','YYYY-MM-DD'));

-- revisiones

insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (2,86783,TO_DATE('2023-02-18','YYYY-MM-DD'),235,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (3,64157,TO_DATE('2012-06-25','YYYY-MM-DD'),325,'dolar');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (1,68805,TO_DATE('2008-11-14','YYYY-MM-DD'),154,'dolar');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (4,64807,TO_DATE('2023-08-08','YYYY-MM-DD'),412,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (7,73686,TO_DATE('2017-05-03','YYYY-MM-DD'),250,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (9,88794,TO_DATE('2004-10-25','YYYY-MM-DD'),314,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (13,77052,TO_DATE('2020-02-05','YYYY-MM-DD'),321,'libra');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (15,99085,TO_DATE('2008-05-07','YYYY-MM-DD'),245,'libra');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (36,96465,TO_DATE('2019-03-08','YYYY-MM-DD'),325,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (20,71564,TO_DATE('2007-03-08','YYYY-MM-DD'),210,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (29,75334,TO_DATE('2008-03-08','YYYY-MM-DD'),175,'libra');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (33,68982,TO_DATE('2014-03-08','YYYY-MM-DD'),225,'dolar');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (39,60841,TO_DATE('2016-03-08','YYYY-MM-DD'),130,'libra');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (23,59227,TO_DATE('2007-03-08','YYYY-MM-DD'),235,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (18,93210,TO_DATE('2021-03-08','YYYY-MM-DD'),260,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (17,91524,TO_DATE('2023-03-08','YYYY-MM-DD'),90,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (5,83566,TO_DATE('2014-03-08','YYYY-MM-DD'),125,'libra');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (33,66050,TO_DATE('2015-03-08','YYYY-MM-DD'),90,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (26,92393,TO_DATE('2009-03-08','YYYY-MM-DD'),350,'euro');
insert into practica.revision (id_vehiculo,kilometros,fecha,importe,moneda) values (22,75707,TO_DATE('2005-03-08','YYYY-MM-DD'),150,'euro');

-- Select

select practica.modelo.nombre "Modelo",practica.marca.nombre "Marca",practica.grupo.nombre "Grupo",practica.vehiculo.fec_compra "Fecha compra",practica.vehiculo.matricula "Matrícula",
practica.vehiculo.color "Color", practica.vehiculo.kilometros "Kilómetros totales",practica.aseguradora.nombre "Aseguradora",practica.vehiculo.num_poliza "Número póliza"
from practica.vehiculo
inner join practica.modelo on practica.modelo.id = practica.vehiculo.id_modelo
inner join practica.aseguradora on practica.aseguradora.id = practica.vehiculo.id_aseguradora
inner join practica.marca on practica.modelo.id_marca = practica.marca.id
inner join practica.grupo on practica.marca.id_grupo = practica.grupo.id




