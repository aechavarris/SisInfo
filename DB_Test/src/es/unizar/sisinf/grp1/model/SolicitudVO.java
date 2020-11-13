package es.unizar.sisinf.grp1.model;

import java.util.Date;

/**
 * tabla users
 * @author sisinf
 *
 */
public class SolicitudVO {
	private int idSolicitud;
	private int estado;
	private int ss;
	private String profesional;
	private int centro;
	private Date dia;
	private java.sql.Time hora;
	private String aceptado;
	private String rechazado;
	/**
	 * Constructor
	 * @param userName
	 * @param password
	 */
	public SolicitudVO(int idSolicitud, int estado, int ss, String profesional, int centro, Date dia, java.sql.Time hora) {
		this.idSolicitud = idSolicitud;
		this.estado = estado;
		this.ss = ss;
		this.profesional = profesional;
		this.centro = centro;
		this.dia = dia;
		this.hora = hora;
	}
	
	public SolicitudVO(int idSolicitud, int estado, int ss, String profesional, int centro, Date dia, java.sql.Time hora, String aceptado, String rechazado) {
		this.idSolicitud = idSolicitud;
		this.estado = estado;
		this.ss = ss;
		this.profesional = profesional;
		this.centro = centro;
		this.dia = dia;
		this.hora = hora;
		this.aceptado = aceptado;
		this.rechazado = rechazado;
	}
	
	public int getID() {
		return idSolicitud;
	}

	public void setID(int id) {
		this.idSolicitud = id;
	}
	
	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	public void setSS(int ss) {
		this.ss = ss;
	}

	public int getSS() {
		return ss;
	}

	public String getProfesional() {
		return profesional;
	}

	public void setProfesional(String profesional) {
		this.profesional = profesional;
	}

	public void setCentro(int ss) {
		this.ss = ss;
	}

	public int getCentro() {
		return centro;
	}
	
	public Date getDia() {
		return dia;
	}

	public void setDia(Date dia) {
		this.dia = dia;
	}

	public java.sql.Time getHora() {
		return hora;
	}

	public void setHora(java.sql.Time hora) {
		this.hora = hora;
	}
	
	public String getAceptado() {
		return aceptado;
	}

	public void setAceptado(String aceptado) {
		this.aceptado = aceptado;
	}
	
	public String getRechazado() {
		return rechazado;
	}

	public void setRechazado(String rechazado) {
		this.rechazado = rechazado;
	}
	
}
