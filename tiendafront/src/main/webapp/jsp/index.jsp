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
	<h2>Bienvenidos a la tienda genérica</h2>
	
	<form method="get" action="./DemoServlet">
		<table>
			<tr>
				<td><label>Usuario*</label></td>
				<td><input type="text" name="Usuario"></td>
				<td><label>Contraseña*</label></td>
				<td><input type="text" name="Contraseña"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Ingresar"></td>
			</tr>		
		</table>		
	</form>
</body>

</html>