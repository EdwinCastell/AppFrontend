<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.edu.unbosque.backtienda.Proveedores"%>
<%@page import="co.edu.unbosque.backtienda.TestJSON_proveedores"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/tables.css">
<link rel="stylesheet" href="jsp/css/tables.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<title>Creacion Proveedores</title>
</head>
<body>
	<div class="row">
		<div class="col-md-7 seccion2">
			<form method ="get" action="./Controlador" class="form">
			<div class="card">
				<div class="card-header">
					<!-- <div class="form-group row">-->
						<label class="card-header">Numero de factura</label>
						<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="cantidad" id="cantidad" value="${cantidadProducto}" >
						</div>
					</div>
						
					<!--  </div>-->			
				</div>
				<div class="card-body">
					<table class="thead-dark">
						<tr>
							<th>#</th>
							<th>codigo</th>
							<th>producto</th>
							<th>precio</th>
							<th>cantidad</th>
							<th>iva</th>
							<th>total</th>
						</tr>
					</table>
				</div>
			</div>
			</form>
		</div>
	</div>

	
</body>
</html>