delete from usuarios where ss > 0;

delete from profesionales where dni != 'a';

delete from centro where cp != 0;

insert into usuarios (ss,nombre,apellidos,pin) values ('123456789','Pepe','Pancho','1234');
insert into usuarios (ss,nombre,apellidos,pin) values ('111111111','Carlos','Juarez','1234');
insert into usuarios (ss,nombre,apellidos,pin) values ('222222222','Roberto','Tijuan','1234');
insert into usuarios (ss,nombre,apellidos,pin) values ('333333333','Pablo','Escobar','1234');

insert into centro (nombre,cp,direccion) values ('Royo Villanova',12345,'Av. de San Gregorio, s/n');
insert into centro (nombre,cp,direccion) values ('Miguel Servet',11111,'Paseo Isabel la Católica, 1-3');
insert into centro (nombre,cp,direccion) values ('Hospital Militar',22222,'Calle Golpe de estado, 2');

insert into profesionales (dni,nombre,apellidos,"password",centro) values ('12345678A','Juan','Sanches','1234',8);
insert into profesionales (dni,nombre,apellidos,"password",centro) values ('11111111A','Joaquín ','Guzman','1234',9);
insert into profesionales (dni,nombre,apellidos,"password",centro) values ('22222222A','Amado ','Carrillo','1234',10);
insert into profesionales (dni,nombre,apellidos,"password",centro) values ('33333333A','Caro ','Quintero','1234',8);