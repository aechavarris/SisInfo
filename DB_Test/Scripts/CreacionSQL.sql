-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION postgres;

COMMENT ON SCHEMA public IS 'standard public schema';

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
	aceptado varchar NULL,
	rechazado varchar NULL,
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
