
<jsp:include page="validar.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Principal</title>
</head>
<body>
	<jsp:include page="encabezado.jsp" />
	Bienvenido ${sessionScope.usuario.nombre}
</body>
</html>