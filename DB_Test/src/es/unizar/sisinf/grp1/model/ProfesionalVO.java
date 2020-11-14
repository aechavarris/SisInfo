package es.unizar.sisinf.grp1.model;

import java.util.Date;

/**
 * tabla users
 * @author sisinf
 *
 */
public class ProfesionalVO {
	private String dni;
	private String nombre;
	private String apellidos;
	private String password;
	private Date lastLogin;
	private int centro;
	
	/**
	 * Constructor
	 * @param userName
	 * @param password
	 */
	public ProfesionalVO(String dni, String nombre, String apellidos, String pass, int idcentro) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.password = pass;
		this.centro = idcentro;
	}

	public String getDNI() {
		return dni;
	}

	public void setDNI(String dni) {
		this.dni = dni;
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String userName) {
		this.nombre = userName;
	}
	
	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String userApellidos) {
		this.apellidos = userApellidos;
	}

	public String getPass() {
		return password;
	}

	public void setPass(String pass) {
		this.password = pass;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	
	public int getCentro() {
		return centro;
	}

	public void setCentro(int centro) {
		this.centro = centro;
	}

}
