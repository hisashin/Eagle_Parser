package st.tori.eagle.parser;

import java.io.File;

import magick.MagickException;

import org.xml.sax.helpers.DefaultHandler;

import st.tori.eagle.parser.draw.AbstractEagleDrawer;
import st.tori.eagle.parser.draw.EagleDrawerFactory;
import st.tori.eagle.parser.dru.EagleDru;
import st.tori.eagle.parser.dtd.EagleDtd_6_3_0.Eagle;
import st.tori.eagle.parser.exception.EagleParserException;
import st.tori.eagle.parser.parse.AbstractEagleParser;
import st.tori.eagle.parser.parse.EagleParserFactory;

public class Main extends DefaultHandler {

	public static void main(String[] args) {
		AbstractEagleParser parser = EagleParserFactory.newInstance();
		Eagle eagle = null;
		try {
			eagle = parser.parse(new File("doc/HARPY_SMD.brd"));
			//eagle = parser.parse(new File("doc/HARPY_SMD.sch"));
			//eagle = parser.parse(new File("doc/RASPI-GPIO.lbr"));
		} catch (EagleParserException e) {
			e.printStackTrace();
		}
		AbstractEagleDrawer drawer = EagleDrawerFactory.newInstance();
		try {
			drawer.draw(EagleDru.DRU_DEFAULT,eagle,"/Users/shingo/Desktop/eagle/");
		} catch (MagickException e) {
			e.printStackTrace();
		}
	}

}
