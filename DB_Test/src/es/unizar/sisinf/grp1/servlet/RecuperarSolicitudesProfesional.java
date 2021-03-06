package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap; // import the HashMap class

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.ProfesionalVO;
import es.unizar.sisinf.grp1.model.SolicitudVO;
import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UsuarioVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet que recupera las solicitudes gestionadas por el profesional", urlPatterns = { "/RecuperarSolicitudesProfesional" })
public class RecuperarSolicitudesProfesional extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecuperarSolicitudesProfesional() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();
		ProfesionalVO prof = (ProfesionalVO)request.getSession().getAttribute("prof");
		String eleccion = request.getParameter("eleccion");
		
		if ( eleccion.equals("consultarSolicitudes")) {
			List<SolicitudVO> solicitudesVOs = dao.getSolicitudesProfesional(prof.getDNI());	// Cuando haya solicitudes
			request.setAttribute("list_solicitudes", solicitudesVOs);
			request.setAttribute("prof_name", prof.getNombre());
			request.getRequestDispatcher("HistorialSolicitudesProfesional.jsp").forward(request, response);
		}
		else if ( eleccion.equals("gestionarSolicitudes")) {
			List<SolicitudVO> solicitudesVOs = dao.getSolicitudesProfesionalByCentro(prof.getCentro());
			HashMap<Integer, String> usuarios = dao.getUsuariosHash();
			request.setAttribute("hash_usuarios", usuarios);
			request.setAttribute("list_solicitudes", solicitudesVOs);
			
			request.setAttribute("prof_name", prof.getNombre());
			request.getRequestDispatcher("SolicitudesPendientesProfesional.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
