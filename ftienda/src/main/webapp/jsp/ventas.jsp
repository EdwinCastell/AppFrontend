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
			<form method="get" action="../DemoServlet" class="form">
				<div class="card">
					<div class="card-body">
						<div class="form-group">
							<label>Datos Cliente</label>
						</div>
						<input type="hidden" name="menu" value="Ventas"> 
						<input type="hidden" name="UsuarioActivo" value="${usuarioSeleccionado.getCedula_usuario()}" >
						<div class="form-group d-flex">
							<div class="col-sm-6 d-flex">
								<input type="number" name="cedulacliente" class="form-control"
									placeholder="cedula cliente" value="${clienteSeleccionado.getCedula_cliente()}"> 
								<input type="submit" name="accion" value="BuscarCliente"
									class="btn btn-outline-info">
							</div>
							<div class="col-sm-6">
								<input type="text" name="nombrecliente" class="form-control"
									placeholder="Nombre Cliente" value="${clienteSeleccionado.getNombre_cliente()}">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<iframe id="tableUsuario" class="bdtable" src="jsp/TraeUsuarios.jsp">
	</iframe>
</body>
</html>