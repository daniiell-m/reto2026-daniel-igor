package dao;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Persona;

public class clientes {
	
	private Persona persona;
	private ArrayList <Persona> personas=new ArrayList<>();
	
	public String inicio(String mail, String pass) {
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT * FROM persona";
			ResultSet rs=(ResultSet)st.executeQuery(consulta);
			while(rs.next()) {
				String mail1=rs.getString("mail");
				String pass1=rs.getString("contraseina");
				String nombre1=rs.getString("nombre");
				if(mail.equals(mail1)&&pass.equals(pass1)) {
					return mail;
				}
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	public String registrarse(String dni, String nombre, String apellido, String telefono, String mail, String contraseña){
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT * FROM persona";
			ResultSet rs=(ResultSet)st.executeQuery(consulta);
			while(rs.next()) {
				String dni1=rs.getString("dni");
				if(dni1.equals(dni)) {
					return dni;
				}
			}
			String consulta1="INSERT INTO persona VALUES('"+dni+"','"+nombre+"','"+apellido+"','"+telefono+"','"+mail+"',1,'"+contraseña+"');";
			int num=st.executeUpdate(consulta1);
			File file=null;
			try {
			file=new File("insertsAdmin.txt");
			FileWriter fw=new FileWriter(file);
			PrintWriter pw=new PrintWriter(fw,true);
			pw.println(num+" fila añadida; dni: "+dni+", nombre: "+nombre+", apellido: "+apellido+", telefono: "+telefono+", mail: "+mail+",rol: 1, contraseña: "+contraseña+".");
			fw.close();
			pw.close();
			}catch(IOException e) {
				System.out.println(e.getMessage());
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	public ArrayList <Persona> datosCliente() {
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT dni,nombre,apellido,telefono,mail,contraseina FROM persona WHERE rol=0;";
			ResultSet rs=(ResultSet)st.executeQuery(consulta);
			while(rs.next()) {
				String dni=rs.getString("dni");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				String telefono=rs.getString("telefono");
				String mail=rs.getString("mail");
				String contraseina=rs.getString("contraseina");
				persona= new Persona(dni,nombre,apellido,telefono,mail,contraseina);
				personas.add(persona);
			}
			return personas;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		return personas;
	}
	
	public Object[] crearCli(String dni, String nombre, String apellido, String telefono, String mail, String contraseña) {
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
	String consulta1="INSERT INTO persona VALUES('"+dni+"','"+nombre+"','"+apellido+"','"+telefono+"','"+mail+"',0,'"+contraseña+"');";
	int num=st.executeUpdate(consulta1);
	File file=null;
	try {
	file=new File("insertsCliente.txt");
	FileWriter fw=new FileWriter(file);
	PrintWriter pw=new PrintWriter(fw,true);
	pw.println(num+" fila añadida; dni: "+dni+", nombre: "+nombre+", apellido: "+apellido+", telefono: "+telefono+", mail: "+mail+",rol: 1, contraseña: "+contraseña+".");
	fw.close();
	pw.close();
	Object[] cliente= {dni,nombre,apellido,telefono,mail,contraseña};
	return cliente;
	}catch(IOException e) {
		System.out.println(e.getMessage());
	}
		}catch(SQLException e) {
			e.getMessage();
		}
		return null; 
	}
	public ArrayList<Persona> buscarCliente(String nombre, String apellido) {
		Persona persona;
		ArrayList<Persona> cliente=new ArrayList<>();
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT * FROM persona WHERE rol=0 && nombre='"+nombre+"' && apellido='"+apellido+"';";
			ResultSet rs=(ResultSet)st.executeQuery(consulta);
			while(rs.next()) {
				String dni=rs.getString("dni");
				String nombre1=rs.getString("Nombre");
				String apellido1=rs.getString("Apellido");
				String telefono=rs.getString("telefono");
				String mail=rs.getString("mail");
				String pass=rs.getString("contraseina");
				persona=new Persona(dni,nombre1,apellido1,telefono,mail,pass);
				cliente.add(persona);
			}
			return cliente;
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	public void modificarCliente(String dni1,String dni, String nombre, String apellido, String telefono,String mail, String contraseina) {
		try(Connection con=DbConnection.getConnection()){
			String consulta="UPDATE persona SET dni=?,nombre=?,apellido=?,telefono=?,mail=?,contraseina=? WHERE dni=? && rol=0";
			try(PreparedStatement ps=con.prepareStatement(consulta)){
			ps.setString(1, dni);
			ps.setString(2, nombre);
			ps.setString(3, apellido);
			ps.setString(4, telefono);
			ps.setString(5, mail);
			ps.setString(6, contraseina);
			ps.setString(7, dni1);
			ps.executeUpdate();
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		}
	public boolean confirmar(String dni) {
		boolean confirmar=false;
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT * FROM persona;";
			ResultSet rs=(ResultSet)st.executeQuery(consulta);
			while(rs.next()) {
				String dni1=rs.getString("dni");
				if(dni1.equals(dni)) {
					confirmar=true;
					return confirmar;
				}
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return confirmar;
	}
	public void eliminarClientes(String dni) {
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="DELETE FROM persona WHERE dni='"+dni+"';";
			st.executeUpdate(consulta);
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
	}
	public String comprobar(String dni, String nombre, String apellido, String telefono, String mail, String contraseña){
		try(Connection con=DbConnection.getConnection()){
			Statement st=con.createStatement();
			String consulta="SELECT * FROM persona";
			ResultSet rs=(ResultSet)st.executeQuery(consulta);
			while(rs.next()) {
				String dni1=rs.getString("dni");
				if(dni1.equals(dni)) {
					return dni;
				}
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
