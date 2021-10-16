package co.edu.unbosque.backtienda;

import java.math.BigInteger;

public class Ventas {

	private Integer codigo_venta;
	private Integer usuarios_cedula_usuario;
	private BigInteger clientes_cedula_cliente;
	private String valor_venta;
	private String total_venta;
	private String iva_venta;
	public Integer getCodigo_venta() {
		return codigo_venta;
	}
	public void setCodigo_venta(Integer codigo_venta) {
		this.codigo_venta = codigo_venta;
	}
	public Integer getUsuarios_cedula_usuario() {
		return usuarios_cedula_usuario;
	}
	public void setUsuarios_cedula_usuario(Integer usuarios_cedula_usuario) {
		this.usuarios_cedula_usuario = usuarios_cedula_usuario;
	}
	public BigInteger getClientes_cedula_cliente() {
		return clientes_cedula_cliente;
	}
	public void setClientes_cedula_cliente(BigInteger clientes_cedula_cliente) {
		this.clientes_cedula_cliente = clientes_cedula_cliente;
	}
	public String getValor_venta() {
		return valor_venta;
	}
	public void setValor_venta(String valor_venta) {
		this.valor_venta = valor_venta;
	}
	public String getTotal_venta() {
		return total_venta;
	}
	public void setTotal_venta(String total_venta) {
		this.total_venta = total_venta;
	}
	public String getIva_venta() {
		return iva_venta;
	}
	public void setIva_venta(String iva_venta) {
		this.iva_venta = iva_venta;
	}
	
	
	
}
