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
<% HashMap<Integer,String> hash_usuarios = (HashMap<Integer,String>)request.getAttribute("hash_usuarios"); %>
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

<a href="./MenuProfesionales.jsp"  style="position: absolute; top: 0; left: 0 ;padding: 10px 0px 0px 10px">
	<img alt="vuelta al menu" src="./Images/back_icon.png" width="117" height="81.31">
</a>

  <br>
  <h1 class="h3 mb-3 font-weight-normal"> Solicitudes de <b>Doctor ${usuario_nombre}</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px;">
      <div class="col-2 h5 mb-2 font-weight-normal">
        FECHA DE SOLICITUD
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        HORA DE SOLICITUD
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal">
        PACIENTE
      </div>
      <div class="col-3 h5 mb-2 font-weight-normal">
        NUMERO SS
      </div>
    </div>
            	
  <c:forEach items="${list_solicitudes}" var="solicitud">
    <c:if test = "${solicitud.getEstado() == 0}">
  	  <a href="BusquedaSolicitudProfesional?idSolicitud=${solicitud.getID()}" style="color:black">
        <div class="row justify-content-center" style="border: 2px solid black; padding:20px 0px 20px 0px; font-size:160%">
		  <div class="col-2" >
		    <c:out value="${solicitud.getDia()}"/>
		  </div>
		  <div class="col-2" >
		    <c:out value="${solicitud.getHora()}"/>
		  </div>
		  <div class="col-5" >
		    <c:set var="ssUser" value="${solicitud.getSS()}" />
		    <c:out value="${hash_usuarios.get(ssUser)}"/>
		  </div>
		  <div class="col-3" > 
		    <c:out value="${solicitud.getSS()}"/>
		  </div>
		</div>
      </a>       
	  <br>
	</c:if>
  </c:forEach>              	
  </div>
</body>
</html>