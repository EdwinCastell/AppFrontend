<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet" href="css/formulario.css">
<link rel="stylesheet" href="jsp/css/formulario.css">


<script src="js/main.js"></script>
<script src="jsp/js/main.js"></script>
<title>Tienda Genérica</title>
</head>
<body>
	<!-- Cabecera -->
	<header>
		<h1></h1>
	</header>

	<!-- Manejo de tabs para cambiar de hoja dentro de la misma pagina -->
	<section>
		<div class="wrap">
			<ul class="tabs">
				<li><a href="#tab1"><span class="fas fa-user"></span><span
						class="tab-text"> Usuarios</span></a></li>
				<li><a href="#tab2"><span class="fas fa-users"></span><span
						class="tab-text"> Clientes</span></a></li>
				<li><a href="#tab3"><span class="fas fa-truck"></span><span
						class="tab-text"> Proveedores</span></a></li>
				<li><a href="#tab4"><span class="fas fa-box-open"></span><span
						class="tab-text"> Productos</span></a></li>
				<li><a href="#tab5"><span class="fas fa-cart-arrow-down"></span><span
						class="tab-text"> Ventas</span></a></li>
				<li><a href="#tab6"><span class="fas fa-file-export"></span><span
						class="tab-text"> Reportes</span></a></li>
			</ul>
		</div>
	</section>
	<!-- Pagina Usuarios -->
	<section>
		<div class="secciones">
			<article id="tab1">
				<div class="box">
					<form method="get" action="./Controlador" class="form">

						<div class="grupo_input">
							<div class="inputBox">
								<input type="hidden" name="menu" value="Usuarios"> <input
									type="number" name="cedula" id="cedulaUsuario animacion">
								<label id="labelanimacion"
									class="animate__animated animate__swing"> <i
									class="far fa-address-card"></i> Cédula*
								</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="usuario" id="usuario"> <label><i
									class="far fa-user"></i> Usuario*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="nombre" id="nombreUsuario"> <label><i
									class="fas fa-file-signature"></i> Nombre completo*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="email" name="email" id="emailUsuario"
									onblur="javascript:validarUsuario();"> <label><i
									class="far fa-envelope"></i> Correo Electrónico*</label>
							</div>
						</div>

						<div class="grupo_input">
							<div class="inputBox">
								<input type="password" name="pass" id="pass"> <span
									class="far fa-eye icon" id="mostrar"> <span
									class="pwdtxt" style="cursor: pointer;">Mostrar
										contraseña</span></span> <label><i class="fas fa-unlock-alt"></i>
									Contraseña*</label>
							</div>
						</div>

						<div class="grupo_input">
							<div class="inputBox">
								<input type="password" name="pass2" id="pass2"
									onblur="javascript:validarPass();"> <label><i
									class="fas fa-key"></i> Confirmar Contraseña*</label>
							</div>
						</div>

						<div class="grupo_boton">
							<button class="submit" name="accion" value="agregar">
								<i class="fas fa-user-plus"></i> Crear
							</button>
							<!--<button class="submit" name="accion">
								<i class="fas fa-search"></i> Consultar
							</button>-->
							<!-- <button class="submit" name="accion" value="actualizar">
								<i class="far fa-edit"></i> Actualizar
							</button>-->
						</div>
						<div class="grupo_boton">

							<!-- <button class="submit" name="accion" value="eliminar">
								<i class="fas fa-user-times"></i> Eliminar
							</button>-->
						</div>
						<div id="alert" class="alert"></div>
						<div id="alertpass" class="alert alertpass"></div>
					</form>
				</div>
				<iframe id="tableUsuario" class="bdtable" src="jsp/TraeUsuarios.jsp">
				</iframe>
			</article>
		</div>
	</section>

	<!-- Pagina clientes -->
	<div class="secciones">
		<article id="tab2">
			<div class="box">
				<form method="get" action="./DemoServlet" class="form">
					<div class="grupo_input">
						<div class="inputBox">
							<input type="number" name="cedula" id="cedulaCliente" required>
							<label><i class="far fa-address-card"></i> Cédula*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="number" name="telefono" id="telefonoCliente"
								required> <label><i class="fas fa-phone"></i>
								Teléfono*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="nombre" id="nombreCliente" required>
							<label><i class="fas fa-file-signature"></i> Nombre
								completo*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="email" name="emailP" id="emailCliente"
								onblur="javascript:validarCliente();" required> <label><i
								class="far fa-envelope"></i> Correo Electrónico*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="direccion" id="direccionCliente"
								required> <label><i class="fas fa-map-marked"></i>
								Dirección*</label>
						</div>
					</div>
					<br>

					<div class="grupo_boton">
						<button class="submit">
							<i class="fas fa-user-plus"></i> Crear
						</button>
						<button class="submit">
							<i class="far fa-edit"></i> Actualizar
						</button>
					</div>

					<div class="grupo_boton">
						<button class="submit">
							<i class="fas fa-search"></i> Consultar
						</button>
						<button class="submit">
							<i class="fas fa-user-times"></i> Eliminar
						</button>
					</div>

					<div id="alert2" class="alert"></div>
				</form>
			</div>
			<iframe id="tableUsuario" class="bdtable" src="jsp/TraeClientes.jsp">
			</iframe>
		</article>
	</div>

	<!-- Pagina proveedores -->
	<div class="secciones">
		<article id="tab3">
			<div class="box">
				<form method="get" action="./DemoServlet" class="form">
					<div class="grupo_input">
						<div class="inputBox">
							<input type="number" name="nit" id="nit" required> <label><i
								class="far fa-building"></i> NIT*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="number" name="telefonoP" id="telefonoProveedor"
								required> <label><i class="fas fa-phone"></i>
								Teléfono*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="nombreP" id="nombreProveedor" required>
							<label><i class="fas fa-file-signature"></i> Nombre
								completo*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="email" name="emailP" id="emailProveedor"
								onblur="javascript:validarProveedor();" required> <label><i
								class="far fa-envelope"></i> Correo Electrónico*</label>
						</div>
					</div>
					<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="direccion" id="direccionProveedor"
								required> <label><i class="fas fa-map-marked"></i>
								Dirección*</label>
						</div>
					</div>
					<br>

					<div class="grupo_boton">
						<button class="submit">
							<i class="fas fa-user-plus"></i> Crear
						</button>
						<button class="submit">
							<i class="far fa-edit"></i> Actualizar
						</button>
					</div>

					<div class="grupo_boton">
						<button class="submit">
							<i class="fas fa-search"></i> Consultar
						</button>
						<button class="submit">
							<i class="fas fa-user-times"></i> Eliminar
						</button>
					</div>

					<div id="alert3" class="alert"></div>
				</form>
			</div>
		</article>
	</div>

	<!-- Pagina Productos -->
	<div class="secciones">
		<article id="tab4">
			<div class="box box_file">
				<form method="get" action="./DemoServlet" class="form">

					<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="archivo" id="archivo" required>
							<label><i class="far fa-file-alt"></i> Nombre del
								archivo*</label>
						</div>
					</div>
					<div class="grupo_input grupo_file" id="file">
						<p class="add_texto">
							<i class="far fa-file-image"></i> Examinar
						</p>
						<input type="file" class="file" name="file" id="file"
							accept="image/png, .jpeg, .jpg, image/gif">
					</div>

					<div class="grupo_boton">
						<button class="submit">
							<i class="fas fa-file-upload"></i> Cargar
						</button>
					</div>
					<!--Previsualizacion-->
					<div id="preview" class="styleImage"></div>
				</form>
			</div>
		</article>
	</div>

	<script src="js/formulario.js"></script>
	<script src="jsp/js/formulario.js"></script>
	<script src="js/usuario.js"></script>
	<script src="jsp/js/usuario.js"></script>
</body>
</html>