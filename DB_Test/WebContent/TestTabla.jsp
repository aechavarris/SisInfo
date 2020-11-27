<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="utf-8">
<title>Formulario</title>
</head>
<body>

	
	<div class="wrapper">
	  <div class="container">
	    <div class="table-responsive col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	      <table class="table table-striped">
	        <tbody>
	          <tr>
	            <td>Síntoma</td>
	            <td>Si</td>
	            <td>No</td>
	          </tr>
	          <tr>
	            <td>Fiebre</td>
	            <td>
	              <input type="radio" name="Fiebre" id="siFiebre" />
	              <label for="siFiebre" class="hidden">Yes</label>
	            </td>
	            <td>
	              <input type="radio" name="Fiebre" id="noFiebre" />
	              <label for="noFiebre" class="hidden">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Series B</td>
	            <td>Product B</td>
	            <td>
	              <input type="radio" name="radios" id="radio2" />
	              <label for="radio2">No</label>
	            </td>
	          </tr>
	          <tr>
	            <td>Series C</td>
	            <td>Product C</td>
	            <td>
	              <input type="radio" name="radios" id="radio3" />
	              <label for="radio3">Maybe</label>
	            </td>
	          </tr>
	        </tbody>
	      </table>
	    </div>
	  </div>
	</div>
</body>
</html>