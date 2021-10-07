<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.edu.unbosque.backtienda.Clientes"%>
<%@page import="co.edu.unbosque.backtienda.TestJSON_clientes"%>
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
		<form method="get" action="./Controlador_clientes" class="form">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Cedula</th>
						<th scope="col">Direccion</th>
						<th scope="col">Email</th>
						<th scope="col">Nombre</th>
						<th scope="col">Telefono</th>
						<!-- <th scope="col">Actualizar</th> -->
						<!-- <th scope="col">Eliminar</th> -->
					</tr>
				</thead>
				<tbody>
					
					<%

					try {
						ArrayList<Clientes> lista = TestJSON_clientes.getJSON();
						request.setAttribute("lista", lista);
						String cedula = request.getParameter("cedula");
						for (Clientes cliente : lista) {

					%>

						
					<tr>
						<td><%=cliente.getCedula_cliente()%></td>
						<td><%=cliente.getDireccion_cliente()%></td>
						<td><%=cliente.getEmail_cliente()%></td>
						<td><%=cliente.getNombre_cliente()%></td>
						<td><%=cliente.getTelefono_cliente()%></td>
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