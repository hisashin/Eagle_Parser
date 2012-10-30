package st.tori.eagle.parser;

import java.io.File;

import org.xml.sax.helpers.DefaultHandler;

import st.tori.eagle.parser.draw.AbstractEagleDrawer;
import st.tori.eagle.parser.draw.EagleDrawerFactory;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;
import st.tori.eagle.parser.parse.AbstractEagleParser;
import st.tori.eagle.parser.parse.EagleParserFactory;
import st.tori.eagle.parser.exception.EagleParserException;

public class Main extends DefaultHandler {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		AbstractEagleParser parser = EagleParserFactory.newInstance();
		Eagle eagle = null;
		if(false) {
			try {
				eagle = parser.parse(new File("doc/HARPY_SMD.brd"));
				//eagle = parser.parse(new File("doc/HARPY_SMD.sch"));
				//eagle = parser.parse(new File("doc/RASPI-GPIO.lbr"));
			} catch (EagleParserException e) {
				e.printStackTrace();
			}
		}
		AbstractEagleDrawer drawer = EagleDrawerFactory.newInstance();
		drawer.draw(eagle,"/Users/shingo/Desktop/eagle"+System.currentTimeMillis());
		
	}

}
