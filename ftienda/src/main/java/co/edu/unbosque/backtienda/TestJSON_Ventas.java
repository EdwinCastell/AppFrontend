package co.edu.unbosque.backtienda;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class TestJSON_Ventas {
	
	private static URL url;
	private static String sitio = "http://localhost:5000/";
	
	public static int postJSON(Ventas ventas) throws IOException {

		url = new URL(sitio + "ventas/guardar");
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
				+ "\"codigo_venta\":\"" + String.valueOf(ventas.getCodigo_venta())
				+ "\",\"usuarios_cedula_usuario\": \"" + String.valueOf(ventas.getUsuarios_cedula_usuario())
				+ "\",\"clientes_cedula_cliente\": \"" + String.valueOf(ventas.getClientes_cedula_cliente())
				+ "\",\"iva_venta\": \"" + String.valueOf(ventas.getIva_venta()) 
				+ "\",\"total_venta\": \"" + String.valueOf(ventas.getTotal_venta()) 
				+ "\",\"valor_venta\":\"" 	+ String.valueOf(ventas.getValor_venta()) 
				+ "\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);

		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	
}