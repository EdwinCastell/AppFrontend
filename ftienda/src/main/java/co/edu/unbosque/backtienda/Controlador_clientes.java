package co.edu.unbosque.backtienda;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;


@WebServlet("/Controlador_clientes")
public class Controlador_clientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Controlador_clientes() {
        super();
        // TODO Auto-generated constructor stub
    }

    public int user(long cedula) throws IOException, ParseException {
    	
		ArrayList<Clientes> lista = TestJSON_clientes.getJSON();

		for (Clientes cliente : lista) {
			if(cedula == cliente.getCedula_cliente()) {
				return 0;
			}
			
		}
    	return 1;
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion = request.getParameter("accion1");
		String cedula = request.getParameter("cedula1");
		String telefono = request.getParameter("telefono1");
		String nombre = request.getParameter("nombre1");
		String email = request.getParameter("emailP1");
		String direccion = request.getParameter("direccion1");
		
		
		int respuesta = 0;
		
		if (accion.equals("agregar1")) {
			int cond = 0;
			try {
				cond = user(Long.parseLong(cedula));
			} catch (NumberFormatException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			if (cond == 0) {
				request.setAttribute("cond1", "0");
				try {
					PrintWriter write = response.getWriter();
					respuesta = 200;
					if (respuesta == 200) {
						
						request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
								response);
					} else {
						
						write.println("Error: " + respuesta);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}else {
				request.setAttribute("cond1", "1");
				Clientes cliente = new Clientes();
				
				cliente.setCedula_cliente(Long.parseLong(cedula));
				cliente.setDireccion_cliente(direccion);
				cliente.setEmail_cliente(email);
				cliente.setNombre_cliente(nombre);
				cliente.setTelefono_cliente(telefono);
				
				
				try {
					PrintWriter write = response.getWriter();
					respuesta = TestJSON_clientes.postJSON(cliente);
					if (respuesta == 200) {
						
						request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
								response);
					} else {
						
						write.println("Error: " + respuesta);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
				
		}else if  (accion.equals("eliminar1")) {
			try {
				PrintWriter write = response.getWriter();
				respuesta = TestJSON_clientes.deleteJSON(Long.parseLong(cedula));
				if (respuesta == 200) {
					request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
							response);
				} else {
					
					write.println("Error: " + respuesta);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		} else if (accion.equals("actualizar1")) {
			
			
			Clientes cliente = new Clientes();
			
			cliente.setCedula_cliente(Long.parseLong(cedula));
			cliente.setDireccion_cliente(direccion);
			cliente.setEmail_cliente(email);
			cliente.setNombre_cliente(nombre);
			cliente.setTelefono_cliente(telefono);
			
			try {
				PrintWriter write = response.getWriter();
				respuesta = TestJSON_clientes.putJSON(cliente, Long.parseLong(cedula));
				if (respuesta == 200) {
					request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
							response);
				} else {
					
					write.println("Error: " + respuesta);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
