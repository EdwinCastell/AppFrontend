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
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Cedula</th>
					<th scope="col">Nombre</th>
					<th scope="col">Email</th>
					<th scope="col">Usuario</th>
					<th scope="col">Password</th>
				</tr>
			</thead>
			<tbody>
				<%
				try {
					ArrayList<Usuarios> lista = TestJSON.getJSON();
					request.setAttribute("lista", lista);

					for (Usuarios usuario : lista) {
				%>
				<tr>
					<td><%=usuario.getCedula_usuario()%></td>
					<td><%=usuario.getNombre_usuario()%></td>
					<td><%=usuario.getEmail_usuario()%></td>
					<td><%=usuario.getPassword()%></td>
					<td><%=usuario.getUsuario()%></td>
				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>