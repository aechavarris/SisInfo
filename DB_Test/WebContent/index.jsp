<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">

<link rel="stylesheet" href="style.css">
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>LogIn Usuarios</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">



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
	<body class="text-center">
		
		<form class="form-signin" method="post" action="LogIn">
	  		<img class="mb-4" src="./Images/logo_sas.png" alt="logo de sanidad aragón" width="144" height="72" />
	  		<h1 class="h3 mb-3 font-weight-normal">Acceso al sistema</h1>
	  		<label for="inputSS" class="sr-only">Número Seguridad Social</label>
	  		<input type="number" maxlength="12" name="inputSS" id="inputSS" class="form-control" placeholder="Numero SS" required>
	  		<label for="inputPIN" class="sr-only">PIN</label>
	  		<input type="password" name="inputPIN" id="inputPIN" class="form-control" placeholder="PIN" required>
	  		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	  		
	  		<% if (request.getAttribute("error") != null) { %>
			<div class="alert alert-danger">
			<%= request.getAttribute("error") %>
			</div>
			<% } %>
			
	  		<p class="mt-5 mb-3 text-muted">&copy; 2017-2020</p>
		</form>
		<a href="./LoginProfesionales.jsp" style="position: absolute; top: 0; right: 0;">
    		<button class="btn btn-lg btn-primary btn-block">Acceso profesionales</button>
		</a>
		
		
	</body>
</html>