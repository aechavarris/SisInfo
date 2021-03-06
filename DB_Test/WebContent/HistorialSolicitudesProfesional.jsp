<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.SolicitudVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<link rel="stylesheet" href="PopUp.css">
<% String user_name = (String)request.getAttribute("user_name"); %>
<% List<SolicitudVO> list_solicitudes = (List<SolicitudVO>)request.getAttribute("list_solicitudes");%>
<% HashMap<Integer,String> hash_centros = (HashMap<Integer,String>)request.getAttribute("hash_centros"); %>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>Solicitudes de <b>Doctor ${prof.getNombre()} ${prof.getApellidos()}</b></title>
<style>
  .center {
    line-height: 40px;
    height: 40px;
    text-align: center;
}
</style>
</head>

<body class="text-center">	

<a href="./MenuProfesionales.jsp"  style="position: absolute; top: 0; left: 0 ;padding: 10px 0px 0px 10px">
	<img alt="vuelta al menu" src="./Images/back_icon.png" width="117" height="81.31">
</a>

    <script type="text/javascript">
		var solicitud = 0
		function setSolicitud(seleccionada) {
			document.formulario.idSolicitud.value = seleccionada;
			return true;
		}
    </script>
  <br>  
  <h1 class="h3 mb-3 font-weight-normal"> Solicitudes de <b>Doctor</b> <b>${prof.getApellidos()}</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px;">
      <div class="col-2 h5 mb-2 font-weight-normal">
        FECHA DE SOLICITUD
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        HORA DE SOLICITUD
      </div>
      <div class="col-4 h5 mb-2 font-weight-normal">
        PACIENTE
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        ESTADO DE LA SOLICITUD
      </div>
     <!--   <div class="col-2 h5 mb-2 font-weight-normal">
        MODIFICACION
      </div>-->
    </div>
    
            	
  <c:forEach items="${list_solicitudes}" var="solicitud">
       <c:if test = "${solicitud.getEstado() == 1}">
         	 <div class="row justify-content-center" style="border: 2px solid green; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${solicitud.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:out value="${solicitud.getHora()}"/>
		         </div>
		         <div class="col-4" >
		           <c:out value="${solicitud.getSS()}"/>
		         </div>
		         <div class="col-2" >
		           <img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="40" height="40" />
		         </div>
		         <!--<div class="col-2" >
					<button type="button" data-toggle="modal" data-target="#myModal" onclick="setSolicitud(${solicitud.getID()})">
						<img class="center" src="https://cdn2.iconfinder.com/data/icons/essential-web-3/50/edit-document-note-writing-review-128.png" alt="logo de tick verde" width="40" height="40" />
					</button>
		         </div>-->
		         
		      </div>
	   </c:if>
	   <c:if test = "${solicitud.getEstado() == 2}">
         	 <div class="row justify-content-center" style="border: 2px solid red; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${solicitud.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:out value="${solicitud.getHora()}"/>
		         </div>
		         <div class="col-4" >
		           <c:out value="${solicitud.getSS()}"/>
		         </div>
		         <div class="col-2" >
		           <img class="center" src="./Images/cross_rojo.png" alt="logo de cruz roja" width="40" height="40" />
		         </div>
		         <!--<div class="col-2" >
					<button type="button" data-toggle="modal" data-target="#myModal" onclick="setSolicitud(${solicitud.getID()})">
						<img class="center" src="https://cdn2.iconfinder.com/data/icons/essential-web-3/50/edit-document-note-writing-review-128.png" alt="logo de tick verde" width="40" height="40" />
					</button>
		         </div>-->
		         
		       </div>
	   </c:if>
       <br>
  </c:forEach>              	
    
    
  </div>
  
	<!-- The Modal -->
	<div class="modal fade" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">Editar solucion</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<form name="formulario" action="ModificarSolicitud" method="get">
	      		<input type="hidden" name="idSolicitud" id="idSolicitud" class="">
		      	<div>
					<button type="submit" name="aceptarMod" value="aceptarMod">
						<img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="40" height="40" />
					</button>
					<button type="submit" name="denegarMod" value="denegarMod">
						<img class="center" src="./Images/cross_rojo.png" alt="logo de tick verde" width="40" height="40" />
					</button>
		        </div>
		     </form>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
	      </div>
	
	    </div>
	  </div>
	</div>

</body>
</html>