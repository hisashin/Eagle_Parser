package st.tori.eagle.parser.engine;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import st.tori.eagle.parser.dtd.Eagle_6_3_0.Eagle;
import st.tori.eagle.parser.dtd.Eagle_6_3_0.FileType;
import st.tori.eagle.parser.exception.EagleParserException;

public class EagleParserEngineSAX extends AbstractEagleParserEngine {

	@Override
	public Eagle parse(FileType fileType, InputStream is) throws EagleParserException {
		try {
			SAXParserFactory spfactory = SAXParserFactory.newInstance();
			spfactory.setValidating(true);
			SAXParser parser = spfactory.newSAXParser();
			Handler handler = new Handler();
			parser.parse(is, handler);
			return handler.eagle;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	private static class Handler extends DefaultHandler {
		
		Eagle eagle = new Eagle();
		List<String> tags = new ArrayList<String>();
	
		public void startElement(String uri, String localName, String qName, Attributes attributes) {
			System.out.print("startElement:"+qName);
			for(int i=0;i<attributes.getLength();i++)
				System.out.print(","+attributes.getQName(i)+"="+attributes.getValue(i));
			System.out.println();
			tags.add(0,qName);
		}
	
		public void characters(char[] ch, int offset, int length) {
			System.out.println("charactersF" + new String(ch, offset, length));
		}
	
		public void endElement(String uri, String localName, String qName) {
			tags.remove(qName);
		}
	
	}
}
