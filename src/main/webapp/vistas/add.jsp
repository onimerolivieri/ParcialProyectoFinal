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
<link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="">
			<center><h1>Agregar Persona</h1></center><br>
			<form action="Controlador">
				ID:<br> <input class="form-control" type="text" name="txtDni"><br>
				Nombres: <br> <input class="form-control" type="text"
					name="txtNom"><br> <center><input class="btn btn-primary"
					type="submit" name="accion" value="Agregar"></center><br>
					<center><a class="btn btn-primary" href="index2.jsp">volver</a></center>
			</form>
		</div>

	</div>
</body>
</html>

<style>
body {
	background: url('img/sombrillas.jpg');
	background-size: 100%;
	background-repeat: no-repeat;
	background-position: top center;
	font-family: 'Kdam Thmor Pro', sans-serif;
}

.container {
	width: 60%;
	height: 64%;
	background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);
	position: absolute;
	top: 40%;
	left: 25%;
	margin-top: -100px;
	margin-left: -100px;
	padding: 25px;
	border-radius: 25px;
	box-shadow: 10px 8px 8px 1px #eef1f5;
	border: 1px solid black;
}

</style>