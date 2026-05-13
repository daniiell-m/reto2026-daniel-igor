package model;

public class Visita extends Reserva{

	private int cod_id;
	private String nombre;
	private String descripcion;
	private String particularidad;
	private boolean no_jubilados;
	private boolean jubilados;
	
	public Visita() {
	}

	public Visita(int cod_reserva, int cod_id, String nombre, String descripcion, String particularidad, boolean no_jubilados,
			boolean jubilados) {
		super(cod_reserva);
		this.cod_id = cod_id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.particularidad = particularidad;
		this.no_jubilados = no_jubilados;
		this.jubilados = jubilados;
	}

	public int getCod_id() {
		return cod_id;
	}

	public void setCod_id(int cod_id) {
		this.cod_id = cod_id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getParticularidad() {
		return particularidad;
	}

	public void setParticularidad(String particularidad) {
		this.particularidad = particularidad;
	}

	public boolean isNo_jubilados() {
		return no_jubilados;
	}

	public void setNo_jubilados(boolean no_jubilados) {
		this.no_jubilados = no_jubilados;
	}

	public boolean isJubilados() {
		return jubilados;
	}

	public void setJubilados(boolean jubilados) {
		this.jubilados = jubilados;
	}

	@Override
	public String toString() {
		return "Visita [cod_id=" + cod_id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", particularidad="
				+ particularidad + ", no_jubilados=" + no_jubilados + ", jubilados=" + jubilados + "]";
	}
	
}
