<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.SolicitudVO"%>
<%@ page import="es.unizar.sisinf.grp1.model.UsuarioVO"%>
<%@ page import="es.unizar.sisinf.grp1.model.FormularioVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<% String prof_name = (String)request.getAttribute("prof_name"); %>
<% SolicitudVO solicitudActual = (SolicitudVO)request.getAttribute("solicitudActual"); %>
<% String fiebre = (String)request.getAttribute("fiebre"); %>
<% String cansancio = (String)request.getAttribute("cansancio"); %>
<% String conjuntivitis = (String)request.getAttribute("conjuntivitis"); %>
<% String comentario = (String)request.getAttribute("comentario"); %>
<% String dolor_garganta = (String)request.getAttribute("dolor_garganta"); %>
<% String diarrea = (String)request.getAttribute("diarrea"); %>
<% String dolor_cabeza = (String)request.getAttribute("dolor_cabeza"); %>
<% String olfato_gusto = (String)request.getAttribute("olfato_gusto"); %>
<% String piel_mal = (String)request.getAttribute("piel_mal"); %>
<% String dif_respirar = (String)request.getAttribute("dif_respirar"); %>
<% String dolor_pecho = (String)request.getAttribute("dolor_pecho"); %>
<% String habla_movilidad = (String)request.getAttribute("habla_movilidad"); %>
<% String contacto_positivo = (String)request.getAttribute("contacto_positivo"); %>
<% String tos = (String)request.getAttribute("tos"); %>
<% String molestias = (String)request.getAttribute("molestias"); %>
<% UsuarioVO user_vo = (UsuarioVO)request.getAttribute("user_vo"); %>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>Gestionar Solicitud</title>
<style>
  .center {
    line-height: 70px;
    height: 70px;
    text-align: center;
  }
  .center2 {
    line-height: 80px;
    height: 80px;
    text-align: right;
  }
  .className{
    margin:0 auto;
    width:200px;
    height:200px;
  }
  .testinggg{
    position: absolute;
    top: 50%;
    left: 50%;
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
  }
</style>
</head>

<body class="text-center">	

<a href="RecuperarSolicitudesProfesional?eleccion=gestionarSolicitudes"  style="position: absolute; top: 0; left: 0 ;padding: 10px 0px 0px 10px">
	<img alt="vuelta al menu" src="./Images/back_icon.png" width="117" height="81.31">
</a>

  <script type="text/javascript">
		var solicitud = 0
		var userSolicitud
		function setSolicitud(seleccionada, usuario) {
			document.formulario.idSolicitud.value = seleccionada;
			document.formulario.userSolicitud.value = usuario;
			return true;
		}
		function setSolicitud2(seleccionada) {
			document.formulario2.idSolicitud.value = seleccionada;
			return true;
		}
  </script>
  <br>
  <br>
  <div class="container">
    <div class="row">
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        Nombre: <b>${user_vo.getNombre()}</b>
      </div>
      <div class="col-3 h5 mb-2 font-weight-normal" style="text-align: left">
        NºSS: <b>${solicitudActual.getSS()}</b>
      </div>
    </div>
    <div class="row">
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        Fecha solicitud: <b>${solicitudActual.getDia()}</b>
      </div>
      <div class="col-3 h5 mb-2 font-weight-normal" style="text-align: left">
        Hora solicitud: <b>${solicitudActual.getHora()}</b>
      </div>
    </div>          	
  </div>
  
  <br>
  
  <div class="container">
    <div class="row">
      <div class="col-6 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>SINTOMAS</b>
      </div>
      <div class="col-3 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>SINTOMAS GRAVES</b>
      </div>
      
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Fiebre
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${fiebre}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        Dificultad para respirar
      </div>
      <div class="col-1 h5 mb-2 font-weight-normal" style="text-align: right">
        <b>${dif_respirar}</b>
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Tos seca
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${tos}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        Dolor o presión en el pecho
      </div>
      <div class="col-1 h5 mb-2 font-weight-normal" style="text-align: right">
        <b>${dolor_pecho}</b>
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Cansancio
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${cansancio}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        Pérdida del habla o movilidad
      </div>
      <div class="col-1 h5 mb-2 font-weight-normal" style="text-align: right">
        <b>${habla_movilidad}</b>
      </div>
    </div>
    
    <br>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Molestias y dolores
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${molestias}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>DETALLES ADICIONALES</b>
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Dolor de garganta
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${dolor_garganta}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        Ha estado en contacto
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Diarrea
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${diarrea}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        con un positivo en la
      </div>
      <div class="col-1 h5 mb-2 font-weight-normal" style="text-align: right">
        <b>${contacto_positivo}</b>
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Conjuntivitis
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${conjuntivitis}</b>
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal" style="text-align: left">
        última semana
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Dolor de cabeza
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${dolor_cabeza}</b>
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Pérdida del olfato o el gusto
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${olfato_gusto}</b>
      </div>
    </div>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        Erupciones cutáneas
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>${piel_mal}</b>
      </div>
    </div>
    
    <br>
    
    <div class="row">
      <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
        <b>COMENTARIOS ADICIONALES</b>
      </div>     
    </div>
    
    <div class="row">
      <div class="col-12 h5 mb-2 font-weight-normal" style="text-align: left">
        ${comentario}
      </div>
    </div>
    
    <br>
    
    <div class="className">
      <div class="row">
        <a data-toggle="modal" data-target="#aceptarSolicitud" onclick="setSolicitud(${solicitudActual.getID()}, ${user_vo.getSS()})" style="color:black">
          <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
            <b>Aceptar</b>
          </div>
        </a>
        <a data-toggle="modal" data-target="#rechazarSolicitud" onclick="setSolicitud2(${solicitudActual.getID()})" style="color:black">
          <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: left">
            <b>Rechazar</b>
          </div>
        </a>
      </div>
      <div class="row">
        <a data-toggle="modal" data-target="#aceptarSolicitud" onclick="setSolicitud(${solicitudActual.getID()}, ${user_vo.getSS()})" style="color:black">
          <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: center">
            <img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="70" height="70" />
          </div>
        </a>
        <a data-toggle="modal" data-target="#rechazarSolicitud" onclick="setSolicitud2(${solicitudActual.getID()})" style="color:black">
          <div class="col-4 h5 mb-2 font-weight-normal" style="text-align: right">
            <img class="center2" src="./Images/cross_rojo.png" alt="logo de cross rojo" width="80" height="80" />
          </div>
        </a>
      </div>
    </div>
  </div>
  
  <!-- The Modal -->
	<div class="modal fade" id="aceptarSolicitud">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">Asignar día, hora y lugar:</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<form name="formulario" action="ModificarSolicitud" method="get">
	      		<input type="hidden" name="idSolicitud" id="idSolicitud" class="">
	      		<input type="hidden" name="userSolicitud" id="userSolicitud" class="">
		      	<div>
					<label for="inputFecha" class="sr-only">Fecha</label>
	  				<input type="date" maxlength="10" name="inputFecha" id="inputFecha" class="form-control" placeholder="fecha pcr" required>
	  				<label for="inputHora" class="sr-only">Hora</label>
	  				<input type="time" maxlength="8" name="inputHora" id="inputHora" class="form-control" placeholder="hora pcr" required>
	  				<label for="inputLugar" class="sr-only">Lugar</label>
	  				<input type="text" maxlength="100" name="inputLugar" id="inputLugar" class="form-control" placeholder="Lugar" required>
	  				
	  				<br>
	  				
	  				<div class="row justify-content-center">
      					<div class="h5 mb-2 font-weight-normal">
        					<b>Guardar </b>
      					</div>
      				
    				</div>
    				<div class="h5 mb-2 font-weight-normal">
        					<button type="submit" name="aceptar" value="aceptar">
								<img class="center" src="https://cdn4.iconfinder.com/data/icons/basic-user-interface-elements/700/save-guardar-diskette-128.png" alt="logo de guardar" />
							</button>
     				 	</div>
		        </div>
		     </form>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div class="modal fade" id="rechazarSolicitud">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">Rechazar solicitud:</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<form name="formulario2" action="ModificarSolicitud" method="get">
	      		<input type="hidden" name="idSolicitud" id="idSolicitud" class="">
		      	<div>
	  				<label for="inputComentarios" class="sr-only">Lugar</label>
	  				<input type="text" maxlength="100" name="inputComentarios" id="inputComentarios" class="form-control" placeholder="Comentarios adicionales(opcional)">
	  				
	  				<br>
	  				
	  				<div class="row justify-content-center">
      					<div class="h5 mb-2 font-weight-normal">
        					<b>Guardar </b>
      					</div>
    				</div>
    				<div class="h5 mb-2 font-weight-normal">
        					<button type="submit" name="denegar" value="denegar">
								<img class="center" src="https://cdn4.iconfinder.com/data/icons/basic-user-interface-elements/700/save-guardar-diskette-128.png" alt="logo de guardar" />
							</button>
     				 	</div>
		        </div>
		     </form>
	      </div>      
	    </div>
	  </div>
	</div>
</body>
</html>