package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import es.unizar.sisinf.grp1.model.CentroVO;
import es.unizar.sisinf.grp1.model.UserFacade;

/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet de autenticacion del usuario", urlPatterns = { "/PreSolicitud" })
public class PreSolicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreSolicitud() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();
		//List<Pair<Integer,String>> centros = new ArrayList<Pair<Integer,String>>();
		
		List<CentroVO> centrosVOs = dao.getCentros();
		/*for(CentroVO aux : centrosVOs)	{		// Solo se queda con los nombres
			centros.add(new Pair<Integer,String>(aux.getId(), aux.getNombre()) );
			System.out.println(aux.getNombre());
		}*/
		request.setAttribute("list_centros", centrosVOs);
		request.getRequestDispatcher("NuevaSolicitud0.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
