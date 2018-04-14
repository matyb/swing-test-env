import static org.junit.Assert.*;

public class Test {

	@org.junit.Test
	public void givenAVncClientICanSpawnAJFrameAndTestIt(){
		Main app = new Main();
		assertEquals("", app.label.getText());
		app.button.doClick();
		assertEquals("Hai", app.label.getText());
		app.dispose();
	}
	
}
