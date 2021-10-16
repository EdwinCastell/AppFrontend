package co.edu.unbosque.backtienda;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection; //esta libreria es para realizar la conexion
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class TestJSON_Productos {
	private static URL url;
	private static String sitio = "http://localhost:5000/";

	// agregar informacion a la tabla producto

	public static ArrayList<Productos> parsingProductos(String json) throws ParseException {//devulve un arraylist
		JSONParser jsonParser = new JSONParser();
		ArrayList<Productos> lista = new ArrayList<Productos>();
		JSONArray producto = (JSONArray) jsonParser.parse(json);
		Iterator i = producto.iterator(); //recorrer la tabla proveedor
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			Productos productos = new Productos();
			productos.setCodigo_productos(Long.parseLong(innerObj.get("codigo_productos").toString())); //convertir de String a Long
			productos.setIva_compra(Double.parseDouble(innerObj.get("iva_compra").toString()));
			productos.setProveedores_nit_proveedor(Integer.parseInt(innerObj.get("proveedores_nit_proveedor").toString()));
			productos.setNombre_producto(innerObj.get("nombre_producto").toString());
			productos.setPrecio_compra(Double.parseDouble(innerObj.get("precio_compra").toString()));
			productos.setPrecio_venta(Double.parseDouble(innerObj.get("precio_venta").toString()));
			lista.add(productos);
		}
		return lista;
	}
	
	// listar la informacion
	public static ArrayList<Productos> getJSON() throws IOException, ParseException { //devolver un listado JSON

		url = new URL(sitio + "productos/listar"); //trae el metodo de productos.API 
		HttpURLConnection http = (HttpURLConnection) url.openConnection();

		http.setRequestMethod("GET");
		http.setRequestProperty("Accept","application/json");

		InputStream respuesta = http.getInputStream();
		byte[] inp = respuesta.readAllBytes();
		String json = "";

		for (int i = 0; i < inp.length; i++) {
			json += (char) inp[i];
		}
		System.out.println(json);
		ArrayList<Productos> lista = new ArrayList<Productos>();
		lista = parsingProductos(json);
		http.disconnect();
		return lista;
	}
	
	public static int postJSON(Productos productos) throws IOException {

		url = new URL(sitio + "productos/guardar");
		HttpURLConnection http;
		http = (HttpURLConnection) url.openConnection();

		try {
			http.setRequestMethod("POST");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}

		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");

		String data = "{" 
				+ "\"codigo_producto\":\"" + String.valueOf(productos.getCodigo_productos())
				+ "\",\"proveedores_nit_proveedor\": \"" + String.valueOf(productos.getProveedores_nit_proveedor()) 
				+ "\",\"iva_compra\": \"" + String.valueOf(productos.getIva_compra()) 
				+ "\",\"nombre_producto\":\"" + productos.getNombre_producto() 
				+ "\",\"precio_compra\":\"" + String.valueOf(productos.getPrecio_compra()) 
				+ "\",\"precio_venta\":\""+ String.valueOf(productos.getPrecio_venta())
				+"\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);

		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	
	public static int putJSON(Productos productos, Long id) throws IOException {

		url = new URL(sitio + "productos/actualizar");
		HttpURLConnection http; // una variable de tipo conexion
		http = (HttpURLConnection) url.openConnection(); // abrimos la conexion

		try {
			http.setRequestMethod("PUT"); // el put es estrictamente para actualizar la informacion, viene
											// predeterminada en el Json
		} catch (ProtocolException e) {
			e.printStackTrace();
		}

		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json"); // se realiza una peticion tipo aplicacion json
		http.setRequestProperty("Content-Type", "application/json");

		String data = "{" 
				+ "\"codigo_producto\":\"" + String.valueOf(productos.getCodigo_productos())
				+ "\",\"proveedores_nit_proveedor\": \"" + String.valueOf(productos.getProveedores_nit_proveedor()) 
				+ "\",\"iva_compra\": \"" + String.valueOf(productos.getIva_compra()) 
				+ "\",\"nombre_producto\":\"" + productos.getNombre_producto() 
				+ "\",\"precio_compra\":\"" + String.valueOf(productos.getPrecio_compra()) 
				+ "\",\"precio_venta\":\""+ String.valueOf(productos.getPrecio_venta())
				+"\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);

		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta; //el valor de respuesta correcta es 200
	}
	
	public static int deleteJSON(Long id) throws IOException {

		url = new URL(sitio + "productos/Eliminar/"+id); //trae el metodo de Usuarios.API 
		HttpURLConnection http = (HttpURLConnection) url.openConnection();


		try {
			http.setRequestMethod("DELETE");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}

		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");

		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	

}

	

