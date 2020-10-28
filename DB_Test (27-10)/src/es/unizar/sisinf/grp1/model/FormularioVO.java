package es.unizar.sisinf.grp1.model;



/**
 * tabla users
 * @author sisinf
 *
 */
public class FormularioVO {
	private int idSolicitud;
	private String comentario;
	private Boolean fiebre;
	private Boolean tos_seca;
	private Boolean cansancio;
	private Boolean molestias;
	private Boolean dolor_garganta;
	private Boolean diarrea;
	private Boolean conjuntivitis;
	private Boolean dolor_cabeza;
	private Boolean olfato_gusto;
	private Boolean piel_mal;
	private Boolean dif_respirar;
	private Boolean dolor_pecho;
	private Boolean habla_movilidad;
	private Boolean contacto_positivo;
	
	/**
	 * Constructor
	 * @param userName
	 * @param password
	 */
	public FormularioVO(int idSolicitud, String comentario, Boolean fiebre, Boolean tos_seca, 
			Boolean cansancio, Boolean molestias, Boolean dolor_garganta, Boolean diarrea, Boolean conjuntivitis, 
			Boolean dolor_cabeza, Boolean olfato_gusto, Boolean piel_mal, Boolean dif_respirar, Boolean dolor_pecho, 
			Boolean habla_movilidad, Boolean contacto_positivo) {
		this.idSolicitud = idSolicitud;
		this.comentario = comentario;
		this.fiebre = fiebre;
		this.tos_seca = tos_seca;
		this.cansancio = cansancio;
		this.molestias = molestias;
		this.dolor_garganta = dolor_garganta;
		this.diarrea = diarrea;
		this.conjuntivitis = conjuntivitis;
		this.dolor_cabeza = dolor_cabeza;
		this.olfato_gusto = olfato_gusto;
		this.piel_mal = piel_mal;
		this.dif_respirar = dif_respirar;
		this.dolor_pecho = dolor_pecho;
		this.habla_movilidad = habla_movilidad;
		this.contacto_positivo = contacto_positivo;
	}

	public int getID() {
		return idSolicitud;
	}

	public void setID(int id) {
		this.idSolicitud = id;
	}
	
	public void getFormulario(int idSolicitud, String comentario, Boolean fiebre, Boolean tos_seca, 
			Boolean cansancio, Boolean molestias, Boolean dolor_garganta, Boolean diarrea, Boolean conjuntivitis, 
			Boolean dolor_cabeza, Boolean olfato_gusto, Boolean piel_mal, Boolean dif_respirar, Boolean dolor_pecho, 
			Boolean habla_movilidad, Boolean contacto_positivo) {
		comentario = this.comentario;
		fiebre = this.fiebre;
		tos_seca = this.tos_seca;
		cansancio = this.cansancio;
		molestias = this.molestias;
		dolor_garganta = this.dolor_garganta;
		diarrea = this.diarrea;
		conjuntivitis = this.conjuntivitis;
		dolor_cabeza = this.dolor_cabeza;
		olfato_gusto = this.olfato_gusto;
		piel_mal = this.piel_mal;
		dif_respirar = this.dif_respirar;
		dolor_pecho = this.dolor_pecho;
		habla_movilidad = this.habla_movilidad;
		contacto_positivo = this.contacto_positivo;
	}
	
}
