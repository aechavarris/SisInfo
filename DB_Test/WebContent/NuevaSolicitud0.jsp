<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.CentroVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<% List<CentroVO> list_centros = (List<CentroVO>)request.getAttribute("list_centros");%>
<html>
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Nueva solicitud</title>
</head>
<body><div class="text-center" style="width: 100%; text-align: center;">
<form action="index.jsp" method="post">
	<h1 class="text-center" >Formulario de nueva solicitud</h1>
	
	<div class="wrapper">
	  <div class="container">
	    <div class="table-responsive col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	      
	      <table class="table table-striped">
	        <tbody>
	          <tr>
	            <td>Síntoma</td>
	            <td>Si</td>
	            <td>No</td>
	          </tr>
	          <tr>
	            <td>Fiebre</td>
	            <td>
	              <input type="radio" name="Fiebre" id="siFiebre"  required/>
	              <label for="siFiebre" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Fiebre" id="noFiebre"  required/>
	              <label for="noFiebre" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Tos seca</td>
	            <td>
	              <input type="radio" name="TosSeca" id="siTosSeca"  required/>
	              <label for="siTosSeca" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="TosSeca" id="noTosSeca"  required/>
	              <label for="noTosSeca" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Cansancio</td>
	            <td>
	              <input type="radio" name="Cansancio" id="siCansancio"  required/>
	              <label for="siCansancio" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Cansancio" id="noCansancio"  required/>
	              <label for="noCansancio" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Molestias y dolores</td>
	            <td>
	              <input type="radio" name="MolestiasDolores" id="siMolestiasDolores"  required/>
	              <label for="siMolestiasDolores" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="MolestiasDolores" id="noMolestiasDolores"  required/>
	              <label for="noMolestiasDolores" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor de garganta</td>
	            <td>
	              <input type="radio" name="DolorGarganta" id="siDolorGarganta"  required/>
	              <label for="siDolorGarganta" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorGarganta" id="noDolorGarganta"  required/>
	              <label for="noDolorGarganta" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Diarrea</td>
	            <td>
	              <input type="radio" name="Diarrea" id="siDiarrea"  required/>
	              <label for="siDiarrea" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Diarrea" id="noDiarrea"  required/>
	              <label for="noDiarrea" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Conjuntivitis</td>
	            <td>
	              <input type="radio" name="Conjuntivitis" id="siConjuntivitis"  required/>
	              <label for="siConjuntivitis" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Conjuntivitis" id="noConjuntivitis"  required/>
	              <label for="noConjuntivitis" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor de cabeza</td>
	            <td>
	              <input type="radio" name="DolorCabeza" id="siDolorCabeza"  required/>
	              <label for="siDolorCabeza" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorCabeza" id="noDolorCabeza"  required/>
	              <label for="noDolorCabeza" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Pérdida del olfato o el gusto</td>
	            <td>
	              <input type="radio" name="PerdidaOlfatoGusto" id="siPerdidaOlfatoGusto"  required/>
	              <label for="siPerdidaOlfatoGusto" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="PerdidaOlfatoGusto" id="noPerdidaOlfatoGusto"  required/>
	              <label for="noPerdidaOlfatoGusto" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Erupciones cutáneas</td>
	            <td>
	              <input type="radio" name="ErupcionesCutaneas" id="siErupcionesCutaneas"  required/>
	              <label for="siErupcioneCutaneas" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="ErupcionesCutaneas" id="noErupcionseCutaneas"  required/>
	              <label for="noErupcionesCutaneas" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dificultad para respirar</td>
	            <td>
	              <input type="radio" name="DificultadRespirar" id="siDificultadRespirar"  required/>
	              <label for="siDificultadRespirar" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DificultadRespirar" id="noDificultadRespirar"  required/>
	              <label for="noDificultadRespirar" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor en el pecho</td>
	            <td>
	              <input type="radio" name="DolorPecho" id="siDolorPecho"  required/>
	              <label for="siDolorPecho" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorPecho" id="noDolorPecho"  required/>
	              <label for="noDolorPecho" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Pérdida del habla o movilidad</td>
	            <td>
	              <input type="radio" name="PerdidaHablaMovilidad" id="siPerdidaHablaMovilidad"  required/>
	              <label for="siPerdidaHablaMovilidad" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="PerdidaHablaMovilidad" id="noPerdidaHablaMovilidad"  required/>
	              <label for="noPerdidaHablaMovilidad" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Cuestiones adicionales</td>
	            <td>Si</td>
	            <td>No</td>
	          </tr>
	          <tr>
	            <td>Ha estado en contacto con algún positivo en Covid-19 la última semana</td>
	            <td>
	              <input type="radio" name="Contacto" id="siContacto"  required/>
	              <label for="siContacto" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Contacto" id="noContacto"  required/>
	              <label for="noContacto" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Seleccione su centro mas cercano</td>
	            <td colspan="2">
	              <select name="centro" id="centro" required>
	              	<option value="pepe">Pepe</option>
	              	
	              	<c:forEach items="${list_centros}" var="centro">
					    <option value="<c:out value="${centro.getId()}"/>">
					        <c:out value="${centro.getNombre()}"/>
					    </option>
					</c:forEach>
	              	
	              </select>
	              <label for="centro" class="hidden">centro mas cercano</label>
	            </td>
	          </tr>
	          <tr>
	            <td colspan="3">
	            	<input type="text" name="Comentarios" id="Comentarios" placeholder="Comentarios adicionales" size="90"/>
	            	<label for="Comentarios" class="mr-sm-2 mb-0 sr-only">Comentarios adicionales</label>
	            </td>
	          </tr>
	          <tr>
	          	<td colspan="3" class="align-middle">
	          		<div class="g-recaptcha p-2 bd-highlight" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>
	          	</td>
	          </tr>
	        </tbody>
	      </table>
	    </div>
	  </div>
	</div>
	
	<div class="wrapper">
	  <div class="container">
	    <div class="table-responsive col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	      <table class="table table-striped">
	        <tbody>
	          
	        </tbody>
	      </table>
	    </div>
	  </div>
	</div>
	<div class="d-flex justify-content-center" style="padding: 20px">
		<input type="submit" class="btn btn-lg btn-primary" value="Enviar Solicitud" />
	</div>
</form>

<!--js-->
<script src='https://www.google.com/recaptcha/api.js'></script>
</div></body>
</html>