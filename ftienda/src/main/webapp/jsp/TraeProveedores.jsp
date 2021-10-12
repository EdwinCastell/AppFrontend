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
<title>Insert title here</title>
</head>
<body>

	<div class="col-md-8">
		<form method="get" action="./Controlador_proveedores" class="form">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Nit</th>
						<th scope="col">Ciudad</th>
						<th scope="col">Direccion</th>
						<th scope="col">Nombre</th>
						<th scope="col">Telefono</th>
						<!-- <th scope="col">Actualizar</th> -->
						<!-- <th scope="col">Eliminar</th> -->
					</tr>
				</thead>
				<tbody>
					
					<%

					try {
						ArrayList<Proveedores> lista = TestJSON_proveedores.getJSON();
						request.setAttribute("lista", lista);
						String cedula = request.getParameter("cedula");
						for (Proveedores proveedor : lista) {

					%>

						
					<tr>
						<td><%=proveedor.getNit_proveedores()%></td>
						<td><%=proveedor.getCiudad_proveedores()%></td>
						<td><%=proveedor.getDireccion_proveedores()%></td>
						<td><%=proveedor.getNombre_proveedores()%></td>
						<td><%=proveedor.getTelefono_proveedores()%></td>
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