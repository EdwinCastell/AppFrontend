package co.edu.unbosque.backtienda;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;

/**
 * Servlet implementation class ControladorVentas
 */
@WebServlet("/ControladorVentas")
public class ControladorVentas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //***********variables generales dentro de la clase contralador *****************
    Double precio = (double) 0;
    Double iva = (double) 0;
	Double subtotal= (double) 0, totalapagar= (double) 0, valor_iva= (double) 0;
    long codProducto=0, subtotaliva=0, acusubtotal=0;
    int cantidad=0, item=0, respuesta=0,numfac=0;
    String descripcion, cedulaCliente, loc = "Nan";
    List<Detalle_ventas> listaVentas= new ArrayList<>();
    Usuarios usuarios= new Usuarios();
    Detalle_ventas detalle_venta = new Detalle_ventas();
    String [] val = new String[] {"i","0","9"};
    //*******************************************************************************
    
    

    
    public String user(Long id) throws IOException, ParseException {
    	
		ArrayList<Clientes> lista = TestJSON_clientes.getJSON();

		for (Clientes cliente : lista) {
			if(id.equals(cliente.getCedula_cliente())) {
				return cliente.getNombre_cliente();
			}
			
		}
    	return loc;
    }
    
    public String[] producto1(Long cod) throws IOException, ParseException{
    	ArrayList<Productos> lista1 = TestJSON_Productos.getJSON();
    	
    	for (Productos producto : lista1) {
    		if(cod.equals(producto.getCodigo_productos())) {
    			return new String[] {producto.getNombre_producto(),
    								String.valueOf(producto.getPrecio_venta()),
    								String.valueOf(producto.getIva_compra())};
    		}
    	}
    	return val;
    }
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion3");
		String cantidad = request.getParameter("cantidad");
		
		// **********************variable para recibir la cedula del
		// usuario********************
		String cedulaCliente = request.getParameter("cedulaCliente");
		String codigoProducto = request.getParameter("codigoProducto");
		//usuarios.setCedula_usuario(Long.parseLong(cedula_usuario_activo));
		//request.setAttribute("usuarioSeleccionado", usuarios); // se envia a ventas
		// *************************************************************************************
		
		
		// ******************** enviaremos la cedula del usuario al formulario ventas
		//request.setAttribute("usuarioSeleccionado", usuarios);
		// ***********************************************************************

		// ******************** enviaremos la Numero de Factura ******************
		request.setAttribute("cantidad1", 0);
		// ***********************************************************************
		
		
		
		
		if(accion.equals("BuscarCliente")) {
			try {
				//Long id = Long.parseLong(request.getParameter("cedulacliente"));// como esta en ventas
				//this.buscarCliente(Long.parseLong(cedulaCliente), request, response);
				String cedula_cliente = user(Long.parseLong(cedulaCliente));
				request.setAttribute("clienteNombre", String.valueOf(cedula_cliente));
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
		}else if(accion.equals("BuscarProducto")) {
			try {
				String produc[] = producto1(Long.parseLong(codigoProducto));
				String cedula_cliente = user(Long.parseLong(cedulaCliente));
				request.setAttribute("nombreProducto1", produc[0]);
				request.setAttribute("precio", produc[1]);
				request.setAttribute("ivaProducto", produc[2]);
				request.setAttribute("cantidadProducto", cantidad);
				request.setAttribute("clienteNombre", String.valueOf(cedula_cliente));
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
			
		}else if (accion.equals("agregarProducto")){
			try {
				request.setAttribute("numerofactura", "No");
				String produc[] = producto1(Long.parseLong(codigoProducto));
				String cedula_cliente = user(Long.parseLong(cedulaCliente));
				request.setAttribute("nombreProducto1", produc[0]);
				request.setAttribute("precio", produc[1]);
				request.setAttribute("ivaProducto", produc[2]);
				request.setAttribute("cantidadProducto", cantidad);
				request.setAttribute("clienteNombre", String.valueOf(cedula_cliente));
				request.setAttribute("numerofactura1", produc[1]);
				
				detalle_venta = new Detalle_ventas();
				item++;
				acusubtotal=0;
				subtotaliva = 0;
				totalapagar = (double)0;
				codProducto = Long.parseLong(codigoProducto);
				descripcion = produc[0];
				precio = Double.valueOf(produc[1]);
				cantidad = cantidad;
				iva = Double.valueOf(produc[2]);
				
				
				subtotal = (precio * Double.valueOf(cantidad));
				valor_iva = subtotal * iva/ 100;
				
				detalle_venta.setCodigo_detalle_venta(item);
				detalle_venta.setProductos_codigo_producto(BigInteger.valueOf(codProducto));
				detalle_venta.setDescripcion_producto(descripcion);
				detalle_venta.setVentas_codigo_venta(numfac);
				detalle_venta.setPrecio_producto(precio);
				detalle_venta.setCantidad_producto(Integer.valueOf(cantidad));
				detalle_venta.setValor_venta(subtotal);
				detalle_venta.setValor_iva(valor_iva);
				listaVentas.add(detalle_venta);
				
				for (int i = 0; i < listaVentas.size(); i++) {
					acusubtotal += listaVentas.get(i).getValor_venta();
					subtotaliva += listaVentas.get(i).getValor_iva();
				}
				
				totalapagar = acusubtotal + Double.valueOf(subtotaliva);
				detalle_venta.setValor_total(Double.valueOf(totalapagar));
				
				request.setAttribute("listaventas", listaVentas);
				request.setAttribute("totalventas", acusubtotal);
				request.setAttribute("totaliva", subtotaliva);
				request.setAttribute("totalapagar", totalapagar);
				
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
