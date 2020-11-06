<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="es.unizar.sisinf.grp1.model.UsuarioVO" %>
<!doctype html>
<html lang="es">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Subir resultados PCR</title>


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
	</head>  	
	<body class="text-center" style="
  		align-items: center;
  		padding-top: 80px;
  		padding-bottom: 40px;">
		<div>
			<h1>Hola Dr. <% request.getSession().getAttribute("user"); %>, ¿qué operacion desea realizar?</h1>
			
			<table border="1"> 
		<thead> 
			<tr> 
				<th>#</th> 
				<th>User Name</th> 
				<th>Password</th> 
				<th>Email</th> 
				<th>Display Name</th> 
			</tr> 
		</thead> 
		<tbody> 
			<% 
				int i = 1; 
				List<UsuarioVO> list = (List) request.getAttribute("list"); 
			%> 
 
			<% 
				for (UsuarioVO u : list) { 
			%> 
			<tr> 
				<td><%=i++%></td> 
				<td><%=u.getSS()%></td> 
				<td><%=u.getNombre()%></td> 
				<td><%=u.getApellidos()%></td> 
				<td><%=u.getPIN()%></td> 
			</tr> 
			<% 
				} 
			%> 
		</tbody> 
	</table> 
			
    		<%-- Hay que hacer una funcion (puede ser en el propio jsp) que coja el nombre de la sesion para mostrarlo --%>>
		</div>
		<a class="btn-dark btn-lg" href="./index.jsp" role="button" style="position: absolute; top: 0; left: 0;">
    		Cerrar sesión
		</a>
	</body>
</html>