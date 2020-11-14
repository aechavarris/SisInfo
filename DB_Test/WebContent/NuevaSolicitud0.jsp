<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.CentroVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<% List<CentroVO> list_centros = (List<CentroVO>)request.getAttribute("list_centros");%>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Nueva solicitud</title>
</head>
<body><div class="text-center" style="width: 100%; text-align: center;">
<form action="PostSolicitud" method="post">
    <br>
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
	              <input type="radio" name="Fiebre" value="siFiebre"  required/>
	              <label for="siFiebre" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Fiebre" value="noFiebre"  required/>
	              <label for="noFiebre" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Tos seca</td>
	            <td>
	              <input type="radio" name="TosSeca" value="siTosSeca"  required/>
	              <label for="siTosSeca" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="TosSeca" value="noTosSeca"  required/>
	              <label for="noTosSeca" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Cansancio</td>
	            <td>
	              <input type="radio" name="Cansancio" value="siCansancio"  required/>
	              <label for="siCansancio" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Cansancio" value="noCansancio"  required/>
	              <label for="noCansancio" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Molestias y dolores</td>
	            <td>
	              <input type="radio" name="MolestiasDolores" value="siMolestiasDolores"  required/>
	              <label for="siMolestiasDolores" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="MolestiasDolores" value="noMolestiasDolores"  required/>
	              <label for="noMolestiasDolores" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor de garganta</td>
	            <td>
	              <input type="radio" name="DolorGarganta" value="siDolorGarganta"  required/>
	              <label for="siDolorGarganta" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorGarganta" value="noDolorGarganta"  required/>
	              <label for="noDolorGarganta" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Diarrea</td>
	            <td>
	              <input type="radio" name="Diarrea" value="siDiarrea"  required/>
	              <label for="siDiarrea" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Diarrea" value="noDiarrea"  required/>
	              <label for="noDiarrea" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Conjuntivitis</td>
	            <td>
	              <input type="radio" name="Conjuntivitis" value="siConjuntivitis"  required/>
	              <label for="siConjuntivitis" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Conjuntivitis" value="noConjuntivitis"  required/>
	              <label for="noConjuntivitis" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor de cabeza</td>
	            <td>
	              <input type="radio" name="DolorCabeza" value="siDolorCabeza"  required/>
	              <label for="siDolorCabeza" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorCabeza" value="noDolorCabeza"  required/>
	              <label for="noDolorCabeza" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Pérdida del olfato o el gusto</td>
	            <td>
	              <input type="radio" name="PerdidaOlfatoGusto" value="siPerdidaOlfatoGusto"  required/>
	              <label for="siPerdidaOlfatoGusto" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="PerdidaOlfatoGusto" value="noPerdidaOlfatoGusto"  required/>
	              <label for="noPerdidaOlfatoGusto" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Erupciones cutáneas</td>
	            <td>
	              <input type="radio" name="ErupcionesCutaneas" value="siErupcionesCutaneas"  required/>
	              <label for="siErupcioneCutaneas" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="ErupcionesCutaneas" value="noErupcionseCutaneas"  required/>
	              <label for="noErupcionesCutaneas" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dificultad para respirar</td>
	            <td>
	              <input type="radio" name="DificultadRespirar" value="siDificultadRespirar"  required/>
	              <label for="siDificultadRespirar" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DificultadRespirar" value="noDificultadRespirar"  required/>
	              <label for="noDificultadRespirar" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor en el pecho</td>
	            <td>
	              <input type="radio" name="DolorPecho" value="siDolorPecho"  required/>
	              <label for="siDolorPecho" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorPecho" value="noDolorPecho"  required/>
	              <label for="noDolorPecho" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Pérdida del habla o movilidad</td>
	            <td>
	              <input type="radio" name="PerdidaHablaMovilidad" value="siPerdidaHablaMovilidad"  required/>
	              <label for="siPerdidaHablaMovilidad" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="PerdidaHablaMovilidad" value="noPerdidaHablaMovilidad"  required/>
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
	              <input type="radio" name="Contacto" value="siContacto"  required/>
	              <label for="siContacto" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Contacto" value="noContacto"  required/>
	              <label for="noContacto" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Seleccione su centro mas cercano</td>
	            <td colspan="2">
	              <select name="centro" id="centro" required>
	              	
	              	<c:forEach items="${list_centros}" var="centro">
					    <option value="<c:out value="${centro.getId()}"/>">
					        <c:out value="${centro.getNombre()}"/>
					    </option>
					</c:forEach>
	              	
	              </select>
	              <label for="centro" class="hidden">Centro mas cercano</label>
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