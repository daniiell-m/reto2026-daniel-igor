
package model;

public class Visita extends Reserva{

	private int cod_id;
	private String nombre;
	private String descripcion;
	private boolean jubilados;
	
	public Visita() {
	}

	public Visita(int cod_reserva, String cif_empresa, String dni_empresa,int cod_id, String nombre, String descripcion, String particularidad, boolean no_jubilados,
			boolean jubilados) {
		super(cod_reserva,cif_empresa, dni_empresa);
		this.cod_id = cod_id;
		this.nombre = nombre;
		this.descripcion = descripcion;
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

	public boolean isJubilados() {
		return jubilados;
	}

	public void setJubilados(boolean jubilados) {
		this.jubilados = jubilados;
	}
	void reservar() {
		System.out.println("La clase Visita tiene cod_reserva: "+this.cod_reserva+", cif_empresa: "+this.cif_empresa+", dni_persona: "+this.dni_persona+"cod_id: "+this.cod_id+", nombre: "+this.nombre+", descripcion: "+this.descripcion+", jubilados: "+this.jubilados);
	}

	@Override
	public String toString() {
		return "Visita [cod_id=" + cod_id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", particularidad="
				 + ", jubilados=" + jubilados + "]";
	}
	
}
