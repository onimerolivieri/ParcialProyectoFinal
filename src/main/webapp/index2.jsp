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
</head>
<body>
	<h1 style="color:white; margin-top:25px;">Que deseas hacer</h1>
	<div class="contenedor">
		<div class="boton">
			<a class="btn btn-success btn-lg" href="Controlador?accion=listar">Listar
				personas</a>
		</div>
		<div class="boton1">
			<a class="btn btn-success btn-lg" href="Controlador?accion=add">Agregar</a>
		</div>

	</div>
</body>
</html>

<style>
* {
	margin: 0;
	padding: 0;
}

.contenedor {
	background: linear-gradient(to bottom, rgba(255,255,255,0.15) 0%, rgba(0,0,0,0.15) 100%), radial-gradient(at top center, rgba(255,255,255,0.40) 0%, rgba(0,0,0,0.40) 120%) #989898;
 background-blend-mode: multiply,multiply;
	width: 50%;
	height: 200px;
	margin: 150px auto;
	display: flex;
	align-items: flex-end;
	flex-direction: row;
	border-radius: 25px;
}

body {
	text-align: center;
	background: url('img/calabera.jpg');
	background-size: 100%;
	background-repeat: no-repeat;
	background-position: center;
	font-family: 'Kdam Thmor Pro', sans-serif;
}

.boton {
	width: 50%;
	margin-bottom: 70px;
}

.boton1 {
	width: 50%;
	margin-bottom: 70px;
}
</style>