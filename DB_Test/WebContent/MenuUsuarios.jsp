<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <title>Opciones Usuarios</title>


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
	</head>  	
	<body class="text-center" style="
  		align-items: center;
  		padding-top: 80px;
  		padding-bottom: 40px;">
		<div>
			<h1>Hola <b>${user.getNombre()} ${user.getApellidos()}</b>, ¿qué operacion desea realizar?</h1>
    		<%-- Hay que hacer una funcion (puede ser en el propio jsp) que coja el nombre de la sesion para mostrarlo --%>
  			<div class="text-center container container-opciones" style="padding-top: 30px;">
  				<a href="PreSolicitud" class="text-center align-middle btn btn-light btn-block border-dark" role="Link Button" style="font-family:calibri;font-size:300%;">
  					<img class="mb-4" src="https://cdn2.iconfinder.com/data/icons/random-set-1/410/Asset_85-128.png" alt="icono_realizar_solicitud" width="70" height="70" style="float:left;" />
  					Solicitar cita
  				</a>
				<a href="ConsultarSolicitudesUser" class="text-center align-middle btn btn-light btn-block border-dark" role="Link Button" style="font-family:calibri;font-size:300%;">
  					<img class="mb-4" src="./Images/calendar_icono.png" alt="icono_consulta_solicitudes" width="60" height="70" style="float:left;" />
  					Consultar solicitudes
  				</a>
  				<a href="ConsultarPCRsUser" class="text-center align-middle btn btn-light btn-block border-dark" role="Link Button" style="font-family:calibri;font-size:300%;">
  					<img class="mb-4" src="https://cdn4.iconfinder.com/data/icons/customicondesignoffice2/128/FAQ.png" alt="icono_ver_resultados" width="70" height="70" style="float:left;" />
  					Consultar resultados
  				</a>
  			</div>
		</div>
		<a class="btn-dark btn-lg" href="./index.jsp" role="button" style="position: absolute; top: 0; left: 0;">
    		Cerrar sesión
    		<%-- Aqui tendriamos que borrar los datos de sesion --%>>
		</a>
		
	</body>
</html>