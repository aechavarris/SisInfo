package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import java.util.List;
import java.util.HashMap; // import the HashMap class

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.PCRVO;
import es.unizar.sisinf.grp1.model.ProfesionalVO;
import es.unizar.sisinf.grp1.model.SolicitudVO;
import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UsuarioVO;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet subir resultados del profesional", urlPatterns = { "/SubirResultados" })
public class SubirResultados extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubirResultados() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();
		ProfesionalVO prof = (ProfesionalVO)request.getSession().getAttribute("prof");
		HashMap<Integer, String> users = dao.getUsuariosHash();
		List<PCRVO> PCRsVOs = dao.getPCRsProfesionalPendientes(prof.getDNI());
		//System.out.printf("%s",PCRsVOs.get(0).getSS());
		
		request.setAttribute("list_pcr", PCRsVOs);
		request.setAttribute("prof", prof);
		//System.out.println(prof.getApellidos());
		request.setAttribute("hash_users", users);
		request.getRequestDispatcher("SubirResultados.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
