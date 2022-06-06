<%@page import="modeloDAO.PersonaDAO"%>
<%@page import="modelo.Persona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="container">

		<div>
			<%
			PersonaDAO dao = new PersonaDAO();
			int id = Integer.parseInt((String) request.getAttribute("idper"));
			Persona p = (Persona) dao.list(id);
			%>
			<center>
				<h1>Modificar Persona</h1>
			</center>
			<form action="Controlador">
				ID:<br> <input class="form-control" type="text" name="txtDni"
					value="<%=p.getDni()%>"><br> Nombres: <br> <input
					class="form-control" type="text" name="txtNom"
					value="<%=p.getNom()%>"><br>

				<center>
					<input type="hidden" name="txtid" value="<%=p.getId()%>"> <input
						class="btn btn-primary" type="submit" name="accion"
						value="Actualizar">
				</center>
				<br>
				<center>
					<a class="btn btn-primary" href="Controlador?accion=listar">Regresar</a>
				</center>
			</form>
		</div>

	</div>
</body>
</html>

<style>
body {
	background: url('img/hombre.jpg');
	background-size: 100%;
	background-repeat: no-repeat;
	background-position: top center;
	font-family: 'Kdam Thmor Pro', sans-serif;
}

.container {
	width: 60%;
	height: 64%;
	background-image: linear-gradient(to top, #09203f 0%, #537895 100%);
	position: absolute;
	top: 40%;
	left: 25%;
	margin-top: -100px;
	margin-left: -100px;
	padding: 25px;
	border-radius: 25px;
	box-shadow: 10px 8px 8px 1px #5d4157;
	border: 1px solid black;
}
</style>