<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="es.unizar.sisinf.grp1.model.PCRVO"%>
<%@ page import="es.unizar.sisinf.grp1.model.ProfesionalVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<link rel="stylesheet" href="PopUp.css">
<html lang="es">
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>PCRs de ${prof.getNombre()} ${prof.getApellidos()}</title>
<style>
  .center {
    line-height: 40px;
    height: 40px;
    text-align: center;
}
</style>
</head>

<body class="text-center">	

<a href="./MenuProfesionales.jsp"  style="position: absolute; top: 0; left: 0;">
	<img alt="vuelta al menu" src="./Images/back_icon_margin.png" width="90" height="150">
</a>

    <script type="text/javascript">
		var solicitud = 0
		function setPCR(seleccionada) {
			document.formulario.idPCR.value = seleccionada;
			return true;
		}
    </script>
  <br>  
  <h1 class="h3 mb-3 font-weight-normal"> PCRs de <b>${prof.getNombre()}</b> <b>${prof.getApellidos()}</b></h1>
  <div class="container">
    <div class="row justify-content-center" style="padding:5px 0px 10px 0px;">
      <div class="col-3 h5 mb-2 font-weight-normal">
        FECHA DE PCR
      </div>
      <div class="col-5 h5 mb-2 font-weight-normal">
        SS
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        RESULTADO
      </div>
      <div class="col-2 h5 mb-2 font-weight-normal">
        MODIFICACION
      </div>
    </div>
  
  
  <c:forEach items="${list_pcrs}" var="pcr">
       <c:if test = "${pcr.getEstado() == 1}">
         	 <div class="row justify-content-center" style="border: 2px solid green; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-3" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-5" >
		           <c:out value="${pcr.getSS()}"/>
		         </div>
		         <div class="col-2" >
		           <img class="center" src="./Images/tick_verde.png" alt="logo de tick verde" width="40" height="40" />
		         </div>
		         <div class="col-2" >
					<button type="button" data-toggle="modal" data-target="#myModal" onclick="setPCR(${pcr.getIdPCR()})">
						<img class="center" src="https://cdn2.iconfinder.com/data/icons/essential-web-3/50/edit-document-note-writing-review-128.png" alt="logo de tick verde" width="40" height="40" />
					</button>
		         </div>
		         
		       </div>
	   </c:if>
	   <c:if test = "${pcr.getEstado() == 2}">
         	 <div class="row justify-content-center" style="border: 2px solid red; padding:20px 0px 20px 0px; font-size:160%">
		         <div class="col-3" >
		           <c:out value="${pcr.getDia()}"/>
		         </div>
		         <div class="col-5" >
		           <c:out value="${pcr.getSS()}"/>
		         </div>
		         <div class="col-2" >
		           <img class="center" src="./Images/cross_rojo.png" alt="logo de cruz roja" width="40" height="40" />
		         </div>
		         <div class="col-2" >
					<button type="button" data-toggle="modal" data-target="#myModal" onclick="setPCR(${pcr.getIdPCR()})">
						<img class="center" src="https://cdn2.iconfinder.com/data/icons/essential-web-3/50/edit-document-note-writing-review-128.png" alt="logo de cruz roja" width="40" height="40" />
					</button>
		         </div>
		         
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
	        <h4 class="modal-title">Modal Heading</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	      	<form name="formulario" action="ModificarPCR" method="get">
	      		<input type="hidden" name="idPCR" id="idPCR" class="">
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