<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.PCRVO"%>
<%@ page import="es.unizar.sisinf.grp1.model.ProfesionalVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<% ProfesionalVO prof = (ProfesionalVO)request.getSession().getAttribute("prof"); %>
<% HashMap<Integer,String> hash_users = (HashMap<Integer,String>)request.getAttribute("hash_users"); %>
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>Pruebas pendientes de Doctor ${prof.getApellidos()}</title>
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
  <h1 class="h3 mb-3 font-weight-normal"> Pruebas pendientes de <b>Doctor</b> <b>${prof.getApellidos()}</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px">
      <div class="col-2 h5 mb-2 font-weight-normal">
        FECHA DE PCR
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        NOMBRE PACIENTE
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal">
        NUMERO SEGURIDAD SOCIAL
      </div>
      <div class="col-1 h5 mb-2 font-weight-normal">
        POSITIVO
      </div>
      <div class="col-1 h5 mb-2 font-weight-normal">
        NEGATIVO
      </div>
    </div>
  <c:forEach items="${list_pcr}" var="pcr">
  
  	   <c:if test = "${pcr.getEstado() == 0}">
			 
		    <form action="ModificarPCR">
			<input type="hidden" name="idPCR" id="idPCR" value="${pcr.getIdPCR()}">
         	 <div class="row justify-content-center" style="border: 2px solid black; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:set var="idenUser" value="${pcr.getSS()}" />
		           <c:out value="${hash_users.get(idenUser)}"/>
		         </div>
		         <div class="col-5" >
		           <c:out value="${pcr.getSS()}"/>
		         </div>
		         <div class="col-1" >
          			<button type="submit" name="aceptar" value="aceptar">
						<img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="30" height="20" />
		  			</button> 
		  		 
		         </div>
		         <div class="col-1" >
          		 <button type="submit" name="denegar" value="denegar">
					<img class="center" src="./Images/cross_rojo.png" alt="logo de cross rojo" width="30" height="20" />
		  		 </button> 
		         </div>
		       </div>
		      </form>
		       <br>	  
	   </c:if>
  </c:forEach> 
  </div>             	              	
</body>
</html>