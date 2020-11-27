<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.PCRVO"%>
<%@ page import="es.unizar.sisinf.grp1.model.UsuarioVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<% List<PCRVO> list_pcr = (List<PCRVO>)request.getAttribute("list_pcr");%>
<% HashMap<Integer,String> hash_centros = (HashMap<Integer,String>)request.getAttribute("hash_centros"); %>

<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>PCRs de <b>${user.getNombre()} ${user.getApellidos()}</b></title>
<style>
  .center {
    line-height: 40px;
    height: 40px;
    text-align: center;
}
</style>
</head>

<body class="text-center">
	<a href="./MenuUsuarios.jsp"  style="position: absolute; top: 0; left: 0 ;padding: 10px 0px 0px 10px">
	<img alt="vuelta al menu" src="./Images/back_icon.png" width="117" height="81.31">
	</a>

  <br>
  <h1 class="h3 mb-3 font-weight-normal"> PCRs de <b>${user.getNombre()} ${user.getApellidos()}</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px">
      <div class="col-2 h5 mb-2 font-weight-normal">
        FECHA DE PRUEBA
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        HORA DE PRUEBA
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal">
        CENTRO DE SALUD
      </div>
      <div class="col-3 h5 mb-2 font-weight-normal">
        RESULTADO DE LA PRUEBA
      </div>
    </div>
  <c:forEach items="${list_pcr}" var="pcr">
  
  	   <c:if test = "${pcr.getEstado() == 0}">
			 
         	 <div class="row justify-content-center" style="border: 2px solid gold; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:out value="${pcr.getHora()}"/>
		         </div>
		         <div class="col-5" >
		           <c:set var="idenCentro" value="${pcr.getCentro()}" />
		           <c:out value="${hash_centros.get(idenCentro)}"/>
		         </div>
		         <div class="col-3" >
		    	 <img class="center" src="./Images/esperar.png" alt="logo de reloj" width="40" height="20" /> 
		         </div>
		       </div>
		       
	   </c:if>
	   <c:if test = "${pcr.getEstado() == 1}">
			 
         	 <div class="row justify-content-center" style="border: 2px solid green; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:out value="${pcr.getHora()}"/>
		         </div>
		         <div class="col-5" >
		           <c:set var="idenCentro" value="${pcr.getCentro()}" />
		           <c:out value="${hash_centros.get(idenCentro)}"/>
		         </div>
		         <div class="col-3" >
		    	 <img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="40" height="20" /> 
		         </div>
		       </div>
		       
	   </c:if>
	   <c:if test = "${pcr.getEstado() == 2}">
			 
         	 <div class="row justify-content-center" style="border: 2px solid red; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:out value="${pcr.getHora()}"/>
		         </div>
		         <div class="col-5" >
		           <c:set var="idenCentro" value="${pcr.getCentro()}" />
		           <c:out value="${hash_centros.get(idenCentro)}"/>
		         </div>
		         <div class="col-3" >
		    	 <img class="center" src="./Images/cross_rojo.png" alt="logo de cross rojo" width="40" height="20" /> 
		         </div>
		       </div>
		       
	   </c:if>
	   <br>
  </c:forEach> 
  </div>
</body>
</html>