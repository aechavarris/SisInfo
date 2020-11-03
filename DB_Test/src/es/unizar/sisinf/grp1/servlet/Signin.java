package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UserVO;
import es.unizar.sisinf.grp1.model.UsuarioVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet de autenticación del usuario", urlPatterns = { "/signin" })
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();		
		System.out.println("USUARIO VALIDO");
		if (request.getParameter("inputEmail") == null) {
			request.getRequestDispatcher("signin.jsp").forward(request, response);
		} else {
			UsuarioVO user = new UsuarioVO(Integer.parseInt(request.getParameter("inputSS").toString()),"DEFAULT","DEFAULT",Integer.parseInt(request.getParameter("inputPIN").toString()));
			boolean valido = dao.validarUsuario(user);
			
			if (valido) {
				
				request.getSession().setAttribute("user",user);
				request.getRequestDispatcher("logged.jsp").forward(request, response);
			} else {
				request.setAttribute("error", "invalid password");
				request.getRequestDispatcher("signin.jsp").forward(request, response);
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
