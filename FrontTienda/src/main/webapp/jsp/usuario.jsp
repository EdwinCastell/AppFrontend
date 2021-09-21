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
						<label><i class="far fa-address-card"></i> Cedula*</label>
					</div>					
				</div>
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="text" name="usuario" required>
						<label><i class="far fa-user"></i> Usuario*</label>
					</div>					
				</div>
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="text" name="nombre" required>
						<label><i class="fas fa-file-signature"></i> Nombre completo*</label>
					</div>				
				</div>					
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="email" name="email" id="email" required>
						<label><i class="far fa-envelope"></i> Correo Electrónico*</label>
					</div>					
				</div>
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="password" name="pass" required>
						<label><i class="fas fa-unlock-alt"></i> Contraseña*</label>
					</div>					
				</div>				
				<div class="grupo_input"> 
					<div class="inputBox">
						<input type="password" name="pass2" required>
						<label><i class="fas fa-key"></i> Confirmar Contraseña*</label>
					</div>					
				</div>
				<div class="grupo_boton">
					<button class="submit"><i class="fas fa-user-plus"></i>  Crear</button>
					<button class="submit"><i class="far fa-edit"></i>  Actualizar</button>					
				</div>
				<div class="grupo_boton">
					<button class="submit"><i class="fas fa-search"></i>  Consultar</button>
					<button class="submit"><i class="fas fa-user-times"></i>  Eliminar</button>
				</div>					
			</form>
		</div>
		
		</article>							
	</div>		
</body>
</html>