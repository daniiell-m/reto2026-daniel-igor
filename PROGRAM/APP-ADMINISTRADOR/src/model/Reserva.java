package model;

abstract class Reserva {
	
	protected int cod_reserva;
	protected String cif_empresa;
	protected String dni_persona;

	public Reserva() {
	}

	public Reserva(int cod_reserva, String cif_empresa, String dni_persona) {
		this.cod_reserva = cod_reserva;
		this.cif_empresa = cif_empresa;
		this.dni_persona = dni_persona;
	}

	public Reserva(int cod_reserva) {
		this.cod_reserva=cod_reserva;
	}

	public int getCod_reserva() {
		return cod_reserva;
	}

	public void setCod_reserva(int cod_reserva) {
		this.cod_reserva = cod_reserva;
	}

	public String getCif_empresa() {
		return cif_empresa;
	}

	public void setCif_empresa(String cif_empresa) {
		this.cif_empresa = cif_empresa;
	}

	public String getDni_persona() {
		return dni_persona;
	}

	public void setDni_persona(String dni_persona) {
		this.dni_persona = dni_persona;
	}
	abstract void reservar();
	@Override
	public String toString() {
		return "Reserva [cod_reserva=" + cod_reserva + ", cif_empresa=" + cif_empresa + ", dni_persona=" + dni_persona
				+ "]";
	}
	
}
