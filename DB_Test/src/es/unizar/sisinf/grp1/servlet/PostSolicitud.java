package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UsuarioVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet de autenticacion del usuario", urlPatterns = { "/PostSolicitud" })
public class PostSolicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostSolicitud() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();
		if(request.getSession().getAttribute("user") != null)	{
			UsuarioVO usuario = (UsuarioVO)request.getSession().getAttribute("user");
	        java.sql.Date dia = new java.sql.Date(System.currentTimeMillis());
	        java.sql.Time hora = new java.sql.Time(System.currentTimeMillis());
			Integer idSol = dao.guardaSolicitud(usuario.getSS(), Integer.parseInt( request.getParameter("centro") ), dia, hora);
			
			if(idSol != null)	{
				boolean fiebre, tos, cansancio, molestias, garganta, diarrea, conjuntivitis,
					cabeza, olfatoGusto, erupciones, difRespiracion, pecho, hablaMovilidad, contactoPositivo;
				if(request.getParameter("Fiebre").equals("siFiebre")) fiebre = true;
				else fiebre = false;
				if(request.getParameter("TosSeca").equals("siTosSeca")) tos = true;
				else tos = false;
				if(request.getParameter("Cansancio").equals("siCansancio")) cansancio = true;
				else cansancio = false;
				if(request.getParameter("MolestiasDolores").equals("siMolestiasDolores")) molestias = true;
				else molestias = false;
				if(request.getParameter("DolorGarganta").equals("siDolorGarganta")) garganta = true;
				else garganta = false;
				if(request.getParameter("Diarrea").equals("siDiarrea")) diarrea = true;
				else diarrea = false;
				if(request.getParameter("Conjuntivitis").equals("siConjuntivitis")) conjuntivitis = true;
				else conjuntivitis = false;
				if(request.getParameter("DolorCabeza").equals("siDolorCabeza")) cabeza = true;
				else cabeza = false;
				if(request.getParameter("PerdidaOlfatoGusto").equals("siPerdidaOlfatoGusto")) olfatoGusto = true;
				else olfatoGusto = false;
				if(request.getParameter("ErupcionesCutaneas").equals("siErupcionesCutaneas")) erupciones = true;
				else erupciones = false;
				if(request.getParameter("DificultadRespirar").equals("siDificultadRespirar")) difRespiracion = true;
				else difRespiracion = false;
				if(request.getParameter("DolorPecho").equals("siDolorPecho")) pecho = true;
				else pecho = false;
				if(request.getParameter("PerdidaHablaMovilidad").equals("siPerdidaHablaMovilidad")) hablaMovilidad = true;
				else hablaMovilidad = false;
				if(request.getParameter("Contacto").equals("siContacto")) contactoPositivo = true;
				else contactoPositivo = false;
				
				dao.guardaFormulario(idSol, request.getParameter("Comentarios"), fiebre, tos, cansancio, molestias, garganta, diarrea, conjuntivitis,
						cabeza, olfatoGusto, erupciones, difRespiracion, pecho, hablaMovilidad, contactoPositivo);
				

				request.setAttribute("mensaje", "Solicitud guardada");
				request.getRequestDispatcher("MenuUsuarios.jsp").forward(request, response);
			}
		}
		else
		{
			request.setAttribute("error", "Necesita acceder antes de realizar una solicitud");
			request.getRequestDispatcher("index.jsp").forward(request, response);
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
