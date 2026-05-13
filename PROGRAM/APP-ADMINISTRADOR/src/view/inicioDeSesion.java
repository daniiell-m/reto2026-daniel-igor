package view;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

import java.awt.*;
public class inicioDeSesion {
	public JFrame frameInicio=new JFrame();
	public CardLayout carta=new CardLayout();
	public JPanel panelContenedor=new JPanel(carta);
	public JPanel panelInicio=new JPanel(new BorderLayout());
	private JPanel panelNorte=new JPanel();
	private JLabel labelInicio=new JLabel("Inicio de sesion");
	private JPanel panelCentro=new JPanel(new GridBagLayout());
	GridBagConstraints c=new GridBagConstraints();
	private JLabel labelMail=new JLabel("Correro electronico:* ");
	public JTextField txtMail=new JTextField(15);
	private JLabel labelPassword=new JLabel("Contraseña:* ");
	public JPasswordField txtPassword=new JPasswordField(15);
	public JButton btnIniciarSesion=new JButton("Iniciar sesion");
	private JPanel panelSur=new JPanel(new BorderLayout());
	public JButton btnSalir=new JButton("Salir");
	public JButton btnCrearAdmin=new JButton("Regristrarse");
	
	public inicioDeSesion() {
		frameInicio.setSize(400, 300);
		frameInicio.setTitle("Get Your Guide(Admin)");
		frameInicio.setLocationRelativeTo(null);
		panelNorte.setBackground(Color.ORANGE);
		panelCentro.setBackground(Color.ORANGE);
		panelSur.setBackground(Color.ORANGE);
		panelInicio.add(panelNorte, BorderLayout.NORTH);
		panelNorte.add(labelInicio);
		labelInicio.setBorder(new EmptyBorder(40,0,0,0));
		c.insets=new Insets(10,4,10,4);
		c.gridx=0;
		c.gridy=0;
		c.anchor=GridBagConstraints.EAST;
		panelCentro.add(labelMail,c);
		c.gridx=1;
		c.gridy=0;
		panelCentro.add(txtMail,c);
		c.gridx=0;
		c.gridy=1;
		panelCentro.add(labelPassword,c);
		c.gridx=1;
		c.gridy=1;
		panelCentro.add(txtPassword,c);
		c.gridy=2;
		c.gridx=0;
		c.gridwidth=2;
		panelCentro.add(btnIniciarSesion, c);
		panelInicio.add(panelCentro, BorderLayout.CENTER);
		panelInicio.add(panelSur,BorderLayout.SOUTH);
		frameInicio.add(panelContenedor,BorderLayout.CENTER);
		panelContenedor.add(panelInicio,"Inicio");
		panelSur.setBorder(new EmptyBorder(0,10,10,10));
		panelSur.add(btnSalir, BorderLayout.WEST);
		panelSur.add(btnCrearAdmin, BorderLayout.EAST);
		frameInicio.setVisible(true);
	}
}
