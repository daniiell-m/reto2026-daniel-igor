package model;

import java.io.Serializable;

public class Persona implements Serializable{
	
	private String dni;
	private String nombre;
	private String apellido;
	private int rol;
	private String mail;
	private String telefono;
	private String contrasenya;

	public Persona(String mail, String contrasenya) {
		this.mail=mail;
		this.contrasenya=contrasenya;
	}
	public Persona(String dni, String nombre, String apellido, String mail, String telefono, String contrasenya) {
		this.dni=dni;
		this.nombre=nombre;
		this.apellido=apellido;
		this.mail=mail;
		this.telefono=telefono;
		this.contrasenya=contrasenya;
	}
	
	
	public Persona(String dni, String nombre, String apellido, int rol, String mail, String telefono,
			String contrasenya) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellido = apellido;
		this.rol = rol;
		this.mail = mail;
		this.telefono = telefono;
		this.contrasenya = contrasenya;
	}



	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getRol() {
		return rol;
	}

	public void setRol(int rol) {
		this.rol = rol;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getContrasenya() {
		return contrasenya;
	}

	public void setContrasenya(String contrasenya) {
		this.contrasenya = contrasenya;
	}

	@Override
	public String toString() {
		return "Persona [dni=" + dni + ", nombre=" + nombre + ", apellido=" + apellido + ", rol=" + rol + ", mail="
				+ mail + ", telefono=" + telefono + ", contrasenya=" + contrasenya + "]";
	}
	
	
}
