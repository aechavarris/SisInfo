package es.unizar.sisinf.grp1.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.HashMap;
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
			System.out.println("N�mero de registros: " + n);
			
			
			// Leemos resultados 
			if(n == 1) {
				// Comparamos contraseñas
				findRs.next();
				String dbpwd = findRs.getString("password");
				System.out.println(profesional.getPass());
				System.out.println(dbpwd);
				if ( dbpwd.equals( profesional.getPass() ) ) {
					//updatePs.execute();	// Actualiza la fecha 
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
	
	
	public UsuarioVO getUsuario(int usuario_ss) {
		Connection conn = null;
		UsuarioVO user = null;

		try {
			// Abrimos la conexion e inicializamos los parametros 
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
			// Abrimos la conexion e inicializamos los parametros 
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
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from solicitud where ss= ?");
			ps.setString(1, numero_ss);
			ResultSet rset = ps.executeQuery();
			for(int n=0;rset.next()==true && n<100;n++) {
				sol[n] = new SolicitudVO(rset.getInt("idsolicitud"), rset.getInt("estado"),
						rset.getInt("ss"), rset.getString("profesional"),rset.getInt("centro"),rset.getDate("dia") ,rset.getTime("hora"));
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
	
	public SolicitudVO getUnaSolicitud(Integer idSolicitud) {
		Connection conn = null;
		SolicitudVO sol = null;

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("Select * from solicitud where idsolicitud= ?");
			ps.setInt(1, idSolicitud);
			ResultSet rset = ps.executeQuery();
			rset.next();
			sol = new SolicitudVO(rset.getInt("idsolicitud"), rset.getInt("estado"),rset.getInt("ss"), rset.getString("profesional"),rset.getInt("centro"),rset.getDate("dia") ,rset.getTime("hora"), rset.getString("aceptado"), rset.getString("rechazado"));
			
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
			// Abrimos la conexion e inicializamos los parametros 
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
	public List<PCRVO> getPCRsUsuario(String numero_ss) {
		Connection conn = null;
		List<PCRVO> pcrs = new ArrayList<PCRVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from pcr where ss= ?");
			ps.setString(1, numero_ss);
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true) {
				pcrs.add( new PCRVO(rset.getInt("idpcr"), rset.getInt("estado"),
					rset.getDate("dia"), rset.getTime("hora"),rset.getInt("ss") ,
					rset.getString("profesional"), rset.getInt("centro")) );
			}
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
		return pcrs;
	}
	
	public List<PCRVO> getPCRsProfesional(String dni_prof) {
		Connection conn = null;
		List<PCRVO> pcrs = new ArrayList<PCRVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from pcr where profesional= ?");
			ps.setString(1, dni_prof);
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true) {
				pcrs.add( new PCRVO(rset.getInt("idpcr"), rset.getInt("estado"),
					rset.getDate("dia"), rset.getTime("hora"),rset.getInt("ss") ,
					rset.getString("profesional"), rset.getInt("centro")) );
			}
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
		return pcrs;
	}
	
	public List<PCRVO> getPCRsCentro(int idCentro) {
		Connection conn = null;
		List<PCRVO> pcrs = new ArrayList<PCRVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from pcr where centro= ?");
			ps.setInt(1, idCentro);
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true) {
				pcrs.add( new PCRVO(rset.getInt("idpcr"), rset.getInt("estado"),
					rset.getDate("dia"), rset.getTime("hora"),rset.getInt("ss") ,
					rset.getString("profesional"), rset.getInt("centro")) );
			}
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
		return pcrs;
	}
	
	// Devuelve todos los centros
	public List<CentroVO> getCentros() {
		Connection conn = null;
		List<CentroVO> centros = new ArrayList<CentroVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from centro");
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true)	{
				centros.add(new CentroVO(rset.getInt("idcentro"), rset.getString("nombre"), rset.getInt("cp"), rset.getString("direccion")));
			}
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
		return centros;
	}
	
	// Devuelve todos los centros
		public HashMap<Integer,String> getCentrosHash() {
			Connection conn = null;
			HashMap<Integer, String> centros = new HashMap<Integer, String>();

			try {
				// Abrimos la conexion e inicializamos los parametros 
				conn = ConnectionManager.getConnection();
				PreparedStatement ps = conn.prepareStatement("Select * from centro");
				ResultSet rset = ps.executeQuery();
				while(rset.next() == true)	{
					CentroVO newCentro = new CentroVO(rset.getInt("idcentro"), rset.getString("nombre"), rset.getInt("cp"), rset.getString("direccion"));
					centros.put(newCentro.getId(),newCentro.getNombre());
				}
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
			return centros;
		}
	
	// Devuelve todas las solicitudes del usuario
	public List<SolicitudVO> getSolicitudes(int ssUser) {
		Connection conn = null;
		List<SolicitudVO> solicitudes = new ArrayList<SolicitudVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from solicitud where ss= ?");
			ps.setInt(1, ssUser);
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true)	{
				solicitudes.add(new SolicitudVO(rset.getInt("idsolicitud"), rset.getInt("estado"), rset.getInt("ss"), rset.getString("profesional"), rset.getInt("centro"), rset.getDate("dia"), rset.getTime("hora")));
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return solicitudes;
	}
	
	// Devuelve todas las solicitudes del usuario
	public List<SolicitudVO> getSolicitudesProfesional(String dniProfesional) {
		Connection conn = null;
		List<SolicitudVO> solicitudes = new ArrayList<SolicitudVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from solicitud where profesional= ?");
			ps.setString(1, dniProfesional);
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true)	{
				solicitudes.add(new SolicitudVO(rset.getInt("idsolicitud"), rset.getInt("estado"), rset.getInt("ss"), rset.getString("profesional"), rset.getInt("centro"), rset.getDate("dia"), rset.getTime("hora")));
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			try {
				ConnectionManager.releaseConnection(conn);
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return solicitudes;
	}
	
	// Guarda una solicitud y devuelve el id de la misma
	public int guardaSolicitud(int usuario, int centro, java.sql.Date dia, java.sql.Time hora)	{
		Connection conn = null;
		int id = 0;
		System.out.println("guardarSolicitud ini");

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection();
			PreparedStatement psi = conn.prepareStatement("insert into solicitud (estado,dia,hora,ss,centro) values (0,?,?,?,?)");
			psi.setDate(1, dia);
			psi.setTime(2, hora);
			psi.setInt(3, usuario);
			psi.setInt(4, centro);
			psi.executeUpdate();

			PreparedStatement ps = conn.prepareStatement("select idsolicitud from solicitud where dia = ? AND hora = ? AND ss = ? AND centro = ?");
			ps.setDate(1,  dia);
			ps.setTime(2, hora);
			ps.setInt(3, usuario);
			ps.setInt(4, centro);
			ResultSet rset = ps.executeQuery();
			if(rset.next() == true) id = rset.getInt("idsolicitud");
			else System.out.println("ERROR: No se guardo la solicitud correctamente");
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
		return id;
	}
	
	// Guarda una solicitud y devuelve el id de la misma
	public void guardaFormulario(int idSolicitud, String comm, boolean fiebre, boolean tos, boolean cansancio, boolean molestias, boolean garganta, boolean diarrea, boolean conjuntivitis,
			 boolean cabeza, boolean olfatoGusto, boolean erupciones, boolean difRespiracion, boolean pecho, boolean hablaMovilidad, boolean contactoPositivo)	{
		Connection conn = null;
		int id = 0;
		System.out.println("guardarFormulario ini");

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection();
			PreparedStatement psi = conn.prepareStatement("insert into formulario values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			psi.setInt(1, idSolicitud);
			psi.setBoolean(2, fiebre);
			psi.setBoolean(3, tos);
			psi.setBoolean(4, cansancio);
			psi.setBoolean(5, molestias);
			psi.setBoolean(6, garganta);
			psi.setBoolean(7, diarrea);
			psi.setBoolean(8, conjuntivitis);
			psi.setBoolean(9, cabeza);
			psi.setBoolean(10, olfatoGusto);
			psi.setBoolean(11, erupciones);
			psi.setBoolean(12, difRespiracion);
			psi.setBoolean(13, pecho);
			psi.setBoolean(14, hablaMovilidad);
			psi.setBoolean(15, contactoPositivo);
			psi.setString(16, comm);
			psi.executeUpdate();
			System.out.println(psi.toString());

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
	}
	public List<PCRVO> getPCRsProfesionalPendientes(String dni_prof) {
		Connection conn = null;
		List<PCRVO> pcrs = new ArrayList<PCRVO>();

		try {
			// Abrimos la conexion e inicializamos los parametros
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from pcr where profesional= ? AND estado = 0");
			ps.setString(1, dni_prof);
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true) {
				System.out.println("PCR DETECTADO: "+Integer.toString(rset.getInt("ss")));
				pcrs.add( new PCRVO(rset.getInt("idpcr"), rset.getInt("estado"),
					rset.getDate("dia"), rset.getTime("hora"),rset.getInt("ss") ,
					rset.getString("profesional"), rset.getInt("centro")) );
			}
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
		return pcrs;
	}
	public HashMap<Integer, String> getUsersHash() {
		// TODO Auto-generated method stub
		Connection conn = null;
		HashMap<Integer, String> users = new HashMap<Integer, String>();

		try {
			// Abrimos la conexion e inicializamos los parametros 
			conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("Select * from usuarios");
			ResultSet rset = ps.executeQuery();
			while(rset.next() == true)	{
				UsuarioVO newUser = new UsuarioVO(rset.getInt("ss"), rset.getString("nombre"), rset.getString("apellidos"), rset.getInt("pin"));
				users.put(newUser.getSS(),newUser.getNombre());
			}
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
		return users;
	}
}

