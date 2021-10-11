<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<script src="js/main.js"></script>
<link rel="stylesheet" href="css/ventas.css">
<link rel="stylesheet" href="jsp/css/ventas.css">
<link rel="stylesheet" href="css/tables.css">
<link rel="stylesheet" href="jsp/css/tables.css">
<title>Los solfamitas</title>
</head>
<body>
	<div class="box">
		<div class="container">
			<form method="get" action="./Controlador" class="form">
				<div class="grupo_input grupo_boton">
					<input type="hidden" name="menu" value="Usuarios">
					<!-- primer grupo -->
					<div class="inputBox flex">
						
						<!-- cedula -->
						<input type="number" name="cedula" id="cedulaVentas"
							placeholder=" Cédula">

						<!-- Boton consultar -->
						<button class="submit fas fa-search" name="accion"
							value="consultar">Consultar</button>

						<!-- clientes -->
						<input type="text" name="clientes" id="clientes_ventas"
							placeholder=" Cliente">
						<!-- consecutivo -->
						<input type="text" name="consecutivo" id="consecutivo"
							placeholder=" Consecutivo">
					</div><br>
					<!-- Fin del primer grupo-->
					
					<!-- Inicio div medio -->

					<!-- segundo grupo -->
					<div class="inputBox flex">
						<!-- cod. producto -->
						<input type="number" name="cod_producto" id="cod_producto"
							placeholder=" Cod. Producto">

						<!-- Boton consultar -->
						<button class="submit fas fa-search" name="accion"
							value="consultar">Consultar</button>

						<!-- producto -->
						<input type="text" name="producto" id="producto"
							placeholder=" Nombre Producto">
						<!-- cantidad -->
						<input type="number" name="cantidad" id="cantidad"
							placeholder=" Cantidad">
						<!-- Valor total -->
						<input type="number" name="valor_total" id="valor_total"
							placeholder=" Valor Total">
					</div>
					<!-- Fin del segundo grupo-->
					<!-- Tercer grupo -->
					<div class="inputBox flex">
						<!-- cod. producto -->
						<input type="number" name="cod_producto" id="cod_producto">

						<!-- Boton consultar -->
						<button class="submit fas fa-search" name="accion"
							value="consultar">Consultar</button>

						<!-- producto -->
						<input type="text" name="producto" id="producto">
						<!-- cantidad -->
						<input type="number" name="cantidad" id="cantidad">
						<!-- Valor total -->
						<input type="number" name="valor_total" id="valor_total">
					</div>
					<!-- Fin del tercer grupo-->
					<!-- Cuarto grupo -->
					<div class="inputBox flex">

						<!-- cod. producto -->
						<input type="number" name="cod_producto" id="cod_producto">

						<!-- Boton consultar -->
						<button class="submit fas fa-search" name="accion"
							value="consultar">Consultar</button>

						<!-- producto -->
						<input type="text" name="producto" id="producto">
						<!-- cantidad -->
						<input type="number" name="cantidad" id="cantidad">
						<!-- Valor total -->
						<input type="number" name="valor_total" id="valor_total">
					</div>
					<!-- Fin del cuarto grupo-->
					<!-- Fin div medio -->
					
					<!-- Inicio div final -->
					<div class="inputBox box_final flex_final">
						<!-- total venta -->
						<input type="number" name="total_venta" id="total_venta"
							placeholder=" Total Venta">
					</div>
					<div class="inputBox box_final flex_final">
						<!-- total iva -->
						<input type="number" name="total_iva" id="total_iva"
							placeholder=" Total IVA">
					</div>
					<div class="inputBox box_final flex_final">
						<!-- Boton confirmar -->
						<button class="submit fas fa-check-double" name="accion"
							value="consultar">Confirmar</button>
						<!-- total con iva -->
						<input type="number" name="total_civa" id="total_civa"
							placeholder=" Total con IVA">						
					</div>
				</div>
			</form>
		</div>
	</div>
	<iframe id="tableUsuario" class="bdtable" src="jsp/TraeUsuarios.jsp">
	</iframe>
</body>
</html>