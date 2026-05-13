package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import view.*;

public class controller {

	public controller() {
		GetYourGuide App=new GetYourGuide();
		App.btnSalir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				App.frameInicio.dispose();
			}
		});
	}

}
