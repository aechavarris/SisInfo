package es.unizar.sisinf.grp1.model;

// El pepe

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
	
	public Boolean getDolorGarganta() {
		return dolor_garganta;
	}
	public void setDolorGarganta(Boolean dg) {
		this.dolor_garganta = dg;
	}
	
	public Boolean getHablaMovilidad() {
		return habla_movilidad;
	}
	public void setHablaMovilidad(Boolean hm) {
		this.habla_movilidad = hm;
	}
	
	public Boolean getOlfatoGusto() {
		return olfato_gusto;
	}
	public void setOlfatoGusto(Boolean og) {
		this.olfato_gusto = og;
	}
	
	public Boolean getPielMal() {
		return piel_mal;
	}
	public void setPielMal(Boolean pm) {
		this.piel_mal = pm;
	}
	
	public Boolean getContactoPositivo() {
		return contacto_positivo;
	}
	public void setContactoPositivo(Boolean cp) {
		this.contacto_positivo = cp;
	}
	
	public Boolean getDolorCabeza() {
		return conjuntivitis;
	}
	public void setDolorCabeza(Boolean dc) {
		this.dolor_cabeza = dc;
	}
	
	public Boolean getConjuntivitis() {
		return conjuntivitis;
	}
	public void setConjuntivitis(Boolean conj) {
		this.conjuntivitis = conj;
	}
	
	public Boolean getDiarrea() {
		return diarrea;
	}
	public void setDiarrea(Boolean dia) {
		this.diarrea = dia;
	}
	
	public Boolean getMolestias() {
		return molestias;
	}
	public void setMolestias(Boolean mol) {
		this.molestias = mol;
	}
	
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String com) {
		this.comentario = com;
	}
	
	public Boolean getFiebre() {
		return fiebre;
	}
	public void setComentario(Boolean fieb) {
		this.fiebre = fieb;
	}
	
	public Boolean getTos() {
		return tos_seca;
	}
	public void setTos(Boolean tos) {
		this.tos_seca = tos;
	}
	
	public Boolean getCansancio() {
		return cansancio;
	}
	public void setCansancio(Boolean can) {
		this.cansancio = can;
	}
	
	public Boolean getDifRespirar() {
		return dif_respirar;
	}
	public void setDifRespirar(Boolean resp) {
		this.dif_respirar = resp;
	}
	
	public Boolean getDolorPecho() {
		return dolor_pecho;
	}
	public void setDolorPecho(Boolean dolor_pecho) {
		this.dolor_pecho = dolor_pecho;
	}
	
}
