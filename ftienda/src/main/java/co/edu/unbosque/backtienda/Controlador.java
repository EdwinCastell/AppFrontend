package co.edu.unbosque.backtienda;
import co.edu.unbosque.backtienda.TestJSON;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;


@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }
    
 
    

    
    public int user(Long cedula) throws IOException, ParseException {
    	
		ArrayList<Usuarios> lista = TestJSON.getJSON();

		for (Usuarios usuario : lista) {
			if(cedula == usuario.getCedula_usuario()) {
				return 0;
			}
			
		}
    	return 1;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String menu = request.getParameter("menu");
		String cedula = request.getParameter("cedula");
		String usuario = request.getParameter("usuario");
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String accion = request.getParameter("accion");
		
		int respuesta = 0;
		
		if (accion.equals("agregar")) {
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
				request.setAttribute("cond", "0");
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
				request.setAttribute("cond", "1");
				Usuarios usuarios = new Usuarios();
				
				usuarios.setCedula_usuario(Long.parseLong(cedula));
				usuarios.setNombre_usuario(nombre);
				usuarios.setEmail_usuario(email);
				usuarios.setPassword(password);
				usuarios.setUsuario(usuario);
				
				
				try {
					PrintWriter write = response.getWriter();
					respuesta = TestJSON.postJSON(usuarios);
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
				
			
			
		} else if  (accion.equals("eliminar")) {
			try {
				PrintWriter write = response.getWriter();
				respuesta = TestJSON.deleteJSON(Long.parseLong(cedula));
				if (respuesta == 200) {
					request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
							response);
				} else {
					
					write.println("Error: " + respuesta);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		} else if (accion.equals("actualizar")) {
			
			
			Usuarios usuarios = new Usuarios();
			
			usuarios.setCedula_usuario(Long.parseLong(cedula));
			usuarios.setNombre_usuario(nombre);
			usuarios.setEmail_usuario(email);
			usuarios.setPassword(password);
			usuarios.setUsuario(usuario);
			
			
			try {
				PrintWriter write = response.getWriter();
				respuesta = TestJSON.putJSON(usuarios, Long.parseLong(cedula));
				if (respuesta == 200) {
					request.getRequestDispatcher("/jsp/usuario.jsp").forward(request,
							response);
				} else {
					
					write.println("Error: " + respuesta);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}else if(accion.equals("consultarCliente")){
			try {
				PrintWriter write = response.getWriter();
				respuesta = 200;
				if (respuesta == 200) {
					request.getRequestDispatcher("./usuario.jsp").forward(request,
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
