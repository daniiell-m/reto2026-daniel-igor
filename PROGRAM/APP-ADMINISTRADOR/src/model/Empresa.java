package model;

public class Empresa {
	
	private String cif;
	private String nombre;
	private String direccion;

	public Empresa() {
	}

	public Empresa(String nombre, String cif, String direccion) {
		this.nombre = nombre;
		this.cif = cif;
		this.direccion = direccion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCif() {
		return cif;
	}

	public void setCif(String cif) {
		this.cif = cif;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	@Override
	public String toString() {
		return "Empresa [cif=" + cif + ", nombre=" + nombre + ", direccion=" + direccion + "]";
	}
	
	
	
}
