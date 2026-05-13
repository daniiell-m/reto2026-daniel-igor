package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Excursion;
import model.Reserva;

public class reservas {

	public ArrayList <Excursion> datosExcursion() {
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT * FROM excursion;";
			ResultSet rs=st.executeQuery(consulta);
			ArrayList <Excursion> excursiones=new ArrayList<>();
			while(rs.next()) {
				int cod_reserva=rs.getInt("cod_reserva");
				String nombre_empresa=rs.getString("nombre_empresa");
				int aforo=rs.getInt("aforo");
				String dia=rs.getString("dia");
				String hora=rs.getString("hora");
				String visita=rs.getString("visita");
				Excursion excursion=new Excursion();
				excursion.setCod_reserva(cod_reserva);
				excursion.setNombre_Empresa(nombre_empresa);
				excursion.setAforo(aforo);
				excursion.setDia(dia);
				excursion.setHora(hora);
				excursion.setVisita(visita);
				excursiones.add(excursion);
			}
			return excursiones;
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

}
