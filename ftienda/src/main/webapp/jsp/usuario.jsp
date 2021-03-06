<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.edu.unbosque.backtienda.Usuarios"%>
<%@page import="co.edu.unbosque.backtienda.TestJSON"%>
<%@page import="co.edu.unbosque.backtienda.Clientes"%>
<%@page import="co.edu.unbosque.backtienda.TestJSON_clientes"%>
<%@page import="java.util.ArrayList"%>
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
<script src="js/main.js"></script>
<script src="jsp/js/main.js"></script>
<link rel="stylesheet" href="css/formulario.css">
<link rel="stylesheet" href="jsp/css/formulario.css">
<title>Tienda Gen?rica</title>
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
								<label id="labelanimacion"> <i
									class="far fa-address-card"></i> C?dula*
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
									class="far fa-envelope"></i> Correo Electr?nico*</label>
							</div>
						</div>

						<div class="grupo_input">
							<div class="inputBox">
								<input type="password" name="pass" id="pass"> <span
									class="far fa-eye icon" id="mostrar"> <span
									class="pwdtxt" style="cursor: pointer;">Mostrar
										contrase?a</span></span> <label><i class="fas fa-unlock-alt"></i>
									Contrase?a*</label>
							</div>
						</div>

						<div class="grupo_input">
							<div class="inputBox">
								<input type="password" name="pass2" id="pass2"
									onblur="javascript:validarPass();"> <label><i
									class="fas fa-key"></i> Confirmar Contrase?a*</label>
							</div>
						</div>

						<div class="grupo_boton">
							<button class="submit" name="accion" value="agregar">
								<i class="fas fa-user-plus"></i> Crear
							</button>
							<!--<button class="submit" name="accion">
								<i class="fas fa-search"></i> Consultar
							</button>-->
							<button class="submit" name="accion" value="actualizar">
								<i class="far fa-edit"></i> Actualizar
							</button>
						</div>

						<div class="grupo_boton">
							<button class="submit" name="accion" value="eliminar">
								<i class="fas fa-user-times"></i> Eliminar
							</button>
						</div>

						<div id="alert" class="alert"></div>
						<div id="alertpass" class="alert alertpass"></div>
						<div id="alertTable" class="alert alertable"></div>

						<%
						if (request.getAttribute("cond") == "0") {
						%>
						<script type="text/javascript">
							$('#alertTable').html('Usuario existente')
									.slideDown(500);
						</script>
						<%
						} else {
						%>
						<script type="text/javascript">
							$('#alertTable')
									.html('Usuario creado exitosamente')
									.slideDown(500);
						</script>
						<%
						}
						%>
					</form>
				</div>
				<iframe id="tableUsuario" class="bdtable" src="jsp/TraeUsuarios.jsp">
				</iframe>

			</article>
		</div>
	</section>






	<!-- Pagina clientes -->
	<section>
		<div class="secciones">
			<article id="tab2">
				<div class="box">
					<form method="get" action="./Controlador_clientes" class="form">
						<div class="grupo_input">
							<div class="inputBox">
								<input type="hidden" name="menu" value="Clientes"> <input
									type="number" name="cedula1" id="cedulaCliente"> <label><i
									class="far fa-address-card"></i> C?dula*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="number" name="telefono1" id="telefonoCliente">
								<label><i class="fas fa-phone"></i> Tel?fono*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="nombre1" id="nombreCliente"> <label><i
									class="fas fa-file-signature"></i> Nombre completo*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="email" name="emailP1" id="emailCliente"
									onblur="javascript:validarCliente();"> <label><i
									class="far fa-envelope"></i> Correo Electr?nico*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="direccion1" id="direccionCliente">
								<label><i class="fas fa-map-marked"></i> Direcci?n*</label>
							</div>
						</div>
						<br>

						<div class="grupo_boton">
							<button class="submit" name="accion1" value="agregar1">
								<i class="fas fa-user-plus"></i> Crear
							</button>
							<button class="submit" name="accion1" value="actualizar1">
								<i class="far fa-edit"></i> Actualizar
							</button>
						</div>

						<div class="grupo_boton">
							<!-- <button class="submit" name = "accion" value = "consultar">
							<i class="fas fa-search"></i> Consultar
						</button>-->
							<button class="submit" name="accion1" value="eliminar1">
								<i class="fas fa-user-times"></i> Eliminar
							</button>
						</div>

						<div id="alert2" class="alert"></div>

						<%
						if (request.getAttribute("cond1") == "0") {
						%>
						<script type="text/javascript">
							alert("Usuario existente");
						</script>
						<%
						}
						%>
					</form>
				</div>
				<iframe id="tableUsuario" class="bdtable"
					src="jsp/TraeUsuariosClientes.jsp"> </iframe>
			</article>
		</div>
	</section>
	
	<!-- Pagina Proveedores -->
	<section>
		<div class="secciones">
			<article id="tab3">
				<div class="box">
					<form method="get" action="./Controlador_proveedores" class="form">
						<div class="grupo_input">
							<div class="inputBox">
								<input type="number" name="nitP" id="nitP" required>
								<label><i class="far fa-building"></i> NIT*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="number" name="ciudadP" id="ciudadProveedor" >
								<label><i class="fas fa-phone"></i>Telefono*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="direccionP" id="direccionProveedpr" >
								<label><i class="fas fa-file-signature"></i>Nombre completo*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="email" name="nombreP" id="nombreProveedor" 
								onblur="javascript:validarProveedor();" >
								<label><i class="fas fa-file-envelope"></i>Correo Electronico*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="telefonoP" id="telefonoProveedor" >
								<label><i class="fas fa-map-marked"></i> Direccion*</label>
							</div>
						</div>
						</br>
						<div class="grupo_boton">
							<button class="submit" name="accion3" value="agregar3">
								<i class="fas fa-user-plus">Crear</i>
							</button>
							<button class="submit" name="accion3" value="actualizar3">
								<i class="far fa-edit">Actualizar</i>
							</button>
						</div>
						<div class="grupo_boton">
							<button class="submit" name="accion3" value="eliminar3">
								<i class="fas fa-user-times"></i> Eliminar
							</button>
						</div>
						<div id="alert2" class="alert"></div>
												<%
						if (request.getAttribute("cond2") == "0") {
						%>
						<script type="text/javascript">
							alert("Nit existente");
						</script>
						<%
						}
						%>
					</form>
				</div>
				<iframe id="tableUsuario" class="bdtable"
					src="jsp/TraeProveedores.jsp"></iframe>
			</article>
		</div>
	</section>
	
	<!-- Pagina Productos -->
	<section>
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
	</section>
	
	<!-- Pagina Ventas -->
	<section>
		<div class="secciones">
			<article id="tab5">
				<div class="box">
					<form method="get" action="./ControladorVentas" class="form">
					<div class="grupo_input">
							<div class="inputBox">
								<input type="number" name="cedulaCliente" id="nit" required>
								<label><i class="far fa-building"></i> Cedula Cliente*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="telefonoP" class="form-contro"
									value="${clienteNombre}"> <label><i
									class="fas fa-phone"></i> Cliente*</label>
							</div>
						</div>
						<div class="grupo_boton">

							<button class="submit" name="accion3" value="BuscarCliente">
								<i class="fas fa-user-plus"></i> Consultar
							</button>
						</div>
						<br> <br>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="codigoProducto" id="nombreProveedor"
									required> <label><i
									class="fas fa-file-signature"></i> Codigo Producto*</label>
							</div>
						</div>
						<br>
						<div class="grupo_boton">
							<button class="submit" name="accion3" value="BuscarProducto">
								<i class="fas fa-user-plus"></i> Consultar Producto
							</button>
						</div>
						<br>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="nombreProducto" id="nombreProveedor"
									value="${nombreProducto1}"> <label><i
									class="fas fa-file-signature"></i> Codigo Producto*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="precioProducto" id="nombreP"
									value="${precio}"> <label><i
									class="fas fa-file-signature"></i> Cuesta*</label>
							</div>
						</div>

						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="ivaProducto" id="direccionProveedor"
									value="${ivaProducto}"> <label><i
									class="fas fa-map-marked"></i> Direcci?n*</label>
							</div>
						</div>
						<div class="grupo_input">
							<div class="inputBox">
								<input type="text" name="cantidad" id="cantidad"
									value="${cantidadProducto}" required> <label><i
									class="fas fa-map-marked"></i> Cantidad*</label>
							</div>
						</div>


						<div class="grupo_boton">
							<button class="submit" name="accion3" value="agregarProducto">
								<i class="fas fa-user-plus"></i> Agregar Producto
							</button>
						</div>
						<div id="alert3" class="alert"></div>
						<div></div>
					</form>
				</div>
								
			</article>
		</div>
	</section>
	
	
	
	
	<!-- Pagina Reportes -->
	<section>
		<div class="secciones">
			<article id="tab6">
				<div class="box box_reportes">
					<div class="container">
						<form method="get" action="./Controlador" class="form">
							<input type="hidden" name="menu" value="Reportes">
							<div class="grupo_boton boton_flex">
								<button class="submit submit_boton fas far-search"
								   name="accion" value="consultar">Consultar</button>
								<br>


								<!-- Boton consultar -->
								<button class="submit submit_boton fas fa-search" name="accion"
									value="consultarCliente">Consultar</button>
								<br>

								<!-- Boton consultar -->
								<button class="submit submit_boton fas fa-search" name="accion"
									value="consultar">Consult</button>
							</div>
						</form>
					</div>
				</div>
			</article>
		</div>
	</section>




	<script src="js/formulario.js"></script>
	<script src="jsp/js/formulario.js"></script>
	<script src="js/usuario.js"></script>
	<script src="jsp/js/usuario.js"></script>
</body>
</html>