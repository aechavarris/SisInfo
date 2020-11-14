<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.SolicitudVO"%>
<%@ page import="es.unizar.sisinf.grp1.model.UsuarioVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<% UsuarioVO usuario = (UsuarioVO)request.getSession().getAttribute("user"); %>
<% String usuario_nombre = new String("pepe"); %>
<% List<SolicitudVO> list_solicitudes = (List<SolicitudVO>)request.getAttribute("list_solicitudes");%>
<% HashMap<Integer,String> hash_centros = (HashMap<Integer,String>)request.getAttribute("hash_centros"); %>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Solicitudes de ${usuario_nombre}</title>
<style>
  .center {
    line-height: 40px;
    height: 40px;
    text-align: center;
}
</style>
</head>

<body class="text-center">
  <br>
  <h1 class="h3 mb-3 font-weight-normal"> Solicitudes de ${usuario_nombre}</h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px;">
      <div class="col-2 h5 mb-2 font-weight-normal">
        FECHA DE SOLICITUD
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        HORA DE SOLICITUD
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal">
        CENTRO DE SALUD
      </div>
      <div class="col-3 h5 mb-2 font-weight-normal">
        ESTADO DE LA SOLICITUD
      </div>
    </div>
            	
  <c:forEach items="${list_solicitudes}" var="solicitud">
  	   <c:if test = "${solicitud.getEstado() == 0}">
         	 <div class="row justify-content-center" style="border: 2px solid gold; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${solicitud.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:out value="${solicitud.getHora()}"/>
		         </div>
		         <div class="col-5" >
		           <c:set var="idenCentro" value="${solicitud.getCentro()}" />
		           <c:out value="${hash_centros.get(idenCentro)}"/>
		         </div>
		         <div class="col-3" >
		           <img class="center" src="./Images/esperar.png" alt="logo de tick verde" width="40" height="40" />  
		         </div>
		       </div>
	   </c:if>
	
       <c:if test = "${solicitud.getEstado() == 1}">
         <a href="BusquedaSolicitud?idSolicitud=${solicitud.getID()}" style="color:black">
           <div class="row justify-content-center" style="border: 2px solid green; padding:20px 0px 20px 0px; font-size:160%">
		     <div class="col-2" >
		       <c:out value="${solicitud.getDia()}"/>
		     </div>
		     <div class="col-2" >
		       <c:out value="${solicitud.getHora()}"/>
		     </div>
		     <div class="col-5" >
		       <c:set var="idenCentro" value="${solicitud.getCentro()}" />
		       <c:out value="${hash_centros.get(idenCentro)}"/>
		     </div>
		     <div class="col-3" >
		       <img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="40" height="40" />
		     </div>
		   </div>
         </a>
	   </c:if>
	   
	   <c:if test = "${solicitud.getEstado() == 2}">
	     <a href="BusquedaSolicitud?idSolicitud=${solicitud.getID()}" style="color:black">
           <div id="solicitud2" class="row justify-content-center" style="border: 2px solid red; padding:20px 0px 20px 0px; font-size:160%">
		     <div class="col-2" >
		       <c:out value="${solicitud.getDia()}"/>
		     </div>
		     <div class="col-2" >
		       <c:out value="${solicitud.getHora()}"/>
		     </div>
		     <div class="col-5" >
		       <c:set var="idenCentro" value="${solicitud.getCentro()}" />
		       <c:out value="${hash_centros.get(idenCentro)}"/>
		     </div>
		     <div class="col-3" >
		       <img class="center" src="./Images/cross_rojo.png" alt="logo de tick verde" width="40" height="40" />
		     </div>
		   </div>
	     </a>
	   </c:if>
	   
       <br>
  </c:forEach>              	
    
  </div>
</body>
</html>