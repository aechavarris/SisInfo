<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<meta charset="ISO-8859-1">
<title>Pruebas pendientes de <b>${prof.getNombre()}</b> <b>${prof.getApellidos()}</b></title>
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
  <h1 class="h3 mb-3 font-weight-normal"> Pruebas pendientes de <b>${prof.getNombre()}</b> <b>${prof.getApellidos()}</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px">
      <div class="col-2 h5 mb-2 font-weight-normal">
        FECHA DE PCR
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        NOMBRE PACIENTE
      </div>
      <div class="col-4 h5 mb-2 font-weight-normal">
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
         	 <div class="row justify-content-center" style="border: 2px solid black; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-2" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-2" >
		           <c:set var="idenUser" value="${pcr.getSS()}" />
		           <c:out value="${hash_users.get(idenUser)}"/>
		         </div>
		         <div class="col-4" >
		           <c:out value="${pcr.getSS()}"/>
		         </div>
		         <div class="col-1" >
		           <form action="ModificarPCR">
		            <input type="hidden" name="idPCR" id="idPCR" value="${pcr.getIdPCR()}">
          			<button type="submit" name="aceptar" value="aceptar">
						<img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="30" height="20" />
		  			</button> 
		  		 </form>  
		         </div>
		         <div class="col-1" >
		         <form action="ModificarPCR">
          			<button type="submit" name="denegar" value="denegar">
						<img class="center" src="./Images/cross_rojo.png" alt="logo de cross rojo" width="30" height="20" />
		  			</button> 
		  		 </form>     
		         </div>
		       </div>
	   </c:if>
  </c:forEach>              	
    
    <c:forEach items="${list_PCR}" var="pcr">
  	  <c:if test = "${pcr.getEstado() == 0}">
        <div class="row justify-content-center" style="border: 2px solid gold; padding:20px 0px 20px 0px; font-size:160%">
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
		  <div class="col-3" >
		    <img class="center" src="./Images/esperar.png" alt="logo de tick verde" width="40" height="40" />  
		  </div>
	    </div>
	  </c:if> 
     <br>
    </c:forEach>               	               	
</div>
</body>
</html>