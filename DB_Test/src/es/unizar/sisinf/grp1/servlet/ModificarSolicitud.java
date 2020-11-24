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
@WebServlet(description = "Servlet que gestiona solicitudes: Acepta o deniega solicitudes (sea primera decision o modificacion)", urlPatterns = { "/ModificarSolicitud" })
public class ModificarSolicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarSolicitud() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("idSolicitud") == null)	{
			request.setAttribute("error", "Algo ha ido mal");		// Avisa de error
			request.getRequestDispatcher("MenuProfesionales.jsp").forward(request, response);
		}
		else	{
			UserFacade dao = new UserFacade();
			if(request.getParameter("aceptarMod") != null)	{		// Se ha modificado la solicitud, aceptada
				Integer id = Integer.parseInt(request.getParameter("idSolicitud"));
				dao.modifySolicitud(id, 1);
				request.getRequestDispatcher("RecuperarSolicitudesProfesional?eleccion=consultarSolicitudes").forward(request, response);
			}
			else if(request.getParameter("denegarMod") != null)	{	// Se ha modificado la solicitud, denegada
				Integer id = Integer.parseInt(request.getParameter("idSolicitud"));
				dao.modifySolicitud(id, 2);
				request.getRequestDispatcher("RecuperarSolicitudesProfesional?eleccion=consultarSolicitudes").forward(request, response);
			}
			else if(request.getParameter("aceptar") != null && request.getSession().getAttribute("prof") != null )	{	// Se ha aceptado la solicitud
				ProfesionalVO prof = (ProfesionalVO)request.getSession().getAttribute("prof");
				Integer id = Integer.parseInt(request.getParameter("idSolicitud"));
				dao.modifySolicitud(id, 1, prof.getDNI());
				request.setAttribute("eleccion", new String("gestionarSolicitudes"));
				request.getRequestDispatcher("RecuperarSolicitudesProfesional?eleccion=gestionarSolicitudes").forward(request, response);
			}
			else if(request.getParameter("denegar") != null)	{	// Se ha denegado la solicitud
				ProfesionalVO prof = (ProfesionalVO)request.getSession().getAttribute("prof");
				Integer id = Integer.parseInt(request.getParameter("idSolicitud"));
				dao.modifySolicitud(id, 2, prof.getDNI());
				request.getRequestDispatcher("RecuperarSolicitudesProfesional?eleccion=gestionarSolicitudes").forward(request, response);
			}
			else	{	
				request.setAttribute("error", "Algo ha ido mal");		// Avisa de error
				request.getRequestDispatcher("MenuProfesionales.jsp").forward(request, response);
			}
		}
		ProfesionalVO prof = (ProfesionalVO)request.getSession().getAttribute("prof");
		
		//List<SolicitudVO> solicitudesVOs = dao.getSolicitudesProfesional(prof.getDNI());	// Cuando haya solicitudes
		List<SolicitudVO> solicitudesVOs = new ArrayList<SolicitudVO>();					// TESTING ONLY!
		solicitudesVOs.add(new SolicitudVO(123, 1, 123456789, new String("JoseJuan"), 0, new java.sql.Date(System.currentTimeMillis()), new java.sql.Time(System.currentTimeMillis())));
		
		request.setAttribute("list_solicitudes", solicitudesVOs);
		request.setAttribute("prof_name", prof.getNombre());
		request.getRequestDispatcher("HistorialSolicitudesProfesional.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
