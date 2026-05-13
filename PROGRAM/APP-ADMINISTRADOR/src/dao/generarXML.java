package dao;
import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.xml.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import model.Persona;

public class generarXML {
	public void generarXMLCliente(ArrayList <Persona> persona) {
		try {
DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
DocumentBuilder builder=factory.newDocumentBuilder();
Document doc=builder.newDocument();
Element clientes=doc.createElement("Clientes");
doc.appendChild(clientes);
for(int i=0;i<persona.size();i++) {
Element cliente=doc.createElement("Cliente");
clientes.appendChild(cliente);
Element dni=doc.createElement("Dni");
cliente.appendChild(dni);
dni.appendChild(doc.createTextNode(persona.get(i).getDni()));
Element nombre=doc.createElement("Nombre");
cliente.appendChild(nombre);
nombre.appendChild(doc.createTextNode(persona.get(i).getNombre()));
Element apellido=doc.createElement("Apellido");
cliente.appendChild(apellido);
apellido.appendChild(doc.createTextNode(persona.get(i).getApellido()));
Element telefono=doc.createElement("Telefono");
cliente.appendChild(telefono);
telefono.appendChild(doc.createTextNode(persona.get(i).getTelefono()));
Element mail=doc.createElement("Mail");
cliente.appendChild(mail);
mail.appendChild(doc.createTextNode(persona.get(i).getMail()));
Element contraseña=doc.createElement("Contraseña");
cliente.appendChild(contraseña);
contraseña.appendChild(doc.createTextNode(persona.get(i).getContrasenya()));
}
Transformer transformer=TransformerFactory.newInstance().newTransformer();
transformer.setOutputProperty(OutputKeys.INDENT, "yes");
DOMSource source=new DOMSource(doc);
StreamResult result=new StreamResult(new File("clientes.xml"));
transformer.transform(source, result);
	}catch(Exception e) {
		System.out.println(e.getMessage());
	}
	}
	public void generarXMLExcursion(ArrayList <Excursion> excursiones) {
		
	}
}
