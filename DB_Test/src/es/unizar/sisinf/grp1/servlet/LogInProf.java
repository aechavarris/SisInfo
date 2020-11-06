package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.ProfesionalVO;
import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UsuarioVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet de autenticacion del usuario", urlPatterns = { "/LogInProf" })
public class LogInProf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInProf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();		
		
		if (request.getParameter("inputDNI") == null) {
			System.out.println("SS es null!!");
			request.getRequestDispatcher("LoginProfesionales.jsp").forward(request, response);
		} else {
			System.out.println("SS no es null!!");
			ProfesionalVO user = new ProfesionalVO( request.getParameter("inputDNI"),"-","-",request.getParameter("inputPIN")/*,centro*/ );
			// boolean valido = dao.validarProfesional(user); // To do
			boolean valido = false;
			if (valido) {
				System.out.println("USUARIO VALIDO");
				
				request.getSession().setAttribute("user",user);
				request.getRequestDispatcher("MenuProfesionales.jsp").forward(request, response);
			} else {
				//System.out.println("USUARIO INVALIDO");
				request.setAttribute("error", "invalid password");
				request.getRequestDispatcher("LoginProfesionales.jsp").forward(request, response);
			}
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
