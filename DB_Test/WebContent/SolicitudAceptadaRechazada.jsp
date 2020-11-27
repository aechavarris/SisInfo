<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.SolicitudVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<% String user_name = (String)request.getAttribute("user_name"); %>
<% SolicitudVO solicitudActual = (SolicitudVO)request.getAttribute("solicitudActual"); %>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>Solicitud</title>
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
  <h1 class="h3 mb-3 font-weight-normal"> Solicitud día ${solicitudActual.getDia()}, ${solicitudActual.getHora()} de <b>${user_name}</b></h1>
  <c:if test = "${solicitudActual.getAceptado() != NULL}">
    <br>
    <div style="font-size:150%; text-align: center; padding:0px 200px 0px 200px">
      <c:out value="${solicitudActual.getAceptado()}" escapeXml="false"/>
    </div>
  </c:if>
  
  <c:if test = "${solicitudActual.getRechazado() != NULL}">
    <br>
    <div style="font-size:150%; text-align: center; padding:0px 200px 0px 200px">
      <c:out value="${solicitudActual.getRechazado()}" escapeXml="false"/>
    </div>
  </c:if>
</body>
</html>