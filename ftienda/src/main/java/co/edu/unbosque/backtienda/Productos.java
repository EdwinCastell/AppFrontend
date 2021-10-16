package co.edu.unbosque.backtienda;

import java.math.BigInteger;

public class Productos {
	
	private Long codigo_productos;
	private Integer proveedores_nit_proveedor;
	private Double iva_compra;
	private String nombre_producto;
	private Double precio_compra;
	private Double precio_venta;
	public Long getCodigo_productos() {
		return codigo_productos;
	}
	public void setCodigo_productos(Long codigo_productos) {
		this.codigo_productos = codigo_productos;
	}
	public Integer getProveedores_nit_proveedor() {
		return proveedores_nit_proveedor;
	}
	public void setProveedores_nit_proveedor(Integer proveedores_nit_proveedor) {
		this.proveedores_nit_proveedor = proveedores_nit_proveedor;
	}
	public Double getIva_compra() {
		return iva_compra;
	}
	public void setIva_compra(Double iva_compra) {
		this.iva_compra = iva_compra;
	}
	public String getNombre_producto() {
		return nombre_producto;
	}
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	public Double getPrecio_compra() {
		return precio_compra;
	}
	public void setPrecio_compra(Double precio_compra) {
		this.precio_compra = precio_compra;
	}
	public Double getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(Double precio_venta) {
		this.precio_venta = precio_venta;
	}


}
