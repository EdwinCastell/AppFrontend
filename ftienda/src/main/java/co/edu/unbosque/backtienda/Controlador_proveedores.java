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


@WebServlet("/Controlador_proveedores")
public class Controlador_proveedores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Controlador_proveedores() {
        super();
        // TODO Auto-generated constructor stub
    }

	public int user(long nit) throws IOException, ParseException {
	    	
			ArrayList<Proveedores> lista = TestJSON_proveedores.getJSON();
	
			for (Proveedores proveedor : lista) {
				if(nit == proveedor.getNit_proveedores()) {
					return 0;
				}
				
			}
	    	return 1;
	    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion = request.getParameter("accion2");
		String nit = request.getParameter("nitP");
		String ciudad = request.getParameter("ciudadP");
		String direccion = request.getParameter("direccionP");
		String nombre = request.getParameter("nombreP");
		String telefono = request.getParameter("telefonoP");
		
		
		int respuesta = 0;
		
		if (accion.equals("agregar2")) {
			int cond = 0;
			try {
				cond = user(Long.parseLong(nit));
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
				request.setAttribute("cond2", "0");
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
				request.setAttribute("cond2", "1");
				Proveedores proveedor = new Proveedores();
				
				proveedor.setNit_proveedores(Long.parseLong(nit));
				proveedor.setCiudad_proveedores(ciudad);
				proveedor.setDireccion_proveedores(direccion);
				proveedor.setNombre_proveedores(nombre);
				proveedor.setTelefono_proveedores(telefono);
				
				
				try {
					PrintWriter write = response.getWriter();
					respuesta = TestJSON_proveedores.postJSON(proveedor);
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
				
		}else if  (accion.equals("eliminar2")) {
			try {
				PrintWriter write = response.getWriter();
				respuesta = TestJSON_proveedores.deleteJSON(Long.parseLong(nit));
				if (respuesta == 200) {
					request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
							response);
				} else {
					
					write.println("Error: " + respuesta);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		} else if (accion.equals("actualizar2")) {
			
			
			Proveedores proveedor = new Proveedores();
			
			proveedor.setNit_proveedores(Long.parseLong(nit));
			proveedor.setCiudad_proveedores(ciudad);
			proveedor.setDireccion_proveedores(direccion);
			proveedor.setNombre_proveedores(nombre);
			proveedor.setTelefono_proveedores(telefono);
			
			try {
				PrintWriter write = response.getWriter();
				respuesta = TestJSON_proveedores.putJSON(proveedor, Long.parseLong(nit));
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
