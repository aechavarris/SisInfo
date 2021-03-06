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
    <title>Login Profesionales</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

    <!-- Bootstrap core CSS -->
<link href="/docs/4.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">


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
  	<a href="./index.jsp" style="position: absolute; top: 0; right: 0;">
    	<button class="btn btn-lg btn-primary btn-block">Acceso usuarios</button>
	</a>
    <form class="form-signin" method="post" action="LogInProf">
  		<img class="mb-4" src="./Images/logo_sas.png" alt="logo de sanidad aragón" width="144" height="72" />
  		<h1 class="h3 mb-3 font-weight-normal">Acceso profesionales</h1>
  		<label for="inputDNI" class="sr-only">Introducir DNI</label>
  		<input type="text" name="inputDNI" id="inputDNI" class="form-control" placeholder="DNI" required autofocus>
  		<label for="inputPassword" class="sr-only">Introducir Contraseña</label>
  		<input type="password" name="inputPassword" id="inputPassword" class="form-control" placeholder="Contraseña" required>
  		<button class="btn btn-lg btn-primary btn-block" type="submit">Acceder</button>
  		<p class="mt-5 mb-3 text-muted">&copy; 2020</p>
	</form>
	
	<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <ul class="nav navbar-nav" style="font-size:150%;">
      <!-- <li class="active"><a href="#">¿Quiénes somos?</a></li>  -->
      <li><a href="index.jsp">Acceso usuarios</a></li>
      <li class="active"><a href="#">Acceso profesionales</a></li>
      <li><a href="QuienesSomos.jsp">¿Quiénes somos?</a></li>
      <li><a href="FAQ.jsp">Preguntas frecuentes</a></li>
      <li><a href="Contacto.jsp">Contacto</a></li>
      <li><a href="AvisoLegal.jsp">Aviso legal</a></li>

    </ul>
</nav>

</body>
</html>