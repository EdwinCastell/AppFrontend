<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta charset="ISO-8859-1">
<title>Ingreso</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<h2>Bienvenidos a la tienda gen�rica</h2>
	<div class="box">
		<h2>Ingreso</h2>
		<form method="get" action="../DemoServlet">
			<div class="inputBox">
				<input type="text" name="txtusuario" required>
				<label>Usuario*</label>
			</div>
			<div class="inputBox">
				<input type="password" name="txtpassword" required>
				<label>Password</label>
			</div>				
			<input type="submit" name= "accion" value="Ingresar" class="btn btn-primary">		
		</form>
	</div>
</body>
</html>