package es.unizar.sisinf.grp1.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import es.unizar.sisinf.grp1.db.ConnectionManager;
import es.unizar.sisinf.grp1.db.PoolConnectionManager;

public class UserFacade {
	
	private static String countByUserName = "SELECT count(*) cuenta FROM users WHERE username = ?";
	private static String findByUserName = "SELECT * FROM users WHERE username = ?";
	private static String updateDate = "UPDATE users set last_login = current_timestamp where username = ?";
	

	private static String cuentaPorSS = "SELECT count(*) cuenta FROM usuarios WHERE ss = ?";
	private static String buscaPorSS = "SELECT * FROM usuarios WHERE ss = ?";
	private static String actualizaFecha = "UPDATE usuarios set last_login = current_timestamp where ss = ?";
	
	private static String cuentaPorDNI = "SELECT count(*) cuenta FROM profesionales WHERE dni = ?";
	private static String buscaPorDNI = "SELECT * FROM profesionales WHERE dni = ?";
	private static String actualizaFechaP = "UPDATE profesionales set last_login = current_timestamp where dni = ?";
	
	
	public UserFacade() {}
	/** * Busca un registro en la tabla DEMO por ID * 
		@param id Identificador del registro buscado * 
		@returnObjeto DemoVO con el identificador buscado, o null si no seencuentra 
	*/
	public boolean validateUser(UserVO user) { 
		boolean result = false;
		Connection conn = null;
		
		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement countPs = conn.prepareStatement(countByUserName);
			PreparedStatement findPs = conn.prepareStatement(findByUserName);
			PreparedStatement updatePs = conn.prepareStatement(updateDate);
			countPs.setString(1, user.getUserName());
			findPs.setString(1, user.getUserName());
			updatePs.setString(1, user.getUserName());
			
			// Ejecutamos la consulta 
			ResultSet findRs = findPs.executeQuery();
			ResultSet countRs = countPs.executeQuery();
			
			countRs.next();
			int n = countRs.getInt(1);
			System.out.println("Número de registros: " + n);
			
			
			// Leemos resultados 
			if(n == 1) {
				// Comparamos contraseñas
				findRs.next();
				String dbpwd = findRs.getString("password");
				if (dbpwd.contentEquals(user.getPassword())) {
					updatePs.execute();
					result = true;
				}
			} else { 
				result = false;  
			} 
			
			// liberamos los recursos utilizados
			findRs.close();
			findPs.close();
			countRs.close();
			countPs.close();
			updatePs.close();

		} catch(SQLException se) {
			se.printStackTrace();  
		
		} catch(Exception e) {
			e.printStackTrace(System.err); 
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		
		return result;
	}
	
	public boolean validarUsuario(UsuarioVO usuario) { 
		boolean result = false;
		Connection conn = null;
		
		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement countPs = conn.prepareStatement(cuentaPorSS);
			PreparedStatement findPs = conn.prepareStatement(buscaPorSS);
			PreparedStatement updatePs = conn.prepareStatement(actualizaFecha);
			countPs.setInt(1, usuario.getSS());
			findPs.setInt(1, usuario.getSS());
			updatePs.setInt(1, usuario.getSS());
			
			// Ejecutamos la consulta 
			ResultSet findRs = findPs.executeQuery();
			ResultSet countRs = countPs.executeQuery();
			
			countRs.next();
			int n = countRs.getInt(1);
			System.out.println("Número de registros: " + n);
			
			
			// Leemos resultados 
			if(n == 1) {
				// Comparamos contraseñas
				findRs.next();
				int dbpwd = findRs.getInt("pin");
				if (dbpwd == usuario.getPIN()) {
					updatePs.execute();	// Actualiza la fecha 
					result = true;		// Devuelve true, el login es correcto
				}
			} else { 
				result = false;  // Hay mas de un usuario con el mismo numero de SS
			} 
			
			// liberamos los recursos utilizados
			findRs.close();
			findPs.close();
			countRs.close();
			countPs.close();
			updatePs.close();

		} catch(SQLException se) {
			se.printStackTrace();  
		
		} catch(Exception e) {
			e.printStackTrace(System.err); 
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		
		return result;
	}
		
	public boolean validarProfesional(ProfesionalVO profesional) { 
		boolean result = false;
		Connection conn = null;
		
		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement countPs = conn.prepareStatement(cuentaPorDNI);
			PreparedStatement findPs = conn.prepareStatement(buscaPorDNI);
			PreparedStatement updatePs = conn.prepareStatement(actualizaFechaP);
			countPs.setString(1, profesional.getDNI());
			findPs.setString(1, profesional.getDNI());
			updatePs.setString(1, profesional.getDNI());
			
			// Ejecutamos la consulta 
			ResultSet findRs = findPs.executeQuery();
			ResultSet countRs = countPs.executeQuery();
			
			countRs.next();
			int n = countRs.getInt(1);
			System.out.println("Número de registros: " + n);
			
			
			// Leemos resultados 
			if(n == 1) {
				// Comparamos contraseñas
				findRs.next();
				String dbpwd = findRs.getString("pass");
				if (dbpwd == profesional.getPass()) {
					updatePs.execute();	// Actualiza la fecha 
					result = true;		// Devuelve true, el login es correcto
				}
			} else { 
				result = false;  // Hay mas de un usuario con el mismo numero de SS
			} 
			
			// liberamos los recursos utilizados
			findRs.close();
			findPs.close();
			countRs.close();
			countPs.close();
			updatePs.close();

		} catch(SQLException se) {
			se.printStackTrace();  
		
		} catch(Exception e) {
			e.printStackTrace(System.err); 
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		
		return result;
	}
	public UserVO getUser(String username) {
		Connection conn = null;
		UserVO user = null;

		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from users where username= ?");
			ps.setString(1, username);
			ResultSet rset = ps.executeQuery();
			rset.next();
			user = new UserVO(rset.getString("username"), rset.getString("password"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return user;
	}
	
	
	public UsuarioVO getUsuario(int usuario_ss) {
		Connection conn = null;
		UsuarioVO user = null;

		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from usuarios where ss= ?");
			ps.setInt(1, usuario_ss);
			ResultSet rset = ps.executeQuery();
			rset.next();
			user = new UsuarioVO(rset.getInt("ss"), rset.getString("nombre"), rset.getString("apellidos"), rset.getInt("pin"));
			System.out.println("Im getUsuario");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return user;
	}
	
	public ProfesionalVO getProfesional(String profesional_dni) {
		Connection conn = null;
		ProfesionalVO prof = null;

		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from profesionales where dni= ?");
			ps.setString(1, profesional_dni);
			ResultSet rset = ps.executeQuery();
			rset.next();
			prof = new ProfesionalVO(rset.getString("dni"), rset.getString("nombre"), rset.getString("apellidos"), rset.getString("PASSWORD"));
			System.out.println("Im getUsuario");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return prof;
	}
	public SolicitudVO[] getSolicitud(String numero_ss) {
		Connection conn = null;
		SolicitudVO[] sol = new SolicitudVO[100];

		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from solicitud where ss= ?");
			ps.setString(1, numero_ss);
			ResultSet rset = ps.executeQuery();
			for(int n=0;rset.next()==true && n<100;n++) {
				sol[n] = new SolicitudVO(rset.getInt("idsolicitud"), rset.getInt("estado"),
						rset.getInt("ss"), rset.getString("profesional"),rset.getDate("dia") ,rset.getTime("hora"));
			}
			
			System.out.println("Im getUsuario");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return sol;
	}
	public FormularioVO[] getFormulario(String idSolicitud) {
		Connection conn = null;
		FormularioVO[] form = new FormularioVO[100];

		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from formulario where idsolicitud= ?");
			ps.setString(1, idSolicitud);
			ResultSet rset = ps.executeQuery();
			for(int n=0;rset.next()==true && n<100;n++) {
			form[n] = new FormularioVO(rset.getInt("idsolicitud"), rset.getString("comentario"),
					rset.getBoolean("fiebre"), rset.getBoolean("tos_seca"),rset.getBoolean("cansancio") ,
					rset.getBoolean("molestias"),rset.getBoolean("dolor_garganta"),rset.getBoolean("diarrea"),
					rset.getBoolean("conjuntivitis"),rset.getBoolean("dolor_cabeza"), rset.getBoolean("olfato_gusto"),
					rset.getBoolean("piel_mal"), rset.getBoolean("dif_respirar"),rset.getBoolean("dolor_pecho"), 
					rset.getBoolean("habla_movilidad"), rset.getBoolean("contacto_positivo"));
			}
			System.out.println("Im getUsuario");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return form;
	}
	public PCRVO[] getPCR(String numero_ss) {
		Connection conn = null;
		PCRVO[] pcr = new PCRVO[100];

		try {
			// Abrimos la conexión e inicializamos los parámetros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from pcr where ss= ?");
			ps.setString(1, numero_ss);
			ResultSet rset = ps.executeQuery();
			for(int n=0;rset.next()==true && n<100;n++) {
			pcr[n] = new PCRVO(rset.getInt("idpcr"), rset.getInt("estado"),
					rset.getDate("dia"), rset.getTime("hora"),rset.getInt("ss") ,
					rset.getString("profesional"), rset.getInt("centro"));
			}
			System.out.println("Im getUsuario");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return pcr;
	}
	
}

