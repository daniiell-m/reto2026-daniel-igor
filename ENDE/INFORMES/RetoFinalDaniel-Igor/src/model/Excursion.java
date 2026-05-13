package model;

public class Excursion extends Reserva{
	
	private String nombre_Empresa;
	private String visita;
	private int hora;
	private int dia;
	private int aforo;

	public Excursion() {
	}

	public Excursion(int cod_reserva, String nombre_Empresa, String visita, int hora, int dia, int aforo) {
		super(cod_reserva);
		this.nombre_Empresa = nombre_Empresa;
		this.visita = visita;
		this.hora = hora;
		this.dia = dia;
		this.aforo = aforo;
	}

	public String getNombre_Empresa() {
		return nombre_Empresa;
	}

	public void setNombre_Empresa(String nombre_Empresa) {
		this.nombre_Empresa = nombre_Empresa;
	}

	public String getVisita() {
		return visita;
	}

	public void setVisita(String visita) {
		this.visita = visita;
	}

	public int getHora() {
		return hora;
	}

	public void setHora(int hora) {
		this.hora = hora;
	}

	public int getDia() {
		return dia;
	}

	public void setDia(int dia) {
		this.dia = dia;
	}

	public int getAforo() {
		return aforo;
	}

	public void setAforo(int aforo) {
		this.aforo = aforo;
	}

	@Override
	public String toString() {
		return "Excursion [nombre_Empresa=" + nombre_Empresa + ", visita=" + visita + ", hora=" + hora + ", dia=" + dia
				+ ", aforo=" + aforo + "]";
	}
	
	
	
}
