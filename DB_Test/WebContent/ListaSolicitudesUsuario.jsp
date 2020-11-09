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
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Solicitudes de Jose Alfredo</title>
</head>

<body class="text-center">	
  <h1 class="h3 mb-3 font-weight-normal"> Solicitudes de <b>Jose Alfredo</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px;">
      <div class="col-2">
        FECHA DE SOLICITUD
      </div>
      <div class="col-2">
        HORA DE SOLICITUD
      </div>
      <div class="col-5">
        CENTRO DE SALUD
      </div>
      <div class="col-3">
        ESTADO DE LA SOLICITUD
      </div>
    </div>
            	
  <c:forEach items="${list_solicitudes}" var="solicitud">
       <div class="row justify-content-center" style="border: 2px solid black; padding:20px 0px 20px 0px; font-size:160%;">
         <div class="col-2">
           <c:out value="${solicitud.getDia()}"/>
         </div>
         <div class="col-2" >
           <c:out value="${solicitud.getHora()}"/>
         </div>
         <div class="col-5" >
           <c:out value="${solicitud.getCentro()}"/>
         </div>
         <div class="col-3" >
           <c:out value="${solicitud.getEstado()}"/>
         </div>
       </div>
       <br>
  </c:forEach>              	
    
  </div>
</body>
</html>