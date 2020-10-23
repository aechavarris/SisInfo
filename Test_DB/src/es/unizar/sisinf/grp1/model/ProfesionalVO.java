package es.unizar.sisinf.grp1.model;

import java.util.Date;

/**
 * tabla users
 * @author sisinf
 *
 */
public class ProfesionalVO {
	private int dni;
	private String nombre;
	private String apellidos;
	private String password;
	private Date lastLogin;
	
	/**
	 * Constructor
	 * @param userName
	 * @param password
	 */
	public ProfesionalVO(int dni, String nombre, String apellidos, String pass) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.password = pass;
	}

	public int getDNI() {
		return dni;
	}

	public void setSS(int meinFuhrer) {
		this.ss = meinFuhrer;
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

	public int getPIN() {
		return pin;
	}

	public void setPIN(int clave) {
		this.pin = clave;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

}
