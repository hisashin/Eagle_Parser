package st.tori.eagle.parser;

import java.io.File;

import org.xml.sax.helpers.DefaultHandler;

import st.tori.eagle.parser.engine.AbstractEagleParserEngine;
import st.tori.eagle.parser.engine.EagleParserEngineFactory;
import st.tori.eagle.parser.exception.EagleParserException;

public class Main extends DefaultHandler {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		AbstractEagleParserEngine engine = EagleParserEngineFactory.newInstance();
		try {
			engine.parse(new File("doc/HARPY_SMD.brd"));
			//engine.parse(new File("doc/HARPY_SMD.sch"));
			//engine.parse(new File("doc/RASPI-GPIO.lbr"));
		} catch (EagleParserException e) {
			e.printStackTrace();
		}
	}

}
