package es.unizar.sisinf.grp1.model;

import java.util.Date;

/**
 * tabla pcrs
 * @author sisinf
 *
 */
public class PCRVO {
	private int idpcr;
	private int estado;
	private Date dia;
	private java.sql.Time hora;
	private int ss;
	private String profesional;
	private int centro;
	
	/**
	 * Constructor
	 * @param idpcr
	 * @param estado
	 * @param dia
	 * @param hora
	 * @param ss
	 * @param profesional
	 * @param centro
	 */
	public PCRVO(int idpcr, int estado, Date dia, java.sql.Time hora, int ss, String profesional, int centro) {
		this.idpcr = idpcr;
		this.estado = estado;
		this.dia = dia;
		this.hora = hora;
		this.ss = ss;
		this.profesional = profesional;
		this.centro = centro;
	}
	
	public int getIdPCR() {
		return this.idpcr;
	}
	
	public void setIdPCR(int idpcr) {
		this.idpcr = idpcr;
	}
	
	public int getEstado() {
		return this.estado;
	}
	
	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	public Date getDia() {
		return this.dia;
	}
	
	public void setDia(Date dia) {
		this.dia = dia;
	}
	
	public java.sql.Time getHora() {
		return this.hora;
	}
	
	public void setHora(java.sql.Time hora) {
		this.hora = hora;
	}
	
	public int getSS() {
		return this.ss;
	}
	
	public void setSS(int ss) {
		this.ss = ss;
	}
	
	public String getProfesional() {
		return this.profesional;
	}
	
	public void setProfesional(String profesional) {
		this.profesional = profesional;
	}
	
	public int getCentro() {
		return this.centro;
	}
	
	public void setCentro(int centro) {
		this.centro = centro;
	}
}
