import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class Main extends JFrame {

	JLabel label = new JLabel("");
	JButton button = new JButton("Hai");
	
	public static void main(String... args){
		new Main().setVisible(true);
	}
	
	public Main() {
		super("Test App");
		BorderLayout layout = new BorderLayout();
		JPanel panel = new JPanel(layout);
		add(panel);
		button.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				label.setText("Hai");
			}
		});
		panel.add(button, BorderLayout.WEST);
		panel.add(label, BorderLayout.CENTER);
		setSize(new Dimension(400, 600));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
	
}
