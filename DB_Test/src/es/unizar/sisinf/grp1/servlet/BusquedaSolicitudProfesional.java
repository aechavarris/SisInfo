package es.unizar.sisinf.grp1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.model.FormularioVO;
import es.unizar.sisinf.grp1.model.ProfesionalVO;
import es.unizar.sisinf.grp1.model.SolicitudVO;
import es.unizar.sisinf.grp1.model.UserFacade;
import es.unizar.sisinf.grp1.model.UsuarioVO;


/**
 * Servlet implementation class Signin
 */
@WebServlet(description = "Servlet de autenticacion del usuario", urlPatterns = { "/BusquedaSolicitudProfesional" })
public class BusquedaSolicitudProfesional extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusquedaSolicitudProfesional() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserFacade dao = new UserFacade();
		ProfesionalVO profesional = (ProfesionalVO)request.getSession().getAttribute("prof");
		Integer idSolicitud = Integer.parseInt(request.getParameter("idSolicitud"));
		
		SolicitudVO solicitudActual = dao.getUnaSolicitud(idSolicitud);
		UsuarioVO userSolicitud = dao.getUsuario(solicitudActual.getSS());
		FormularioVO formulario = dao.getFormulario(idSolicitud);
		String fiebre;
		String comentario = formulario.getComentario();
		String tos;
		String cansancio;
		String molestias;
		String dolor_garganta;
		String diarrea;
		String conjuntivitis;
		String dolor_cabeza;
		String olfato_gusto;
		String piel_mal;
		String dif_respirar;
		String dolor_pecho;
		String habla_movilidad;
		String contacto_positivo;
		
		if ( formulario.getFiebre() ) {
			fiebre = "SI";
		}
		else {
			fiebre = "NO";
		}
		
		if ( formulario.getTos() ) {
			tos = "SI";
		}
		else {
			tos = "NO";
		}
		
		if ( formulario.getCansancio() ) {
			cansancio = "SI";
		}
		else {
			cansancio = "NO";
		}
		
		if ( formulario.getMolestias() ) {
			molestias = "SI";
		}
		else {
			molestias = "NO";
		}
		
		if ( formulario.getDolorGarganta() ) {
			dolor_garganta = "SI";
		}
		else {
			dolor_garganta = "NO";
		}
		
		if ( formulario.getDiarrea() ) {
			diarrea = "SI";
		}
		else {
			diarrea = "NO";
		}
		
		if ( formulario.getConjuntivitis() ) {
			conjuntivitis = "SI";
		}
		else {
			conjuntivitis = "NO";
		}
		
		if ( formulario.getDolorCabeza() ) {
			dolor_cabeza = "SI";
		}
		else {
			dolor_cabeza = "NO";
		}
		
		if ( formulario.getOlfatoGusto() ) {
			olfato_gusto = "SI";
		}
		else {
			olfato_gusto = "NO";
		}
		
		if ( formulario.getPielMal() ) {
			piel_mal = "SI";
		}
		else {
			piel_mal = "NO";
		}
		
		if ( formulario.getDifRespirar() ) {
			dif_respirar = "SI";
		}
		else {
			dif_respirar = "NO";
		}
		
		if ( formulario.getDolorPecho() ) {
			dolor_pecho = "SI";
		}
		else {
			dolor_pecho = "NO";
		}
		
		if ( formulario.getHablaMovilidad() ) {
			habla_movilidad = "SI";
		}
		else {
			habla_movilidad = "NO";
		}
		
		if ( formulario.getContactoPositivo() ) {
			contacto_positivo = "SI";
		}
		else {
			contacto_positivo = "NO";
		}
		
		request.setAttribute("user_vo", userSolicitud);
		request.setAttribute("prof_name", profesional.getNombre());
		request.setAttribute("solicitudActual", solicitudActual);
		
		request.setAttribute("fiebre", fiebre);
		request.setAttribute("tos", tos);
		request.setAttribute("cansancio", cansancio);
		request.setAttribute("contacto_positivo", contacto_positivo);
		request.setAttribute("habla_movilidad", habla_movilidad);
		request.setAttribute("dolor_pecho", dolor_pecho);
		request.setAttribute("dif_respirar", dif_respirar);
		request.setAttribute("piel_mal", piel_mal);
		request.setAttribute("olfato_gusto", olfato_gusto);
		request.setAttribute("dolor_cabeza", dolor_cabeza);
		request.setAttribute("conjuntivitis", conjuntivitis);
		request.setAttribute("diarrea", diarrea);
		request.setAttribute("dolor_garganta", dolor_garganta);
		request.setAttribute("molestias", molestias);
		request.setAttribute("comentario", comentario);
		
		request.getRequestDispatcher("AceptarRechazarSolicitud.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
