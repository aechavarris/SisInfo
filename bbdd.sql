-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION postgres;

-- DROP TYPE _centro;

CREATE TYPE _centro (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = centro,
	DELIMITER = ',');

-- DROP TYPE _formulario;

CREATE TYPE _formulario (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = formulario,
	DELIMITER = ',');

-- DROP TYPE _pcr;

CREATE TYPE _pcr (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = pcr,
	DELIMITER = ',');

-- DROP TYPE _profesionales;

CREATE TYPE _profesionales (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = profesionales,
	DELIMITER = ',');

-- DROP TYPE _solicitud;

CREATE TYPE _solicitud (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = solicitud,
	DELIMITER = ',');

-- DROP TYPE _usuarios;

CREATE TYPE _usuarios (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = usuarios,
	DELIMITER = ',');

-- DROP SEQUENCE public.centro_idcentro_seq;

CREATE SEQUENCE public.centro_idcentro_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.pcr_idpcr_seq;

CREATE SEQUENCE public.pcr_idpcr_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.solicitud_idsolicitud_seq;

CREATE SEQUENCE public.solicitud_idsolicitud_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- public.centro definition

-- Drop table

-- DROP TABLE public.centro;

CREATE TABLE public.centro (
	idcentro serial NOT NULL,
	nombre varchar NOT NULL,
	cp int4 NOT NULL,
	direccion varchar NOT NULL,
	CONSTRAINT centro_pk PRIMARY KEY (idcentro),
	CONSTRAINT centro_un UNIQUE (nombre)
);


-- public.usuarios definition

-- Drop table

-- DROP TABLE public.usuarios;

CREATE TABLE public.usuarios (
	ss int4 NOT NULL,
	nombre varchar NOT NULL,
	apellidos varchar NOT NULL,
	pin int4 NOT NULL,
	last_login date NULL,
	CONSTRAINT usuario_pk PRIMARY KEY (ss)
);


-- public.profesionales definition

-- Drop table

-- DROP TABLE public.profesionales;

CREATE TABLE public.profesionales (
	dni varchar(9) NOT NULL,
	nombre varchar NOT NULL,
	apellidos varchar NOT NULL,
	"password" varchar NOT NULL,
	centro int4 NOT NULL,
	CONSTRAINT profesional_pk PRIMARY KEY (dni),
	CONSTRAINT profesionales_fk FOREIGN KEY (centro) REFERENCES centro(idcentro)
);


-- public.solicitud definition

-- Drop table

-- DROP TABLE public.solicitud;

CREATE TABLE public.solicitud (
	idsolicitud serial NOT NULL,
	estado int4 NOT NULL,
	dia date NOT NULL,
	hora time NOT NULL,
	ss int4 NOT NULL,
	profesional varchar(9) NULL,
	centro int4 NOT NULL,
	CONSTRAINT solicitud_pk PRIMARY KEY (idsolicitud),
	CONSTRAINT solicitud_fk FOREIGN KEY (ss) REFERENCES usuarios(ss),
	CONSTRAINT solicitud_fk_1 FOREIGN KEY (profesional) REFERENCES profesionales(dni),
	CONSTRAINT solicitud_fk_2 FOREIGN KEY (centro) REFERENCES centro(idcentro)
);


-- public.formulario definition

-- Drop table

-- DROP TABLE public.formulario;

CREATE TABLE public.formulario (
	idsolicitud int4 NOT NULL,
	fiebre bool NOT NULL,
	tos_seca bool NOT NULL,
	cansancio bool NOT NULL,
	molestias bool NOT NULL,
	dolor_garganta bool NOT NULL,
	diarrea bool NOT NULL,
	conjuntivitis bool NOT NULL,
	dolor_cabeza bool NOT NULL,
	olfato_gusto bool NOT NULL,
	piel_mal bool NOT NULL,
	dif_respirar bool NOT NULL,
	dolor_pecho bool NOT NULL,
	habla_movilidad bool NOT NULL,
	contacto_positivo bool NOT NULL,
	comentario varchar NULL,
	CONSTRAINT formulario_pkey PRIMARY KEY (idsolicitud),
	CONSTRAINT formulario_idsolicitud_fkey FOREIGN KEY (idsolicitud) REFERENCES solicitud(idsolicitud)
);


-- public.pcr definition

-- Drop table

-- DROP TABLE public.pcr;

CREATE TABLE public.pcr (
	idpcr serial NOT NULL,
	estado int4 NOT NULL,
	dia date NOT NULL,
	hora time NOT NULL,
	ss int4 NOT NULL,
	profesional varchar(9) NULL,
	centro int4 NOT NULL,
	CONSTRAINT pcr_pkey PRIMARY KEY (idpcr),
	CONSTRAINT pcr_centro_fkey FOREIGN KEY (centro) REFERENCES centro(idcentro),
	CONSTRAINT pcr_fk FOREIGN KEY (ss) REFERENCES usuarios(ss),
	CONSTRAINT pcr_profesional_fkey FOREIGN KEY (profesional) REFERENCES profesionales(dni)
);

-- POBLACION

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

INSERT INTO public.solicitud (estado,dia,hora,ss,profesional,centro) VALUES ('1',TO_DATE('17/12/2015', 'DD/MM/YYYY'),'12:00','123456789','12345678A','8');
INSERT INTO public.solicitud (estado,dia,hora,ss,profesional,centro) VALUES ('2',TO_DATE('17/12/2015', 'DD/MM/YYYY'),'12:30','123456789','12345678A','8');