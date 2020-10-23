CREATE TABLE public.pcr (
	idPCR SERIAL NOT NULL,
	Estado INT NOT NULL,
	Dia DATE NOT NULL,
	Hora TIME(0) NOT NULL,
	ss INT NOT NULL,
	profesional VARCHAR NOT NULL,
	centro INT4 NOT NULL,
	PRIMARY KEY (idPCR),
	FOREIGN KEY (ss) REFERENCES public.usuario(ss),
	FOREIGN KEY (profesional) REFERENCES public.profesionales(dni),
	FOREIGN KEY (centro) REFERENCES public.centro(idCentro)
);