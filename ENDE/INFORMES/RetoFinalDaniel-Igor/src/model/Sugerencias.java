package model;

public class Sugerencias {
	
	private int id_persona;
	private String nombre_persona;
	private String mail;
	private String descripcion;
	private String fecha_creacion;

	public Sugerencias() {
	}

	public Sugerencias(int id_persona, String nombre_persona, String mail, String descripcion, String fecha_creacion) {
		this.id_persona = id_persona;
		this.nombre_persona = nombre_persona;
		this.mail = mail;
		this.descripcion = descripcion;
		this.fecha_creacion = fecha_creacion;
	}

	public int getId_persona() {
		return id_persona;
	}

	public void setId_persona(int id_persona) {
		this.id_persona = id_persona;
	}

	public String getNombre_persona() {
		return nombre_persona;
	}

	public void setNombre_persona(String nombre_persona) {
		this.nombre_persona = nombre_persona;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getFecha_creacion() {
		return fecha_creacion;
	}

	public void setFecha_creacion(String fecha_creacion) {
		this.fecha_creacion = fecha_creacion;
	}

	@Override
	public String toString() {
		return "Sugerencias [id_persona=" + id_persona + ", nombre_persona=" + nombre_persona + ", mail=" + mail
				+ ", descripcion=" + descripcion + ", fecha_creacion=" + fecha_creacion + "]";
	}
	
	
	
}
