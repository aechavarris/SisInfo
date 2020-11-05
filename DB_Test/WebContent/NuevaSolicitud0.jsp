<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Nueva solicitud</title>
</head>
<body><div class="text-center">

	<h1 class="text-center" >Formulario de nueva solicitud</h1>
	
	<div class="wrapper">
	  <div class="container">
	    <div class="table-responsive col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	      <form>
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
	              <input type="radio" name="Fiebre" id="siFiebre" />
	              <label for="siFiebre" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Fiebre" id="noFiebre" />
	              <label for="noFiebre" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Tos seca</td>
	            <td>
	              <input type="radio" name="TosSeca" id="siTosSeca" />
	              <label for="siTosSeca" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="TosSeca" id="noTosSeca" />
	              <label for="noTosSeca" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Cansancio</td>
	            <td>
	              <input type="radio" name="Cansancio" id="siCansancio" />
	              <label for="siCansancio" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Cansancio" id="noCansancio" />
	              <label for="noCansancio" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Molestias y dolores</td>
	            <td>
	              <input type="radio" name="MolestiasDolores" id="siMolestiasDolores" />
	              <label for="siMolestiasDolores" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="MolestiasDolores" id="noMolestiasDolores" />
	              <label for="noMolestiasDolores" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor de garganta</td>
	            <td>
	              <input type="radio" name="DolorGarganta" id="siDolorGarganta" />
	              <label for="siDolorGarganta" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorGarganta" id="noDolorGarganta" />
	              <label for="noDolorGarganta" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Diarrea</td>
	            <td>
	              <input type="radio" name="Diarrea" id="siDiarrea" />
	              <label for="siDiarrea" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Diarrea" id="noDiarrea" />
	              <label for="noDiarrea" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Conjuntivitis</td>
	            <td>
	              <input type="radio" name="Conjuntivitis" id="siConjuntivitis" />
	              <label for="siConjuntivitis" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Conjuntivitis" id="noConjuntivitis" />
	              <label for="noConjuntivitis" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dolor de cabeza</td>
	            <td>
	              <input type="radio" name="DolorCabeza" id="siDolorCabeza" />
	              <label for="siDolorCabeza" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorCabeza" id="noDolorCabeza" />
	              <label for="noDolorCabeza" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Pérdida del olfato o el gusto</td>
	            <td>
	              <input type="radio" name="PerdidaOlfatoGusto" id="siPerdidaOlfatoGusto" />
	              <label for="siPerdidaOlfatoGusto" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="PerdidaOlfatoGusto" id="noPerdidaOlfatoGusto" />
	              <label for="noPerdidaOlfatoGusto" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Erupciones cutáneas</td>
	            <td>
	              <input type="radio" name="ErupcionesCutaneas" id="siErupcionesCutaneas" />
	              <label for="siErupcioneCutaneas" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="ErupcionesCutaneas" id="noErupcionseCutaneas" />
	              <label for="noErupcionesCutaneas" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Dificultad para respirar</td>
	            <td>
	              <input type="radio" name="DificultadRespirar" id="siDificultadRespirar" />
	              <label for="siDificultadRespirar" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DificultadRespirar" id="noDificultadRespirar" />
	              <label for="noDificultadRespirar" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>DolorPecho</td>
	            <td>
	              <input type="radio" name="DolorPecho" id="siDolorPecho" />
	              <label for="siDolorPecho" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="DolorPecho" id="noDolorPecho" />
	              <label for="noDolorPecho" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Pérdida del habla o movilidad</td>
	            <td>
	              <input type="radio" name="PerdidaHablaMovilidad" id="siPerdidaHablaMovilidad" />
	              <label for="siPerdidaHablaMovilidad" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="PerdidaHablaMovilidad" id="noPerdidaHablaMovilidad" />
	              <label for="noPerdidaHablaMovilidad" class="hidden">No</label>
	            </td>
	          </tr>
	        </tbody>
	      </table>
	      </form>
	    </div>
	  </div>
	</div>
	
	<div class="wrapper">
	  <div class="container">
	    <div class="table-responsive col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	      <table class="table table-striped">
	        <tbody>
	          <tr>
	            <td>Cuestiones adicionales</td>
	            <td>Si</td>
	            <td>No</td>
	          </tr>
	          <tr>
	            <td>Ha estado en contacto con algún positivo en Covid-19 la última semana</td>
	            <td>
	              <input type="radio" name="Contacto" id="siContacto" />
	              <label for="siContacto" class="hidden">Si</label>
	            </td>
	            <td>
	              <input type="radio" name="Contacto" id="noContacto" />
	              <label for="noContacto" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Comentarios adicionales</td>
	            <td colspan="2">
	            	<input type="text" name="Comentarios" id="Comentarios" />
	            	<label for="Comentarios" class="mr-sm-2 mb-0 sr-only">Comentarios adicionales</label>
	            </td>
	          </tr>
	        </tbody>
	      </table>
	    </div>
	  </div>
	</div>
	
	<a href="./index.html">
    	<button class="btn btn-lg btn-primary">Enviar solicitud</button>
	</a>
</div></body>
</html>