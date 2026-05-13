package controller;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.plaf.ColorUIResource;
import javax.swing.table.DefaultTableModel;

import dao.*;
import model.Excursion;
import model.Persona;
import model.Reserva;
import view.*;

public class controller {
	private inicioDeSesion inicio=new inicioDeSesion();
	private ArrayList <Persona> personas=new ArrayList<>();
	private ArrayList <Excursion> excursiones=new ArrayList<>();
	private registrarse regis=new registrarse();
	private clientes cli=new clientes();
	private reservas res=new reservas();
	private app App=new app();
	private crearCliente crear=new crearCliente();
	private modificarCliente modificarCli=new modificarCliente();
	private eliminarCliente eliminarCli=new eliminarCliente();
	private generarXML generCli=new generarXML();
	public controller() {
		inicio.carta.show(inicio.panelContenedor, "Inicio");
		inicio.btnSalir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				inicio.frameInicio.dispose();
			}
		});
		inicio.btnCrearAdmin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				inicio.frameInicio.setSize(400,400);
				regis.registrarse(inicio);
				inicio.txtMail.setText("");
				inicio.txtPassword.setText("");
			}
		});
		regis.btnPass.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(regis.txtPass.getEchoChar()==(char)0) {
					regis.txtPass.setEchoChar('*');
				}else {
					regis.txtPass.setEchoChar((char)0);
				}
			}
		});
		regis.btnRegis.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				 String dni=regis.txtDni.getText();
				 String nombre=regis.txtNombre.getText();
				 String apellido=regis.txtApellido.getText();
				 String telefono=regis.txtTelefono.getText();
				 String mail=regis.txtMail.getText();
				 String contraseña=new String(regis.txtPass.getPassword());
				 boolean confirmar=false;
				 if(!telefono.matches("[0-9]+")&&!telefono.contains("")) {
					 regis.labelLetras.setVisible(true);
					 confirmar=true;
				 }
				 if(dni.equals("")||nombre.equals("")||apellido.equals("")||telefono.equals("")||mail.equals("")||contraseña.equals("")) {
					 regis.labelNull.setVisible(true);
					 confirmar=true;
				 }
				 if(!mail.contains("@")) {
					 regis.labelArroba.setVisible(true);
					 confirmar=true;
				 }
				 String comprobarExis="";
				 if(confirmar==false) {
				 comprobarExis=cli.registrarse(dni, nombre, apellido, telefono, mail, contraseña);
				 if(comprobarExis!=null) {
					 regis.labelIgual.setVisible(true);
					 UIManager.put("Button.background", new ColorUIResource(Color.CYAN));
					 UIManager.put("Panel.background", new ColorUIResource(Color.ORANGE));
					 UIManager.put("OptionPane.background", new ColorUIResource(Color.ORANGE));
					 JOptionPane.showMessageDialog(null,"¡Registro incompleto!");
				 }else {
					 UIManager.put("Button.background", new ColorUIResource(Color.CYAN));
					 UIManager.put("Panel.background", new ColorUIResource(Color.ORANGE));
					 UIManager.put("OptionPane.background", new ColorUIResource(Color.ORANGE));
					 JOptionPane.showMessageDialog(null, "¡Registro completado con exito!");
					 inicio.frameInicio.setSize(400,300);
					 inicio.carta.show(inicio.panelContenedor, "Inicio");
					
				 }
				 }else {
					 inicio.frameInicio.setSize(400,500);
				 }
			}
		});
		inicio.btnIniciarSesion.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String mail=inicio.txtMail.getText();
				String pass=new String(inicio.txtPassword.getPassword());
				String comprobar=cli.inicio(mail, pass);
				if(comprobar!=null) {
					UIManager.put("Button.background", new ColorUIResource(Color.CYAN));
					UIManager.put("Panel.background", new ColorUIResource(Color.ORANGE));
					UIManager.put("OptionPane.background", new ColorUIResource(Color.ORANGE));
					JOptionPane.showMessageDialog(null, "¡Bienvenido!");
					personas=cli.datosCliente();
					for(int i=1;i<personas.size();i++) {
					Object [] persona= {personas.get(i).getDni(),personas.get(i).getNombre(),personas.get(i).getApellido(),personas.get(i).getTelefono(),personas.get(i).getMail(),personas.get(i).getContrasenya()};
					App.modeloCli.addRow(persona);
					}
					excursiones=res.datosExcursion();
					for(int i=0;i<excursiones.size();i++) {
					Object [] excursion= {excursiones.get(i).getCod_reserva(),excursiones.get(i).getNombre_Empresa(),excursiones.get(i).getAforo(),excursiones.get(i).getDia(),excursiones.get(i).getHora(),excursiones.get(i).getVisita()};
					App.modeloEx.addRow(excursion);
					}
				
					inicio.frameInicio.setSize(1000,615);
					inicio.frameInicio.setLocationRelativeTo(null);
					App.app(inicio);
					inicio.txtMail.setText("");
					inicio.txtPassword.setText("");
					
				}else {
					UIManager.put("Button.background", new ColorUIResource(Color.CYAN));
					UIManager.put("Panel.background", new ColorUIResource(Color.ORANGE));
					UIManager.put("OptionPane.background", new ColorUIResource(Color.ORANGE));
					JOptionPane.showMessageDialog(null, "¡Usuario incorrecto!");
				}
			}
		});
		regis.btnVolver.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				inicio.frameInicio.setSize(400,300);
				inicio.carta.show(inicio.panelContenedor, "Inicio");
				regis.txtDni.setText("");
				regis.txtNombre.setText("");
				regis.txtApellido.setText("");
				regis.txtTelefono.setText("");
				regis.txtMail.setText("");
				regis.txtPass.setText("");
			}
		});
		App.btnSalirCli.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				inicio.frameInicio.setSize(400,300);
				inicio.frameInicio.setLocationRelativeTo(null);
				inicio.carta.show(inicio.panelContenedor, "Inicio");
				regis.txtDni.setText("");
				regis.txtNombre.setText("");
				regis.txtApellido.setText("");
				regis.txtTelefono.setText("");
				regis.txtMail.setText("");
				regis.txtPass.setText("");
			}
		});
		App.btnCrearCli.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				crear.crearCli(inicio);
			}
		});
		crear.btnCrear.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String dni=crear.txtDni.getText();
				String nombre=crear.txtNombre.getText();
				String apellido=crear.txtApellido.getText();
				String telefono=crear.txtTelefono.getText();
				String mail=crear.txtMail.getText();
				String contraseña=new String(crear.txtPass.getPassword());
				boolean confirmar=false;
				 if(!telefono.matches("[0-9]+")&&!telefono.contains("")) {
					 crear.labelLetras.setVisible(true);
					 confirmar=true;
				 }
				 if(dni.equals("")||nombre.equals("")||apellido.equals("")||telefono.equals("")||mail.equals("")||contraseña.equals("")) {
					 crear.labelNull.setVisible(true);
					 confirmar=true;
				 }
				 if(!mail.contains("@")) {
					 crear.labelArroba.setVisible(true);
					 confirmar=true;
				 }
				 String comprobarExis="";
				 if(confirmar==false) {
				 comprobarExis=cli.comprobar(dni, nombre, apellido, telefono, mail, contraseña);
				 if(comprobarExis!=null) {
					 crear.labelIgual.setVisible(true);
					 UIManager.put("Button.background", new ColorUIResource(Color.CYAN));
					 UIManager.put("Panel.background", new ColorUIResource(Color.ORANGE));
					 UIManager.put("OptionPane.background", new ColorUIResource(Color.ORANGE));
					 JOptionPane.showMessageDialog(null,"¡Registro incompleto!");
					 return;
				 }else {
					 UIManager.put("Button.background", new ColorUIResource(Color.CYAN));
					 UIManager.put("Panel.background", new ColorUIResource(Color.ORANGE));
					 UIManager.put("OptionPane.background", new ColorUIResource(Color.ORANGE));
					 JOptionPane.showMessageDialog(null, "¡Registro completado con exito!");
					 crear.frameCrearCli.dispose();
					 Object[] cliente=cli.crearCli(dni, nombre, apellido, telefono, mail, contraseña);
						App.modeloCli.addRow(cliente);
				 }
				 
				 }else {
					 crear.frameCrearCli.setSize(400,500);
				 }
				 }
		});
		crear.btnPass.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(crear.txtPass.getEchoChar()==(char)0) {
					crear.txtPass.setEchoChar('*');
				}else {
					crear.txtPass.setEchoChar((char)0);
				}
			}
		});
		crear.btnVolver.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				crear.frameCrearCli.dispose();
			}
		});
		
		App.btnBuscarCli.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String nombre=App.txtNombreCli.getText();
				String apellido=App.txtApellidoCli.getText();
				personas=cli.buscarCliente(nombre,apellido);
				App.modeloCli.setRowCount(0);
				for(int j=0;j<personas.size();j++) {
					Object []persona= {personas.get(j).getDni(),personas.get(j).getNombre(),personas.get(j).getApellido(),personas.get(j).getTelefono(),personas.get(j).getMail(),personas.get(j).getContrasenya()};
					App.modeloCli.addRow(persona);
				}
				App.txtNombreCli.setText("");
				App.txtApellidoCli.setText("");
				App.btnDeshacerCli.setEnabled(true);
			}
		});
		App.btnDeshacerCli.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				ArrayList <Persona> persona=cli.datosCliente();
				App.modeloCli.setRowCount(0);
				for(int i=0;i<persona.size();i++) {
					Object[] Persona= {persona.get(i).getDni(),persona.get(i).getNombre(),persona.get(i).getApellido(),persona.get(i).getTelefono(),persona.get(i).getMail(),persona.get(i).getContrasenya()};
					App.modeloCli.addRow(Persona);
				}
				App.btnDeshacerCli.setEnabled(false);
			}
		});
		App.tablaCli.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent e) {
				App.tablaCli.setRowSelectionAllowed(true);
				App.btnModificarCli.setEnabled(true);
				App.btnEliminarCli.setEnabled(true);
				int num=App.tablaCli.getSelectedRow();
				
			}
		});
			modificarCli.btnPass.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					if(modificarCli.txtPass.getEchoChar()==(char)0) {
						modificarCli.txtPass.setEchoChar('*');
					}else {
						modificarCli.txtPass.setEchoChar((char)0);;
					}
				}
			});
			modificarCli.btnVolver.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					modificarCli.frameModificar.dispose();
				}
			});
		
			App.btnEliminarCli.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					int num=App.tablaCli.getSelectedRow();
					eliminarCli.eliminar(num, App);
					
				}
			});
			eliminarCli.btnSi.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					int num=App.tablaCli.getSelectedRow();
					String dni=App.tablaCli.getValueAt(num, 0).toString();
					cli.eliminarClientes(dni);
					App.modeloCli.removeRow(num);
					App.btnModificarCli.setEnabled(false);
					App.btnEliminarCli.setEnabled(false);
				}
			});
			eliminarCli.btnNo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					eliminarCli.frameEliminarCli.dispose();
				}
			});
			App.btnGenerarXMLCli.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					ArrayList <Persona> personas=new ArrayList <>();
					Persona persona;
					for(int i=1;i<App.modeloCli.getRowCount();i++) {
						persona=new Persona(App.modeloCli.getValueAt(i, 0).toString(),App.modeloCli.getValueAt(i, 1).toString(),App.modeloCli.getValueAt(i, 2).toString(),App.modeloCli.getValueAt(i, 3).toString(),App.modeloCli.getValueAt(i, 4).toString(),App.modeloCli.getValueAt(i, 5).toString());
						personas.add(persona);
					}
					generCli.generarXMLCliente(personas);
				}
			});
			modificarCli.btnModificar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					int num=App.tablaCli.getSelectedRow();
					String dni=modificarCli.txtDni.getText();
					String nombre=modificarCli.txtNombre.getText();
					String apellido=modificarCli.txtApellido.getText();
					String telefono=modificarCli.txtTelefono.getText();
					String mail=modificarCli.txtMail.getText();
					String pass=new String(modificarCli.txtPass.getPassword());
					boolean confirmar=cli.confirmar(dni);
					if(confirmar==true) {
						modificarCli.labelDniEr.setVisible(true);
						modificarCli.frameModificar.setSize(500,450);
						modificarCli.frameModificar.setLocationRelativeTo(null);
						return;
					}
					cli.modificarCliente(App.modeloCli.getValueAt(num, 0).toString(), dni, nombre, apellido, telefono, mail, pass);
					App.tablaCli.setValueAt(dni, num, 0);
					App.tablaCli.setValueAt(nombre, num, 1);
					App.tablaCli.setValueAt(apellido, num, 2);
					App.tablaCli.setValueAt(telefono, num, 3);
					App.tablaCli.setValueAt(mail, num, 4);
					App.tablaCli.setValueAt(pass, num, 5);
					modificarCli.frameModificar.dispose();
					modificarCli.txtDni.setText("");
					modificarCli.txtNombre.setText("");
					modificarCli.txtApellido.setText("");
					modificarCli.txtTelefono.setText("");
					modificarCli.txtMail.setText("");
					modificarCli.txtPass.setText("");
					App.tablaCli.setRowSelectionAllowed(false);
					if(App.tablaCli.getRowSelectionAllowed()==false) {
						App.btnModificarCli.setEnabled(false);
						App.btnEliminarCli.setEnabled(false);
					}
				}
			});
			App.btnModificarCli.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					int num=App.tablaCli.getSelectedRow();
					String dni=App.tablaCli.getValueAt(num, 0).toString();
					if(App.tablaCli.getSelectedRowCount()>1) {
						App.btnModificarCli.setEnabled(false);
						App.btnEliminarCli.setEnabled(false);
					}else {
						modificarCli.modificar(num,dni,App);
					}	
				}
			});
			App.btnGenerarXMLEx.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					ArrayList <Excursion> excursiones=new ArrayList<>();
					Excursion excursion;
					for(int i=0;i<App.modeloCli.getRowCount();i++) {
					}
				}
			});
			}
			}

