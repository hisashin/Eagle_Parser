package st.tori.eagle.parser.engine;

import java.io.InputStream;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import st.tori.eagle.parser.dtd.DTDEntity.FileType;

public class EagleParserEngineSAX extends AbstractEagleParserEngine {

	@Override
	public void parse(FileType fileType, InputStream is) {
		try {
			SAXParserFactory spfactory = SAXParserFactory.newInstance();
			spfactory.setValidating(true);
			SAXParser parser = spfactory.newSAXParser();
			parser.parse(is, new Handler());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static class Handler extends DefaultHandler {
		public void startDocument() {
			System.out.println("Start document");
		}
	
		public void startElement(String uri, String localName, String qName,
				Attributes attributes) {
			System.out.println("startElement:" + qName);
		}
	
		public void characters(char[] ch, int offset, int length) {
			System.out.println("charactersÅF" + new String(ch, offset, length));
		}
	
		public void endElement(String uri, String localName, String qName) {
			System.out.println("endElement:" + qName);
		}
	
		public void endDocument() {
			System.out.println("endDocument");
		}
	}
}
