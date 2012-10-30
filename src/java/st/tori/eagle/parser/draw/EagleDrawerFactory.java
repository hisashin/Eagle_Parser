package st.tori.eagle.parser.draw;


public class EagleDrawerFactory {

	public static AbstractEagleDrawer newInstance() {
		return new EagleDrawerJMagick();
	}
	
}
