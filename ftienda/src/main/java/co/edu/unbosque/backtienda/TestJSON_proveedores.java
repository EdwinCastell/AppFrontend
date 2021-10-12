package co.edu.unbosque.backtienda;


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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

public class TestJSON_proveedores {

	private static URL url;
	private static String sitio = "http://localhost:5000/";
	

	//agregar informacion a la tabla Proveedores
	
	public static ArrayList<Proveedores> parsingProveedores(String json) throws ParseException {//devulve un arraylist
		JSONParser jsonParser = new JSONParser();
		ArrayList<Proveedores> lista = new ArrayList<Proveedores>();
		JSONArray proveedores = (JSONArray) jsonParser.parse(json);
		Iterator i = proveedores.iterator(); //recorrer la tabla Proveedores
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			Proveedores proveedor = new Proveedores();
			proveedor.setNit_proveedores(Long.parseLong(innerObj.get("nit_proveedores").toString()));; //convertir de String a Long
			proveedor.setCiudad_proveedores(innerObj.get("ciudad_proveedores").toString());;
			proveedor.setDireccion_proveedores(innerObj.get("direccion_proveedores").toString());;
			proveedor.setNombre_proveedores(innerObj.get("nombre_proveedores").toString());;
			proveedor.setTelefono_proveedores(innerObj.get("telefono_proveedores").toString());;
			lista.add(proveedor);
		}
		return lista;
	}
	
	
	//listar la informacion
	public static ArrayList<Proveedores> getJSON() throws IOException, ParseException { //devolver un listado JSON

		url = new URL(sitio + "proveedores/listar"); //trae el metodo de Usuarios.API 
		HttpURLConnection http = (HttpURLConnection) url.openConnection();

		http.setRequestMethod("GET");
		http.setRequestProperty("Accept", "application/json");

		InputStream respuesta = http.getInputStream();
		byte[] inp = respuesta.readAllBytes();
		String json = "";

		for (int i = 0; i < inp.length; i++) {
			json += (char) inp[i];
		}

		ArrayList<Proveedores> lista = new ArrayList<Proveedores>();
		lista = parsingProveedores(json);
		http.disconnect();
		return lista;
	}
	//Guardar
	public static int postJSON(Proveedores proveedor) throws IOException {

		url = new URL(sitio + "proveedores/guardar");
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

		String data = "{" + "\"nit_proveedores\":\"" + String.valueOf(proveedor.getNit_proveedores())
			+ "\",\"ciudad_proveedores\": \"" + proveedor.getCiudad_proveedores() + "\",\"direccion_proveedores\": \""
			+ proveedor.getDireccion_proveedores() + "\",\"nombre_proveedores\":\"" + proveedor.getNombre_proveedores() + "\",\"telefono_proveedores\":\""
			+ proveedor.getTelefono_proveedores()+ "\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);

		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	
	//Delete
	public static int deleteJSON(Long id) throws IOException {
		
		
		url = new URL(sitio+"proveedores/eliminar/" + id);
		HttpURLConnection http;
		http = (HttpURLConnection)url.openConnection();
		
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

	//Actualizar
	public static int putJSON(Proveedores proveedores, Long id) throws IOException {
		
		
		url = new URL(sitio+"proveedores/actualizar");
		HttpURLConnection http;
		http = (HttpURLConnection)url.openConnection();
		
		try {
		  http.setRequestMethod("PUT");
		} catch (ProtocolException e) {
		  e.printStackTrace();
		}
		
		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");
		
		String data = "{"
				+ "\"nit_proveedores\":\""+ id
				+"\",\"ciudad_proveedores\": \""+ proveedores.getCiudad_proveedores()
				+"\",\"direccion_proveedores\": \""+ proveedores.getDireccion_proveedores()
				+"\",\"nombre_proveedores\":\""+ proveedores.getNombre_proveedores()
				+"\",\"telefono_proveedores\":\""+ proveedores.getTelefono_proveedores()
				+ "\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);
		
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	
}
