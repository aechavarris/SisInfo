<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.SolicitudVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<%-- Hay que hacer una funcion (puede ser en el propio jsp) que coja el nombre de la sesion para mostrarlo y coger las solicitudes de ese usuario --%>>
<% List<SolicitudVO> list_solicitudes = (List<SolicitudVO>)request.getAttribute("list_solicitudes");%>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Solicitudes de Jose Alfredo</title>
</head>
<body class="text-center" style="
  		align-items: center;
  		padding-top: 80px;
  		padding-bottom: 40px;">
		<div>
			<h1 class="text-center" > FECHA DE			HORA DE						CENTRO DE SALUD						ESTADO DE LA</h1>
			<h1 class="text-center" >SOLICITUD     	   SOLICITUD											  			  SOLICITUD </h1>
	  	</div>
</body>
</html>