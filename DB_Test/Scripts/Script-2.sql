delete from usuarios where ss > 0;

delete from profesionales where dni != 'a';

delete from centro where cp != 0;

insert into usuarios (ss,nombre,apellidos,pin) values ('123456789','Pepe','Pancho','1234');
insert into usuarios (ss,nombre,apellidos,pin) values ('111111111','Carlos','Juarez','1234');
insert into usuarios (ss,nombre,apellidos,pin) values ('222222222','Roberto','Tijuan','1234');
insert into usuarios (ss,nombre,apellidos,pin) values ('333333333','Pablo','Escobar','1234');

insert into centro (nombre,cp,direccion) values ('Cali',12345,'Calle Cartel de Cali, 23A');
insert into centro (nombre,cp,direccion) values ('Sinaloa',11111,'Calle Cartel del Pacifico, SN');
insert into centro (nombre,cp,direccion) values ('Medellín',22222,'Calle Cartel de Medellin, 71');

insert into profesionales (dni,nombre,apellidos,"password",centro) values ('12345678A','Juan','Sanches','1234',8);
insert into profesionales (dni,nombre,apellidos,"password",centro) values ('11111111A','Joaquín ','Guzman','1234',9);
insert into profesionales (dni,nombre,apellidos,"password",centro) values ('22222222A','Amado ','Carrillo','1234',10);
insert into profesionales (dni,nombre,apellidos,"password",centro) values ('33333333A','Caro ','Quintero','1234',8);