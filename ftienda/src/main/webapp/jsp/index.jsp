<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta charset="ISO-8859-1">
<title>Ingreso</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<header>
		<h1>Los solfamitas</h1>
	</header>
	<div class="box">
		<h2>Ingreso</h2>
		<form method="get" action="../DemoServlet">
			<div class="inputBox">
				<input type="text" name="txtusuario" required>
				<label><i class="fas fa-user"></i> Usuario*</label>
			</div>
			<div class="inputBox">
				<input type="password" name="txtpassword" required>
				<label><i class="fas fa-lock"></i> Password*</label>
			</div>				
			<input type="submit" name= "accion" value="Ingresar" class="btn btn-primary">		
		</form>
	</div>
</body>
</html>