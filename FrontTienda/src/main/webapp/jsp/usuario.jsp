<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/usuario.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/main.js"></script>
<meta http-equiv="refresh" content="500">
<title>Tienda Genérica</title>
</head>
<body>
	<header>
		<h1>Tienda Genérica</h1>
	</header>
	<div class="wrap">
		<ul class="tabs">
			<li><a href="#tab1"><span class="fas fa-user"></span><span class="tab-text"> Usuarios</span></a></li>
			<li><a href="#tab2"><span class="fas fa-users"></span><span class="tab-text"> Clientes</span></a></li>
			<li><a href="#tab3"><span class="fas fa-truck"></span><span class="tab-text"> Proveedores</span></a></li>
			<li><a href="#tab4"><span class="fas fa-cart-arrow-down"></span><span class="tab-text"> Ventas</span></a></li>
			<li><a href="#tab4"><span class="fas fa-file-export"></span><span class="tab-text"> Reportes</span></a></li>
		</ul>
	</div>
	
	<div class="secciones">
		<article id="tab1">
		<div class="box">			
			<form action=""  class="form">
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="number" name="cedula" required>
						<label>Cedula*</label>
					</div>					
				</div>
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="text" name="usuario" required>
						<label>Usuario*</label>
					</div>					
				</div>
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="text" name="nombre" required>
						<label>Nombre completo*</label>
					</div>				
				</div>					
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="text" name="email" required>
						<label>Correo Electrónico*</label>
					</div>					
				</div>
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="password" name="pass" required>
						<label>Contraseña*</label>
					</div>					
				</div>				
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="password" name="pass2" required>
						<label>Confirmar Contraseña*</label>
					</div>					
				</div>
				<div class="grupo_boton">
					<input type="submit" id="boton" name="btnCrear" value="Crear">						
					<input type="submit" id="boton" name="btnActualizar" value="Actualizar">
				</div>
				<div class="grupo_boton">
					<input type="submit" id="boton" name="btnConsultarr" value="Consultar">
					<input type="submit" id="boton" name="btnBorrar" value="Eliminar">
				</div>					
			</form>
		</div>
		</article>							
	</div>		
</body>
</html>