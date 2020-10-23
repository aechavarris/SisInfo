package es.unizar.sisinf.grp1.model;

import java.util.Date;

/**
 * tabla users
 * @author sisinf
 *
 */
public class UsuarioVO {
	private int ss;
	private String nombre;
	private String apellidos;
	private int pin;
	private Date lastLogin;
	
	/**
	 * Constructor
	 * @param userName
	 * @param password
	 */
	public UsuarioVO(int ss, String nombre, String apellidos, int pin) {
		this.ss = ss;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.pin = pin;
	}

	public int getSS() {
		return ss;
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
