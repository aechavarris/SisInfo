package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.SolicitudVO;
import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UsuarioVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet de autenticacion del usuario", urlPatterns = { "/ConsultarSolicitudesUser" })
public class ConsultarSolicitudesUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultarSolicitudesUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();
		UsuarioVO usuario = (UsuarioVO)request.getSession().getAttribute("user");
		
		List<SolicitudVO> solicitudesVOs = dao.getSolicitudes(usuario.getSS());
		
		request.setAttribute("list_solicitudes", solicitudesVOs);
		request.setAttribute("user_name", usuario.getNombre());
		request.getRequestDispatcher("ListaSolicitudesUsuario.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}