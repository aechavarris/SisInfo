<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@include file="verify.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Se ha logado correctamente</h1>
<h2><c:out value="${sessionScope.user.userName}" /> </h2>
</body>
</html>