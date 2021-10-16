<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.edu.unbosque.backtienda.Usuarios"%>
<%@page import="co.edu.unbosque.backtienda.TestJSON"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/tables.css">
<link rel="stylesheet" href="jsp/css/tables.css">
<title>Insert title here</title>
</head>
<body>

	<div class="col-md-8">
		<form method="get" action="./ControladorVentas" class="form">
			<div class="card">
				<div class="card-header">
					<!-- <div class="form-group row">-->
						<label class="card-header">Numero de factura</label>
						<div class="grupo_input">
						<div class="inputBox">
							<input type="text" name="cantidad" id="cantidad" value="${numeroF}" >
						</div>
					</div>
						
					<!--  </div>-->			
				</div>
			</div>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Cedula</th>
						<th scope="col">Nombre</th>
						<th scope="col">Email</th>
						<th scope="col">Usuario</th>
						<th scope="col">Password</th>
						<!-- <th scope="col">Actualizar</th> -->
						<!-- <th scope="col">Eliminar</th> -->
					</tr>
				</thead>
				<tbody>
					
					<%

					try {
						ArrayList<Usuarios> lista = TestJSON.getJSON();
						request.setAttribute("lista", lista);
						String cedula = request.getParameter("cedula");
						for (Usuarios usuario : lista) {

					%>

						
					<tr>
						<td><%=usuario.getCedula_usuario()%></td>
						<td><%=usuario.getNombre_usuario()%></td>
						<td><%=usuario.getEmail_usuario()%></td>
						<td><%=usuario.getUsuario()%></td>
						<td><%=usuario.getPassword()%></td>
						<!--<td><button class="submit actualizar" name="accion"
								value="actualizar">Actualizar</button></td>-->
						<!-- <td><button class="submit" name="accion" value="eliminar">
								<i class="fas fa-user-times"></i> Eliminar
							</button> -->
						
						<!-- <button class="submit eliminar" name="accion"
								value="eliminar">Eliminar</button>--></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</tbody>
			</table>
		</form>
	</div>

</body>
</html>