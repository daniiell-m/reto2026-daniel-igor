package view;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class eliminarCliente {
	
	public JFrame frameEliminarCli=new JFrame();
	private JPanel panelEliminarCli=new JPanel(new BorderLayout());
	private JPanel panelCentro=new JPanel();
	private GridBagConstraints c=new GridBagConstraints();
	private JLabel labelEliminarCli;
	public JButton btnSi=new JButton("Si");
	public JButton btnNo=new JButton("No");
	
	public void eliminar(int num, app App) {
		frameEliminarCli.setTitle("Eliminar Cliente");
		labelEliminarCli=new JLabel("¿Seguro que quieres eliminar al cliente con dni: "+App.tablaCli.getValueAt(num, 0).toString()+"?");
		panelEliminarCli.add(labelEliminarCli);
		panelEliminarCli.add(btnSi);
		panelEliminarCli.add(btnNo);
		panelCentro.add(labelEliminarCli);
		panelCentro.add(btnSi);
		panelCentro.add(btnNo);
		panelEliminarCli.add(panelCentro);
		panelCentro.setBackground(Color.ORANGE);
		panelEliminarCli.setBorder(new EmptyBorder(40,0,0,0));
		panelEliminarCli.setBackground(Color.ORANGE);
		frameEliminarCli.add(panelEliminarCli, BorderLayout.CENTER);
		frameEliminarCli.setSize(400,200);
		frameEliminarCli.setLocationRelativeTo(null);
		frameEliminarCli.setVisible(true);
	}
}
