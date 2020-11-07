package es.unizar.sisinf.grp1.model;

import java.util.Date;

/**
 * tabla users
 * @author sisinf
 *
 */
public class CentroVO {
	private int idCentro;
	private String nombre;
	private int cp;
	private String direccion;
	
	/**
	 * Constructor
	 * @param userName
	 * @param password
	 */
	public CentroVO(int id, String nombre, int cp, String direccion) {
		this.idCentro = id;
		this.nombre = nombre;
		this.direccion = direccion;
		this.cp = cp;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String name) {
		this.nombre = name;
	}

	public int getCP() {
		return cp;
	}

	public void setCP(int cp) {
		this.cp = cp;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String dir) {
		this.direccion = dir;
	}

	public int getId()	{
		return idCentro;
	}
	
	public void setId(int id)	{
		this.idCentro = id;
	}
	
}
